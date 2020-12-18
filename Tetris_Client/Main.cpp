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
#pragma link "CurvyControls"
#pragma link "cxContainer"
#pragma link "cxControls"
#pragma link "cxEdit"
#pragma link "cxMemo"
#pragma link "cxTextEdit"
#pragma link "dxGDIPlusClasses"
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
	m_MyIdx = 0;

	// Init Lobby Game Room
	InitLobbyGameRoom();

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
		PrintLog(tempStr);
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

void __fastcall TFormMain::PrintChat_Lobby(UnicodeString _str) {
	int t_Idx = memo_Chat_Lobby->Lines->Add(_str);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintLog(UnicodeString _str) {
	int t_Idx = memo_LOG->Lines->Add(_str);
	memo_LOG->SetCursor(0, t_Idx);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_LoginClick(TObject *Sender)
{
	// Common
	UnicodeString tempStr = L"";
	UnicodeString t_ID = ed_ID->Text;
	UnicodeString t_PW = ed_PW->Text;

	if(t_ID == L"" || t_PW == L"") {
		Application->MessageBoxW(L"Please Input ID & Password", L"Log In", MB_OK | MB_ICONINFORMATION);
		return;
	}

	// Log-In Routine
	// Common
	int t_TextLen = 0;
	int t_sendrst = 0;
	unsigned short t_PacketLen = 129; // Sign Up Fixed Size : 129 BYTE

	// Check Client Socket
	if(m_sock_Client == INVALID_SOCKET) {
		Application->MessageBoxW(L"Socket Invalid.", L"Log In", MB_OK | MB_ICONERROR);
		return;
	}

	// Check Client Thread
	if(m_ClientThread == NULL) {
		Application->MessageBoxW(L"Client Thread Invalid.", L"Log In", MB_OK | MB_ICONERROR);
		return;
	}

	// Check Connection
	if(m_ClientThread->isConnected == false) {
		Application->MessageBoxW(L"Communication Error.", L"Log In", MB_OK | MB_ICONERROR);
		return;
	}

	// Reset Send Buffer
	memset(m_ClientThread->sendBuff, 0, TCP_SEND_BUF_SIZE);
	m_ClientThread->p_sendText = NULL;

	// Set Header Data
	m_ClientThread->sendBuff[0] = SECURE_CODE_C_TO_S;
	memcpy(&m_ClientThread->sendBuff[1], &t_PacketLen, 2);
	m_ClientThread->sendBuff[3] = DATA_TYPE_SIGN_IN;

	// Extract User ID
	tempStr = t_ID;
	t_TextLen = tempStr.Length() * 2 + 2;// 2 is NULL
	m_ClientThread->p_sendText = (unsigned char*)tempStr.c_str();

	// Input User ID & Size Into Packet Data
	memcpy(&m_ClientThread->sendBuff[46], m_ClientThread->p_sendText, t_TextLen);
	memcpy(&m_ClientThread->sendBuff[127], &t_TextLen, 1);

	// Extract User PW
	tempStr = t_PW;
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
	return;
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

void __fastcall TFormMain::TryToMakingRoom(TMessage &_msg) {
	// Common
	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam;
	MAKINGROOMINFO* p_MakingRoomInfo = NULL;
	MAKINGROOMINFO t_MakingRoomInfo;
	unsigned int rst = 0;

	// Extract Message
	p_MakingRoomInfo = (MAKINGROOMINFO*)t_wParam;
	t_MakingRoomInfo = *p_MakingRoomInfo;

	// TEST
	PrintLog(t_MakingRoomInfo.Title);
	PrintLog(t_MakingRoomInfo.TeamType);
	PrintLog(t_MakingRoomInfo.ItemType);

	// Send Sign Up Message
	rst = Send_MakingRoomMessage(t_MakingRoomInfo);

	// Notice Result
	if(rst != ERR_MAKING_ROOM_SUCCESS) {
		SendMessage(m_pDlgMakingRoom->Handle, MSG_TRY_TO_MAKING_ROOM, (unsigned int)&rst, 0x10);
	} else {
		// Waiting Message From Server...
	}
}
//---------------------------------------------------------------------------

int __fastcall TFormMain::Send_MakingRoomMessage(MAKINGROOMINFO _info) {

	// Making Room Routine
	// Common
	UnicodeString tempStr = L"";
	int t_sendrst = 0;
	BYTE t_TeamType = 0;
	BYTE t_ItemType = 0;
	int t_TextLen = 0;
	UnicodeString t_RoomTitle = L"";
	unsigned short t_PacketLen = 34;

	// Check Client Socket
	if(m_sock_Client == INVALID_SOCKET) {
		tempStr.sprintf(L"Client socket is invalid");
		PrintLog(tempStr);
		return ERR_MAKING_ROOM_FAILED;
	}

	// Check Client Thread
	if(m_ClientThread == NULL) {
		tempStr.sprintf(L"Client Thread is invalid");
		PrintLog(tempStr);
		return ERR_MAKING_ROOM_FAILED;
	}

	// Check Connection
	if(m_ClientThread->isConnected == false) {
		tempStr.sprintf(L"Client is not connected");
		PrintLog(tempStr);
		return ERR_MAKING_ROOM_FAILED;
	}

	// Reset Send Buffer
	memset(m_ClientThread->sendBuff, 0, TCP_SEND_BUF_SIZE);
	m_ClientThread->p_sendText = NULL;

	// Set Header Data
	m_ClientThread->sendBuff[0] = 0x47;
	memcpy(&m_ClientThread->sendBuff[1], &t_PacketLen, 2);
	m_ClientThread->sendBuff[3] = DATA_TYPE_MAKE_GAME_ROOM;


	// Extract Information
	t_TeamType = _info.TeamType;
	t_ItemType = _info.ItemType;
	t_RoomTitle = _info.Title;
	t_TextLen = t_RoomTitle.Length() * 2 + 2;
	m_ClientThread->p_sendText = (unsigned char*)t_RoomTitle.c_str();

	// Input Data Into Packet Data
	m_ClientThread->sendBuff[4] = t_TeamType;
	m_ClientThread->sendBuff[5] = t_ItemType;
	memcpy(&m_ClientThread->sendBuff[6], m_ClientThread->p_sendText, t_TextLen);

	// Send to Server
	t_sendrst = send(m_sock_Client, (char*)m_ClientThread->sendBuff, t_PacketLen, 0);

	// Function End Routine
	tempStr.sprintf(L"Send Byte(Making Room) : %d", t_sendrst);
	PrintLog(tempStr);

	return ERR_MAKING_ROOM_SUCCESS;
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
	tempStr = _info.PW;
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
		Receive_SignInResult(t_serverData);
		break;

	case DATA_TYPE_SIGN_OUT:
		break;

	case DATA_TYPE_LOBBY_CHATTING:
		Receive_LobbyChatData(t_serverData);
		break;

	case DATA_TYPE_INGAME_CHATTING:
		break;

	case DATA_TYPE_CHANGE_USER_INFO:
		break;

	case DATA_TYPE_INGAME_CMD:
		break;

	case DATA_TYPE_MAKE_GAME_ROOM:
		Receive_MakingRoomResult(t_serverData);
		break;

	case DATA_TYPE_ENTER_GAME_ROOM:
		break;

	case DATA_TYPE_ESCAPE_GAME_ROOM:
		break;

	case DATA_TYPE_HEART_BEAT:
		break;

	case DATA_TYPE_INGAME_DATA:
		break;

	case DATA_TYPE_LOBBY_ROOMSTATUS:
		Receive_LobbyRoomStatusData(t_serverData);
		break;

	case DATA_TYPE_LOBBY_PLAYERLIST:
		Receive_LobbyPlayerListData(t_serverData);
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

void __fastcall TFormMain::Receive_MakingRoomResult(SERVERDATA _serverData) {

	// Common
	int t_rst = 0;

	// Extract Result Value
	BYTE t_resultData = _serverData.Data[4];

	// Send Message To Making Room Dlg
	if(t_resultData == 0) { // Success
		t_rst = ERR_MAKING_ROOM_SUCCESS;
		m_MyIdx = 0; // My Idx is 0. Because, this room is created by me.
	} else {
		t_rst = ERR_MAKING_ROOM_FAILED;
	}
	SendMessage(m_pDlgMakingRoom->Handle, MSG_TRY_TO_MAKING_ROOM, (unsigned int)&t_rst, 0x10);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Receive_SignInResult(SERVERDATA _serverData) {

	// Common
	BYTE t_resultData = _serverData.Data[4];

	if(t_resultData == 0) { // Success
		// LOG-IN ROUTINE HERE
		Notebook_Main->PageIndex = 1; // Lobby
		m_ID = ed_ID->Text;
		ed_ID->Text = L"";
		ed_PW->Text = L"";
	} else if(t_resultData == 1) { // Wrong Password
		Application->MessageBoxW(L"Password Incorrect. Please Try Again.", L"Log In", MB_OK | MB_ICONINFORMATION);
	} else if(t_resultData == 2) { // There is No ID
		Application->MessageBoxW(L"There is no ID. Please Check the ID and Try Again.", L"Log In", MB_OK | MB_ICONINFORMATION);
	} else {
		Application->MessageBoxW(L"Unknown Error Occured...", L"Log In", MB_OK | MB_ICONINFORMATION);
	}
}
//---------------------------------------------------------------------------

int __fastcall TFormMain::Send_LobbyChatMessage() {

	// Common
	UnicodeString tempStr = L"";
	int t_TextLen = 0;
	int t_sendrst = 0;
	unsigned short t_PacketLen = 0;

	// Check Client Socket
	if(m_sock_Client == INVALID_SOCKET) {
		tempStr.sprintf(L"Client socket is invalid");
		PrintLog(tempStr);
		return ERR_DEFAULT_SOCKET;
	}

	// Check Client Thread
	if(m_ClientThread == NULL) {
		tempStr.sprintf(L"Client thread is invalid");
		PrintLog(tempStr);
		return ERR_DEFAULT_THREAD;
	}

	// Check Connection
	if(m_ClientThread->isConnected == false) {
		tempStr.sprintf(L"Client is not connected");
		PrintLog(tempStr);
		return ERR_DEFAULT_COMM;
	}

	// Reset Send Buffer
	memset(m_ClientThread->sendBuff, 0, TCP_SEND_BUF_SIZE);
	m_ClientThread->p_sendText = NULL;


	// Extract Chatting Text Data from Edit Control
	tempStr = m_ID;
	tempStr += L" : ";
	tempStr += ed_Chat_Lobby->Text;
	t_TextLen = tempStr.Length() * 2 + 2;// 2 is NULL
	t_PacketLen = t_TextLen + 4;
	m_ClientThread->p_sendText = (unsigned char*)tempStr.c_str();

	// Set Header Data
	m_ClientThread->sendBuff[0] = 0x47;
	memcpy(&m_ClientThread->sendBuff[1], &t_PacketLen, 2);
	m_ClientThread->sendBuff[3] = DATA_TYPE_LOBBY_CHATTING;
	memcpy(&m_ClientThread->sendBuff[4], m_ClientThread->p_sendText, t_TextLen);

	// Send to Server
	t_sendrst = send(m_sock_Client, (char*)m_ClientThread->sendBuff, t_PacketLen, 0);

	// Function End Routine
	ed_Chat_Lobby->Text = L"";
	PrintLog(t_sendrst);
	return ERR_DEFAULT_SUCCESS;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_Send_LobbyChatClick(TObject *Sender)
{
	Send_LobbyChatMessage();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ed_Chat_LobbyKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)
{
	if(Key == VK_RETURN) {
		Send_LobbyChatMessage();
	} else if(Key == VK_ESCAPE) {
		ed_Chat_Lobby->Text = L"";
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Receive_LobbyChatData(SERVERDATA _serverData) {

	// Common
	UnicodeString tempStr = L"";
	UnicodeString str_Chat = L"";
	unsigned short t_RecvSize = 0;
	SERVERDATA t_serverData = _serverData;

	// Extract Information
	memcpy(&t_RecvSize, &t_serverData.Data[1], 2);
	//str_Chat.sprintf(L"Client[%02d] : ", t_ClientIdx);

	// Receive Chatting Text and Print Out
	wchar_t* temp = new wchar_t[t_RecvSize - 4];
	memcpy(temp, &t_serverData.Data[4], t_RecvSize - 4);
	tempStr = temp;
	//str_Chat += tempStr; // Merge Text Message
	PrintChat_Lobby(tempStr);
	delete[] temp;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Receive_LobbyPlayerListData(SERVERDATA _serverData) {

	// Common
	UnicodeString tempStr = L"";
	AnsiString t_AnsiStr = "";
	unsigned char temp[20];
	memset(temp, 0, 20);
	BYTE t_Grade = 0;

	for(int i = 0 ; i < grid_PlayerList->RowCount ; i++) {
		memcpy(temp, &_serverData.Data[6 + 21 * i], 20);
		t_AnsiStr = (char*)temp;
		tempStr = t_AnsiStr;
		if(tempStr == L"") {
			grid_PlayerList->Cells[0][i] = L"";
			grid_PlayerList->Cells[1][i] = L"";
			grid_PlayerList->Cells[2][i] = L"";
			continue;
		}
		t_Grade = _serverData.Data[5 + 21 * i];
		grid_PlayerList->Cells[0][i] = (i + 1);
		grid_PlayerList->Cells[1][i] = tempStr;
		grid_PlayerList->Cells[2][i] = GetLevelString(t_Grade);

		memset(temp, 0, 20);
	}
}
//---------------------------------------------------------------------------

UnicodeString __fastcall TFormMain::GetLevelString(BYTE _num) {
	// Common
	UnicodeString tempStr = L"";

	switch(_num) {
		case USER_LEVEL_0:
			tempStr = L"신입";
			break;

		case USER_LEVEL_1:
			tempStr = L"루키";
			break;

		case USER_LEVEL_2:
			tempStr = L"초보";
			break;

		case USER_LEVEL_3:
			tempStr = L"하수";
			break;

		case USER_LEVEL_4:
			tempStr = L"중수";
			break;

		case USER_LEVEL_5:
			tempStr = L"고수";
			break;

		case USER_LEVEL_6:
			tempStr = L"초고수";
			break;

		case USER_LEVEL_7:
			tempStr = L"영웅";
			break;

		case USER_LEVEL_8:
			tempStr = L"전설";
			break;

		case USER_LEVEL_9:
			tempStr = L"신";
			break;

		default:
			break;
	}

	return tempStr;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::InitLobbyGameRoom() {
	for(int i = 0 ; i < MAX_ROOM_COUNT ; i++) {
		ResetGameRoom(i);
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ResetGameRoom(int _Num) {
	// Common
	UnicodeString tempStr = L"";
	TLabel* p_lb = NULL;
	TAdvGlassButton* p_btn;
	TImage* p_img;
	int t_FixedIdx = _Num + 1;

	// Room Title, Status Label, Player Count
	tempStr = L"lb_Title_Room_";
	tempStr += t_FixedIdx;
	p_lb = (TLabel*)FindComponent(tempStr);
	if(p_lb != NULL) p_lb->Caption = L"";
	p_lb = NULL;

	tempStr = L"lb_Game_";
	tempStr += t_FixedIdx;
	p_lb = (TLabel*)FindComponent(tempStr);
	if(p_lb != NULL) p_lb->Caption = L"";
	p_lb = NULL;

	tempStr = L"lb_Team_";
	tempStr += t_FixedIdx;
	p_lb = (TLabel*)FindComponent(tempStr);
	if(p_lb != NULL) p_lb->Caption = L"";
	p_lb = NULL;

	tempStr = L"lb_Item_";
	tempStr += t_FixedIdx;
	p_lb = (TLabel*)FindComponent(tempStr);
	if(p_lb != NULL) p_lb->Caption = L"";
	p_lb = NULL;

	tempStr = L"lb_PlayerCount_Room_";
	tempStr += t_FixedIdx;
	p_lb = (TLabel*)FindComponent(tempStr);
	if(p_lb != NULL) p_lb->Caption = L"";
	p_lb = NULL;

	// Image
	tempStr = L"img_Game_Room_";
	tempStr += t_FixedIdx;
	p_img = (TImage*)FindComponent(tempStr);
	if(p_img != NULL) p_img->Picture = NULL;
	p_img = NULL;

	tempStr = L"img_Team_Room_";
	tempStr += t_FixedIdx;
	p_img = (TImage*)FindComponent(tempStr);
	if(p_img != NULL) p_img->Picture = NULL;
	p_img = NULL;

	tempStr = L"img_Item_Room_";
	tempStr += t_FixedIdx;
	p_img = (TImage*)FindComponent(tempStr);
	if(p_img != NULL) p_img->Picture = NULL;
	p_img = NULL;

	// Buttons
	tempStr = L"btn_Room_";
	tempStr += t_FixedIdx;
	p_btn = (TAdvGlassButton*)FindComponent(tempStr);
	if(p_btn != NULL) p_btn->Enabled = false;
	p_btn = NULL;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_MakeRoomClick(TObject *Sender)
{
	// Button Create Room
	m_pDlgMakingRoom = new TFormMakingRoomDlg(NULL);
	m_pDlgMakingRoom->ShowModal();
	delete m_pDlgMakingRoom;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Receive_LobbyRoomStatusData(SERVERDATA _serverData) {

	// Common
	UnicodeString tempStr = L"";
    TLabel* p_lb = NULL;
	TAdvGlassButton* p_btn;
	TImage* p_img;
	int t_BuffIdx = 0;
	wchar_t temp[28] = {0, };

	BYTE t_RoomNumber = 0;
	BYTE t_State = 0;
	BYTE t_TeamType = 0;
	BYTE t_ItemType = 0;
	BYTE t_PlayerCount = 0;
	UnicodeString t_RoomTitle = L"";

	t_BuffIdx = 4;
	for(int i = 0 ; i < MAX_ROOM_COUNT ; i++) {
		t_State = _serverData.Data[t_BuffIdx + 1];
		if(t_State == 0) {
			// Reset Empty Game Room
			ResetGameRoom(i);
			continue;
		}

		t_RoomNumber = _serverData.Data[t_BuffIdx];
		t_TeamType = _serverData.Data[t_BuffIdx + 2];
		t_ItemType = _serverData.Data[t_BuffIdx + 3];
		t_PlayerCount = _serverData.Data[t_BuffIdx + 4];
		memcpy(temp, &_serverData.Data[t_BuffIdx + 5], 28);
		t_RoomTitle = temp;


		// Change Room Title
		tempStr = L"lb_Title_Room_";
		tempStr += t_RoomNumber;
		p_lb = (TLabel*)FindComponent(tempStr);
		if(p_lb != NULL) p_lb->Caption = t_RoomTitle;
		p_lb = NULL;

		// Change Game State
		tempStr = L"lb_Game_";
		tempStr += t_RoomNumber;
		p_lb = (TLabel*)FindComponent(tempStr);
		if(p_lb != NULL) {
			if(t_State == 1) {
				p_lb->Caption = L"대기중";
			} else if(t_State == 2) {
				p_lb->Caption = L"게임중";
			}
		}
		p_lb = NULL;

		// Change Team Type
		tempStr = L"lb_Team_";
		tempStr += t_RoomNumber;
		p_lb = (TLabel*)FindComponent(tempStr);
		if(p_lb != NULL) {
			if(t_TeamType == 0) {
				p_lb->Caption = L"개인전";
			} else if(t_State == 1) {
				p_lb->Caption = L"팀전";
			}
		}
		p_lb = NULL;

		// Change Item Type
		tempStr = L"lb_Item_";
		tempStr += t_RoomNumber;
		p_lb = (TLabel*)FindComponent(tempStr);
		if(p_lb != NULL) {
			if(t_ItemType == 0) {
				p_lb->Caption = L"노템전";
			} else if(t_State == 1) {
				p_lb->Caption = L"아템전";
			}
		}
		p_lb = NULL;

		// Change Player Count
		tempStr = L"lb_PlayerCount_Room_";
		tempStr += t_RoomNumber;
		p_lb = (TLabel*)FindComponent(tempStr);
		if(p_lb != NULL) {
			tempStr.sprintf(L"%d/6", t_PlayerCount);
			p_lb->Caption = tempStr;
		}
		p_lb = NULL;

		// Change Game State Image
		tempStr = L"img_Game_Room_";
		tempStr += t_RoomNumber;
		p_img = (TImage*)FindComponent(tempStr);
		if(p_img != NULL) {
			if(t_State == 1) { // Wait
				p_img->Picture = ImgSrc_Wait->Picture;
			} else if(t_State == 2) { // Gaming...
				p_img->Picture = ImgSrc_Game->Picture;
			}
		}
		p_img = NULL;

		// Change Team Type Image
		tempStr = L"img_Team_Room_";
		tempStr += t_RoomNumber;
		p_img = (TImage*)FindComponent(tempStr);
		if(p_img != NULL) {
			if(t_TeamType == 0) { // Private
				p_img->Picture = ImgSrc_Private->Picture;
			} else if(t_State == 1) { // Team
				p_img->Picture = ImgSrc_Team->Picture;
			}
		}
		p_img = NULL;

		// Change Item Type Image
		tempStr = L"img_Item_Room_";
		tempStr += t_RoomNumber;
		p_img = (TImage*)FindComponent(tempStr);
		if(p_img != NULL) {
			if(t_ItemType == 0) { // Notem
				p_img->Picture = ImgSrc_Notem->Picture;
			} else if(t_State == 1) { // Item
				p_img->Picture = ImgSrc_Item->Picture;
			}
		}
		p_img = NULL;

		// Change Enter Button State
		tempStr = L"btn_Room_";
		tempStr += t_RoomNumber;
		p_btn = (TAdvGlassButton*)FindComponent(tempStr);
		if(p_btn != NULL) p_btn->Enabled = true;
		p_btn = NULL;

		// Roop End Routine
		memset(temp, 0, sizeof(temp));
		t_BuffIdx += 33;
	}
}
//---------------------------------------------------------------------------

