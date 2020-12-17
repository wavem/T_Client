//---------------------------------------------------------------------------

#pragma hdrstop

#include "TcpSocketThread.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)


__fastcall CTcpSocketThread::CTcpSocketThread(SOCKET *p_sock) {
	m_eThreadWork = THREAD_STOP;
	Priority = tpTimeCritical;
	m_sock = p_sock;
	isTryingToConnect = true;
	isConnected = false;
	memset(&recvData, 0, sizeof(recvData));
}
//---------------------------------------------------------------------------

__fastcall CTcpSocketThread::~CTcpSocketThread() {
	UnicodeString tempStr = L"Thread Terminated (from Thread Destroyer)";
	SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&tempStr, 0x10);
}
//---------------------------------------------------------------------------

void __fastcall CTcpSocketThread::Execute() {

	// Common
	UnicodeString t_Str = L"";
	AnsiString t_AnsiStr = "";
	int t_errno = 0;
	int t_ConnectTryingCount = 1;

	struct sockaddr_in	t_sockaddr_in;
	memset(&t_sockaddr_in, 0, sizeof(t_sockaddr_in));
	t_sockaddr_in.sin_family = AF_INET;
	t_sockaddr_in.sin_addr.s_addr = inet_addr(IP_SERVER);
	t_sockaddr_in.sin_port = htons(TCP_SERVER_PORT);

	t_Str = L"Thread Start";
	SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&t_Str, 0x10);
	m_eThreadWork = THREAD_RUNNING;

	// Try to Connect
	while(!Terminated) {
		// For Thread Stop & Resume
		if(m_eThreadWork != THREAD_RUNNING) {
			if(m_eThreadWork == THREAD_TERMINATED) return;
			WaitForSingleObject((void*)this->Handle, 500);
			continue;
		}

		if(t_ConnectTryingCount < 6) {
			t_errno = connect(*m_sock, (struct sockaddr*)&t_sockaddr_in, sizeof(sockaddr_in));
			if(t_errno < 0) {
				t_Str.sprintf(L"Connection Error : Trying Count(%d)", t_ConnectTryingCount);
				SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&t_Str, 0x10);

				t_AnsiStr = strerror(t_errno);
				t_Str = L"Error String : ";
				t_Str += t_AnsiStr;
				SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&t_Str, 0x10);
				m_eThreadWork == THREAD_TERMINATED;
				t_ConnectTryingCount++;
				continue;
			} else {
				t_Str = L"Connected !!!";
				SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&t_Str, 0x10);
				isTryingToConnect = false;
				isConnected = true;
				break;
			}
		} else {
			isTryingToConnect = false;
			isConnected = false;
			t_Str = L"Fail to Connect to Server...";
			SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&t_Str, 0x10);
			break;
		}

		// Just Wait Moment...
		WaitForSingleObject((void*)this->Handle, 1000);
	}

	if(isConnected == false) {
		m_eThreadWork = THREAD_TERMINATED;
		return;
	}

	// Receive Routine
	BYTE recv_buff[TCP_RECV_BUF_SIZE];
	ZeroMemory( &recv_buff, sizeof(recv_buff));
	int recv_buff_size = sizeof(recv_buff);

	while(!Terminated) {
		// For Thread Stop & Resume
		if(m_eThreadWork != THREAD_RUNNING) {
			if(m_eThreadWork == THREAD_TERMINATED) return;
			WaitForSingleObject((void*)this->Handle, 500);
			continue;
		}

		// Receive Routine Funtion
		if(Receive()) {
			memset(&recvData, 0, sizeof(recvData));
			memcpy(recvData.Data, recvBuff, TCP_RECV_BUF_SIZE);
			SendMessage(FormMain->Handle, MSG_SERVER_DATA, (unsigned int)&recvData, 0x10);
		} else {
			t_Str = L"Fail to Receive";
			SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&t_Str, 0x10);
			return;
		}

		// Just Wait Moment...
		WaitForSingleObject((void*)this->Handle, 50);
	}
	m_eThreadWork = THREAD_TERMINATED;
	return;
}
//---------------------------------------------------------------------------

bool __fastcall CTcpSocketThread::Receive() {

	// Common
	UnicodeString tempStr = L"";
	int t_recvSize = 0;
	int t_CurrentSize = 0;
	BYTE t_SecureCode = 0;
	unsigned short t_PacketSize = 0;
	BYTE t_MessageType = 0;

	// Reset Buffer
	memset(recvBuff, 0, sizeof(recvBuff));

	// First Receive
	t_recvSize = recv(*m_sock, (char*)&t_SecureCode, 1, 0);

	// Check Connection
	if(t_recvSize == 0 || t_recvSize == -1) return false;

	// Check Secure Code
	if(t_SecureCode != SECURE_CODE_S_TO_C) return false;

	// Input Secure Code Into Receive Buffer
	memcpy(&recvBuff[0], &t_SecureCode, sizeof(t_SecureCode));

	// Check Data Size
	t_recvSize = recv(*m_sock, (char*)&t_PacketSize, 2, 0);

	// Check Connection
	if(t_recvSize == 0 || t_recvSize == -1) return false;

	// Input Packet Size Into Receive Buffer
	memcpy(&recvBuff[1], &t_PacketSize, sizeof(t_PacketSize));

	// Check Message Type
	t_recvSize = recv(*m_sock, (char*)&t_MessageType, 1, 0);

	// Check Connection
	if(t_recvSize == 0 || t_recvSize == -1) return false;

	// Input Message Type Into Receive Buffer
	memcpy(&recvBuff[3], &t_MessageType, sizeof(t_MessageType));

	// Receive Routine
	t_CurrentSize = 4;
	while(t_CurrentSize != t_PacketSize) {
		t_recvSize = recv(*m_sock, (char*)(recvBuff + t_CurrentSize), t_PacketSize - t_CurrentSize, 0);
		// Check Connection
		if(t_recvSize == 0 || t_recvSize == -1) return false;
		t_CurrentSize += t_recvSize;
	}

	return true;
}
//---------------------------------------------------------------------------

void __fastcall CTcpSocketThread::Stop() {
	m_eThreadWork = THREAD_STOP;
}
//---------------------------------------------------------------------------

void __fastcall CTcpSocketThread::Resume() {
	m_eThreadWork = THREAD_RUNNING;
}
//---------------------------------------------------------------------------

void __fastcall CTcpSocketThread::DoTerminate() {
	m_eThreadWork = THREAD_TERMINATED;
}
//---------------------------------------------------------------------------

ThreadWorkingType __fastcall CTcpSocketThread::GetThreadStatus() {
	return m_eThreadWork;
}
//---------------------------------------------------------------------------
