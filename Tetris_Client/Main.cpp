//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "AdvGrid"
#pragma link "AdvObj"
#pragma link "BaseGrid"
#pragma link "cxButtons"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxSkinBlack"
#pragma link "dxSkinBlue"
#pragma link "dxSkinBlueprint"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinCoffee"
#pragma link "dxSkinDarkRoom"
#pragma link "dxSkinDarkSide"
#pragma link "dxSkinDevExpressDarkStyle"
#pragma link "dxSkinDevExpressStyle"
#pragma link "dxSkinFoggy"
#pragma link "dxSkinGlassOceans"
#pragma link "dxSkinHighContrast"
#pragma link "dxSkiniMaginary"
#pragma link "dxSkinLilian"
#pragma link "dxSkinLiquidSky"
#pragma link "dxSkinLondonLiquidSky"
#pragma link "dxSkinMcSkin"
#pragma link "dxSkinMetropolis"
#pragma link "dxSkinMetropolisDark"
#pragma link "dxSkinMoneyTwins"
#pragma link "dxSkinOffice2007Black"
#pragma link "dxSkinOffice2007Blue"
#pragma link "dxSkinOffice2007Green"
#pragma link "dxSkinOffice2007Pink"
#pragma link "dxSkinOffice2007Silver"
#pragma link "dxSkinOffice2010Black"
#pragma link "dxSkinOffice2010Blue"
#pragma link "dxSkinOffice2010Silver"
#pragma link "dxSkinOffice2013DarkGray"
#pragma link "dxSkinOffice2013LightGray"
#pragma link "dxSkinOffice2013White"
#pragma link "dxSkinPumpkin"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsDefaultPainters"
#pragma link "dxSkinSeven"
#pragma link "dxSkinSevenClassic"
#pragma link "dxSkinSharp"
#pragma link "dxSkinSharpPlus"
#pragma link "dxSkinSilver"
#pragma link "dxSkinSpringTime"
#pragma link "dxSkinStardust"
#pragma link "dxSkinSummer2008"
#pragma link "dxSkinTheAsphaltWorld"
#pragma link "dxSkinValentine"
#pragma link "dxSkinVisualStudio2013Blue"
#pragma link "dxSkinVisualStudio2013Dark"
#pragma link "dxSkinVisualStudio2013Light"
#pragma link "dxSkinVS2010"
#pragma link "dxSkinWhiteprint"
#pragma link "dxSkinXmas2008Blue"
#pragma link "AdvSmoothPanel"
#pragma link "AdvGlassButton"
#pragma link "AdvMemo"
#pragma link "AdvSmoothButton"
#pragma link "AdvEdit"
#pragma link "AdvScrollBox"
#pragma resource "*.dfm"
TFormMain *FormMain;
//---------------------------------------------------------------------------
__fastcall TFormMain::TFormMain(TComponent* Owner)
	: TForm(Owner)
{
	InitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::InitProgram() {

	// Common
	UnicodeString tempStr = L"";

	// SETTING START PAGE
	Notebook_Main->PageIndex = 0; // LOGIN

	// Init Member Variable
	m_pDlgSignUp = NULL;
	m_ClientThread = NULL;
	m_sock_Client = INVALID_SOCKET;

	// Setting Room Grid (TEST)
	grid_Room->Cells[0][0] = L"1";
	grid_Room->Cells[1][0] = L"대기중";
	grid_Room->Cells[2][0] = L"개인전";
	grid_Room->Cells[3][0] = L"아템전";
	grid_Room->Cells[4][0] = L"강북중학교 동창들 고수만 모여라";
	grid_Room->Cells[5][0] = L"fenix12345dark";
	grid_Room->Cells[6][0] = L"2/6";
	grid_Room->Cells[7][0] = L"공개";
	grid_Room->AddButton(8, 0, 50, 24, L"입장", haCenter, Advgrid::vaCenter); // View

	grid_PlayerList->Cells[0][0] = L"1";
	grid_PlayerList->Cells[1][0] = L"fenix24";
	grid_PlayerList->Cells[2][0] = L"하수";

	// Socket Init
	WSADATA data;
	WORD version;
	int ret = 0;

	version = MAKEWORD(2, 2);
	ret = WSAStartup(version, &data);
	if(ret != 0) {
		ret = WSAGetLastError();
		if(ret == WSANOTINITIALISED) {
			tempStr.sprintf(L"Socket not initialised (error code : %d)", ret);
			PrintLog(tempStr);
		} else {
			tempStr.sprintf(L"Socket error (error code : %d)", ret);
			PrintLog(tempStr);
		}
	} else {
		PrintLog(L"Socket init success");
	}

	// Create T Client Socket
	if(CreateTCPSocket() == false) return;

	// Create T Client Thread
	if(CreateClientThread() == false) return;

}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::CreateTCPSocket() {

	// Common
	UnicodeString tempStr = L"";
	AnsiString t_AnsiStr = "";

	// Create Socket
	m_sock_Client = socket(AF_INET, SOCK_STREAM, 0);
	if(m_sock_Client == INVALID_SOCKET) {
		PrintLog(L"Fail to create socket");
		return false;
	}

	// Set Socket Option : REUSE
	int t_opt_reuse = 1;
	if(setsockopt(m_sock_Client, SOL_SOCKET, SO_REUSEADDR,(char *)&t_opt_reuse, sizeof(t_opt_reuse)) == SOCKET_ERROR) {
		PrintLog(L"Fail to set socket option (REUSE)");
		return false;
	}

	return true;
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::CreateClientThread() {

	// Common
	UnicodeString tempStr = L"";

	// Create Thread
	if(m_ClientThread != NULL) {
		tempStr.sprintf(L"Client Thread is already exists.");
		PrintMsg(tempStr);
		return false;
	}

	// Creating Client Thread
	m_ClientThread = new CTcpSocketThread(&m_sock_Client);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::FormClose(TObject *Sender, TCloseAction &Action)
{
	ExitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ExitProgram() {

	// Delete Socket
	if(m_sock_Client != INVALID_SOCKET) {
		closesocket(m_sock_Client);
		m_sock_Client = INVALID_SOCKET;
	}

	// Delete Thread
	if(m_ClientThread != NULL) {
		m_ClientThread->DoTerminate();
		m_ClientThread->Terminate();
		delete m_ClientThread;
		m_ClientThread = NULL;
	}

	// Socket Clean Up
	WSACleanup();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintMsg(UnicodeString _str) {

}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintChat_Lobby(UnicodeString _str) {
	int t_Idx = chat->Lines->Add(_str);
	chat->SetCursor(0, t_Idx);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintLog(UnicodeString _str) {
	int t_Idx = memo_LOG->Lines->Add(_str);
	memo_LOG->SetCursor(0, t_Idx);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_LoginClick(TObject *Sender)
{
	// Button Login
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_SignUpClick(TObject *Sender)
{
	// Button Sign Up
	m_pDlgSignUp = new TFormSignUp(NULL);
	m_pDlgSignUp->ShowModal();
	delete m_pDlgSignUp;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_SingleModeClick(TObject *Sender)
{
	// Button Single Mode
	Notebook_Main->PageIndex = 1; // Lobby
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_Login_QuitClick(TObject *Sender)
{
	// Button Quit in Login Screen
	FormMain->Close();
	//Application->Terminate();
}
//---------------------------------------------------------------------------
void __fastcall TFormMain::btn_EnterClick(TObject *Sender)
{
	Notebook_Main->PageIndex = 2; // GAME
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_QUIT_InGameClick(TObject *Sender)
{
	Notebook_Main->PageIndex = 1; // Lobby
}
//---------------------------------------------------------------------------
void __fastcall TFormMain::btn_LogOutClick(TObject *Sender)
{
	Notebook_Main->PageIndex = 0; // Log In Screen
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_InformationClick(TObject *Sender)
{
	TFormVersion *p_dlg = new TFormVersion(NULL);
	p_dlg->ShowModal();
	delete p_dlg;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::TryToSignUp(TMessage &_msg) {

	// Common
	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam;
	SIGNUPINFO* p_SignUpInfo = NULL;
	SIGNUPINFO t_SignUpInfo;
	unsigned int rst = 0;

	// Extract Message
	p_SignUpInfo = (SIGNUPINFO*)t_wParam;
	t_SignUpInfo = *p_SignUpInfo;

	// TEST
	PrintLog(t_SignUpInfo.ID);
	PrintLog(t_SignUpInfo.PW);
	PrintLog(t_SignUpInfo.UserName);

	// Send Sign Up Message
	rst = Send_SignUpMessage(t_SignUpInfo);

	// Notice Result
	if(rst != ERR_SIGNUP_SUCCESS) {
		SendMessage(m_pDlgSignUp->Handle, MSG_TRY_TO_SIGNUP, (unsigned int)&rst, 0x10);
	} else {
		// Waiting Message From Server...
	}
}
//---------------------------------------------------------------------------

int __fastcall TFormMain::Send_SignUpMessage(SIGNUPINFO _info) {

	// Sign UP Routine
	// Common
	UnicodeString tempStr = L"";
	int t_TextLen = 0;
	int t_sendrst = 0;
	unsigned short t_PacketLen = 129; // Sign Up Fixed Size : 129 BYTE

	// Check Client Socket
	if(m_sock_Client == INVALID_SOCKET) {
		tempStr.sprintf(L"Client socket is invalid");
		PrintLog(tempStr);
		return ERR_SIGNUP_SOCKET_ERR;
	}

	// Check Client Thread
	if(m_ClientThread == NULL) {
		tempStr.sprintf(L"Client Thread is invalid");
		PrintLog(tempStr);
		return ERR_SIGNUP_THREAD_ERR;
	}

	// Check Connection
	if(m_ClientThread->isConnected == false) {
		tempStr.sprintf(L"Client is not connected");
		PrintLog(tempStr);
		return ERR_SIGNUP_COMM_FAULT;
	}

	// Reset Send Buffer
	memset(m_ClientThread->sendBuff, 0, TCP_SEND_BUF_SIZE);
	m_ClientThread->p_sendText = NULL;

	// Set Header Data
	m_ClientThread->sendBuff[0] = 0x47;
	memcpy(&m_ClientThread->sendBuff[1], &t_PacketLen, 2);
	m_ClientThread->sendBuff[3] = DATA_TYPE_SIGN_UP;

	// Extract User Name
	tempStr = _info.UserName;
	t_TextLen = tempStr.Length() * 2 + 2;// 2 is NULL
	m_ClientThread->p_sendText = (unsigned char*)tempStr.c_str();

	// Input User Name & Size Into Packet Data
	memcpy(&m_ClientThread->sendBuff[4], m_ClientThread->p_sendText, t_TextLen);
	memcpy(&m_ClientThread->sendBuff[126], &t_TextLen, 1);

	// Extract User ID
	tempStr = _info.ID;
	t_TextLen = tempStr.Length() * 2 + 2;// 2 is NULL
	m_ClientThread->p_sendText = (unsigned char*)tempStr.c_str();

	// Input User ID & Size Into Packet Data
	memcpy(&m_ClientThread->sendBuff[46], m_ClientThread->p_sendText, t_TextLen);
	memcpy(&m_ClientThread->sendBuff[127], &t_TextLen, 1);

	// Extract User PW
	tempStr = tempStr = _info.PW;
	t_TextLen = tempStr.Length() * 2 + 2;// 2 is NULL
	m_ClientThread->p_sendText = (unsigned char*)tempStr.c_str();

	// Input User PW & Size Into Packet Data
	memcpy(&m_ClientThread->sendBuff[86], m_ClientThread->p_sendText, t_TextLen);
	memcpy(&m_ClientThread->sendBuff[128], &t_TextLen, 1);

	// Send to Server
	t_sendrst = send(m_sock_Client, (char*)m_ClientThread->sendBuff, t_PacketLen, 0);

	// Function End Routine
	tempStr.sprintf(L"Send Byte : %d", t_sendrst);
	PrintLog(tempStr);
	return ERR_SIGNUP_SUCCESS;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_DebugClick(TObject *Sender)
{
	Notebook_Main->PageIndex = 3; // DEBUG SCREEN
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_Log_LobbyClick(TObject *Sender)
{
	Notebook_Main->PageIndex = 3; // DEBUG SCREEN
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_Log_InGameClick(TObject *Sender)
{
	Notebook_Main->PageIndex = 3; // DEBUG SCREEN
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintThreadLogMessage(TMessage &_msg) {
	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam;

	UnicodeString tempStr = L"";
	UnicodeString *p = NULL;
	p = (UnicodeString*)t_wParam;
	tempStr = *p;
	PrintLog(tempStr);
}
//---------------------------------------------------------------------------
void __fastcall TFormMain::btn_Back_LogScreenClick(TObject *Sender)
{
	Notebook_Main->PageIndex = 0; // LOGIN SCREEN
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ReceiveServerData(TMessage &_msg) {

	// Common
	UnicodeString tempStr = L"";
	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam;
	SERVERDATA* p_serverData = NULL;
	SERVERDATA t_serverData;
	memset(&t_serverData, 0, sizeof(t_serverData));
	unsigned short t_RecvSize = 0;
	BYTE t_DataType = 0;
	int t_ClientIdx = 0;

	// Receive Server Data
	p_serverData = (SERVERDATA*)t_wParam;
	t_serverData = *p_serverData;

	// Logging Received Information
	memcpy(&t_RecvSize, &t_serverData.Data[1], 2);
	tempStr.sprintf(L"Received %04d byte from Server", t_RecvSize);
	PrintLog(tempStr);

	// Extract Data Type
	t_DataType = t_serverData.Data[3];

	// Distribute Message by Data Type
	switch(t_DataType) {
	case DATA_TYPE_SIGN_UP:
		Receive_SignUpResult(t_serverData);
		break;

	case DATA_TYPE_SIGN_IN:
		break;

	case DATA_TYPE_SIGN_OUT:
		break;

	case DATA_TYPE_LOBBY_CHATTING:
		//ClientMsg_LOBBY_CHATTING(t_ClientMsg);
		break;

	case DATA_TYPE_INGAME_CHATTING:
		break;

	case DATA_TYPE_CHANGE_USER_INFO:
		break;

	case DATA_TYPE_INGAME_CMD:
		break;

	case DATA_TYPE_ENTER_GAME_ROOM:
		break;

	case DATA_TYPE_ESCAPE_GAME_ROOM:
		break;

	case DATA_TYPE_HEART_BEAT:
		break;

	case DATA_TYPE_INGAME_DATA:
		break;

	default:
		break;
	}


#if 0
	// Test Message
	//tempStr.sprintf(L"Queue Size(Before) : [%d]", m_ClientMsgQ.size());
	//PrintLog(tempStr);

	// Push into Client Message Queue
	int ret = WaitForSingleObject(m_Mutex, 2000);
	if(ret == WAIT_FAILED) {
		tempStr = L"Wait Failed";
	} else if(ret == WAIT_ABANDONED) {
		tempStr = L"Wait Abandoned";
	} else if(ret == WAIT_TIMEOUT) {
		tempStr = L"Wait Time Out";
	} else if(ret == WAIT_OBJECT_0) {
		tempStr = L"Success to Push Packet into Message Queue";
		m_ClientMsgQ.push(t_ClientMsg);
	} else {
		tempStr = L"ETC";
	}
	PrintMsg(tempStr);
	ReleaseMutex(m_Mutex);

	// Test Message
	//tempStr.sprintf(L"Queue Size(After) : [%d]", m_ClientMsgQ.size());
	//PrintLog(tempStr);
#endif

}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Receive_SignUpResult(SERVERDATA _serverData) {

	// Common
	int t_rst = 0;

	// Extract Result Value
	BYTE t_resultData = _serverData.Data[4];

	// Send Message To Sign Up Dlg
	if(t_resultData == 0) { // Success
		t_rst = ERR_SIGNUP_SUCCESS;
	} else if(t_resultData == 1) { // Duplicated ID
		t_rst = ERR_SIGNUP_ID_DUPLICATED;
	} else {
		t_rst = ERR_SIGNUP_UNKNOWN;
	}
	SendMessage(m_pDlgSignUp->Handle, MSG_TRY_TO_SIGNUP, (unsigned int)&t_rst, 0x10);
}
//---------------------------------------------------------------------------

