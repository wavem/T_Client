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
	memset(&m_RoomStatus, 0, sizeof(m_RoomStatus));
	for(int i = 0 ; i < 5 ; i++) {
		memset(&m_Player[i], 0, sizeof(PLAYER));
	}
	m_ID = L"";
	m_Grade = L"";
	m_WinCount = 0;
	m_DefCount = 0;
	m_WinRate = 0;
	m_MyRoomIdx = 0;
	m_RoomMasterIdx = 0;
	m_IsSingleMode = false;
	m_IsDead = true;

	// Init ETC
	InitTetris();
	srand((unsigned int)GetTickCount());
	LoadBMPFiles();

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

void __fastcall TFormMain::LoadBMPFiles() {

	///***** BLOCKS *****///
	m_BmpList[BLOCK_O] = new TBitmap;
	m_BmpList[BLOCK_O]->LoadFromFile(L".\\IMG\\O.bmp");
	m_BmpList[BLOCK_I] = new TBitmap;
	m_BmpList[BLOCK_I]->LoadFromFile(L".\\IMG\\I.bmp");
	m_BmpList[BLOCK_T] = new TBitmap;
	m_BmpList[BLOCK_T]->LoadFromFile(L".\\IMG\\T.bmp");
	m_BmpList[BLOCK_J] = new TBitmap;
	m_BmpList[BLOCK_J]->LoadFromFile(L".\\IMG\\J.bmp");
	m_BmpList[BLOCK_L] = new TBitmap;
	m_BmpList[BLOCK_L]->LoadFromFile(L".\\IMG\\L.bmp");
	m_BmpList[BLOCK_S] = new TBitmap;
	m_BmpList[BLOCK_S]->LoadFromFile(L".\\IMG\\S.bmp");
	m_BmpList[BLOCK_Z] = new TBitmap;
	m_BmpList[BLOCK_Z]->LoadFromFile(L".\\IMG\\Z.bmp");
	m_BmpList[BLOCK_N] = new TBitmap;
	m_BmpList[BLOCK_N]->LoadFromFile(L".\\IMG\\N.bmp");
	m_BmpList[BLOCK_R] = new TBitmap;
	m_BmpList[BLOCK_R]->LoadFromFile(L".\\IMG\\R.bmp");
	m_BmpList[ITEM_P] = new TBitmap;
	m_BmpList[ITEM_P]->LoadFromFile(L".\\IMG\\P.bmp");
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

void __fastcall TFormMain::PrintChat_InGame(UnicodeString _str) {
	int t_Idx = memo_Chat_Game->Lines->Add(_str);
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
	m_IsSingleMode = true;
	btn_StartGame->Enabled = true;
	//btn_PauseGame->Visible = true;
	Notebook_Main->PageIndex = 2; // GAME
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

void __fastcall TFormMain::btn_LogOutClick(TObject *Sender)
{
	this->Close();
	//Notebook_Main->PageIndex = 0; // Log In Screen
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
		Receive_InGameChatData(t_serverData);
		break;

	case DATA_TYPE_CHANGE_USER_INFO:
		break;

	case DATA_TYPE_INGAME_CMD:
		Receive_InnerRoomCMDData(t_serverData);
		break;

	case DATA_TYPE_MAKE_GAME_ROOM:
		Receive_MakingRoomResult(t_serverData);
		break;

	case DATA_TYPE_ENTER_GAME_ROOM:
		Receive_EnterRoomResult(t_serverData);
		break;

	case DATA_TYPE_ESCAPE_GAME_ROOM:
		Receive_EscapeRoomResult(t_serverData);
		break;

	case DATA_TYPE_HEART_BEAT:
		break;

	case DATA_TYPE_INGAME_DATA:
		Receive_InGameData(t_serverData);
		break;

	case DATA_TYPE_LOBBY_ROOMSTATUS:
		Receive_LobbyRoomStatusData(t_serverData);
		break;

	case DATA_TYPE_LOBBY_PLAYERLIST:
		Receive_LobbyPlayerListData(t_serverData);
		break;

	case DATA_TYPE_INNER_ROOM_STATUS:
		Receive_InnerRoomStatusData(t_serverData);
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
	if(t_resultData == 0) { // Fail
		t_rst = ERR_MAKING_ROOM_FAILED;
	} else { // Receive Room Number
		t_rst = ERR_MAKING_ROOM_SUCCESS;
		m_MyIdx = 1; // My Idx is 1. Because, this room is created by me.
		m_RoomMasterIdx = m_MyIdx; // I am Room Master !!
		lb_MyPlayNumber->Caption = m_MyIdx;
		m_MyRoomIdx = t_resultData;
		lb_MyID->Caption = m_ID;
		lb_MyGrade->Caption = m_Grade;
		m_IsDead = true;
		ResetPlayerGrid();
	}
	SendMessage(m_pDlgMakingRoom->Handle, MSG_TRY_TO_MAKING_ROOM, (unsigned int)&t_rst, 0x10);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Receive_SignInResult(SERVERDATA _serverData) {

	// Common
	UnicodeString tempStr = L"";
	BYTE t_resultData = _serverData.Data[4];
	unsigned short t_us = 0;

	if(t_resultData == 0) { // Success
		// LOG-IN ROUTINE HERE
		Notebook_Main->PageIndex = 1; // Lobby
		m_ID = ed_ID->Text;
		ed_ID->Text = L"";
		ed_PW->Text = L"";

		m_Grade = GetLevelString(_serverData.Data[6]);
		memcpy(&t_us, &_serverData.Data[7], sizeof(t_us));
		m_WinCount = (int)t_us;
		memcpy(&t_us, &_serverData.Data[9], sizeof(t_us));
		m_DefCount = (int)t_us;
		memcpy(&t_us, &_serverData.Data[11], sizeof(t_us));
		m_WinRate = (int)t_us;

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
	wchar_t temp[28];

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
			// Roop End Routine
			memset(temp, 0, sizeof(temp));
			t_BuffIdx += 33;
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
		if(p_btn != NULL) {
			if(t_State == 1) { // Waiting
				p_btn->Enabled = true;
			} else if(t_State == 2) { // In Gaming
				p_btn->Enabled = false;
			}
		}
		p_btn = NULL;

		// Roop End Routine
		memset(temp, 0, sizeof(temp));
		t_BuffIdx += 33;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Receive_InnerRoomStatusData(SERVERDATA _serverData) {

	// Common
	UnicodeString tempStr = L"";
	int t_BuffIdx = 0;
	int t_PlayerIdx = 0;
	int t_CurrentIdx = 0;
	wchar_t t_Title[28];
	wchar_t t_UserID[30];

	// Room Info
	m_RoomStatus.State = _serverData.Data[4];
	m_RoomStatus.TeamType = _serverData.Data[5];
	m_RoomStatus.ItemType = _serverData.Data[6];
	m_RoomStatus.SpeedLevel = _serverData.Data[7];
	m_RoomStatus.RoomNumber = _serverData.Data[8];
	memcpy(t_Title, &_serverData.Data[9], 28);
	m_RoomStatus.Title = t_Title;
	m_RoomMasterIdx = _serverData.Data[253];

	// Player Info
	//t_BuffIdx = 37;
	for(int i = 0 ; i < 6 ; i++) {
		t_BuffIdx = 37 + (36 * i);
		t_CurrentIdx += 1;
		if(t_CurrentIdx == m_MyIdx) {
			// 여기서 레벨을 받기보단 로그인 했을 때 받는게 나을꺼같은데
			// 여기다 한 이유는... 혹시라도 게임하다가 레벨업 할까봐....ㅎㅎ
			lb_MyPlayNumber->Caption = m_MyIdx;
			m_Grade = GetLevelString(_serverData.Data[t_BuffIdx + 31]);
			continue;
		}

		m_Player[t_PlayerIdx].Connected = _serverData.Data[t_BuffIdx];
		memcpy(t_UserID, &_serverData.Data[t_BuffIdx + 1], 30);
		tempStr = t_UserID;
		m_Player[t_PlayerIdx].UserID = tempStr;
		m_Player[t_PlayerIdx].Grade = _serverData.Data[t_BuffIdx + 31];
		//m_Player[t_PlayerIdx].Life = _serverData.Data[t_BuffIdx + 32];
		m_Player[t_PlayerIdx].State = _serverData.Data[t_BuffIdx + 33];
		m_Player[t_PlayerIdx].TeamIdx = _serverData.Data[t_BuffIdx + 34];
		m_Player[t_PlayerIdx].Win = _serverData.Data[t_BuffIdx + 35];
		m_Player[t_PlayerIdx].ServerIdx = i;
		t_PlayerIdx++;
	}

	RefreshInnerGameRoom();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::RefreshInnerGameRoom() {

	// Common
	UnicodeString tempStr = L"";
	TLabel* p_lb = NULL;

	// Room Master Check
	if(m_RoomMasterIdx == m_MyIdx) {
		btn_StartGame->Enabled = true;
	} else {
		btn_StartGame->Enabled = false;
	}

	// Refresh Inner Game Room UI
	for(int i = 0 ; i < 5 ; i++) {

		// Player Number
		tempStr = L"lb_PlayerNumber_";
		tempStr += (i + 1);
		p_lb = (TLabel*)FindComponent(tempStr);
		if(p_lb != NULL) {
			if(m_Player[i].Connected) p_lb->Caption = m_Player[i].ServerIdx + 1; // +1 !!!
			else p_lb->Caption = L"";
		}
		p_lb = NULL;


		// Player User ID
		tempStr = L"lb_PlayerID_";
		tempStr += (i + 1);
		p_lb = (TLabel*)FindComponent(tempStr);
		if(p_lb != NULL) {
			if(m_Player[i].Connected) p_lb->Caption = m_Player[i].UserID;
			else p_lb->Caption = L"";
		}
		p_lb = NULL;

		// Player Grade
		tempStr = L"lb_PlayerGrade_";
		tempStr += (i + 1);
		p_lb = (TLabel*)FindComponent(tempStr);
		if(p_lb != NULL) {
			if(m_Player[i].Connected) p_lb->Caption = GetLevelString(m_Player[i].Grade);
			else p_lb->Caption = L"";
		}
		p_lb = NULL;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ClickEnterRoomButton(TObject *Sender)
{
	TAdvGlassButton* p_btn = (TAdvGlassButton*)Sender;
	if(!Send_EnterRoomMessage(p_btn->Tag)) {
		Application->MessageBoxW(L"Fail to enter the room", L"Entering Room", MB_OK | MB_ICONERROR);
	}
	m_MyRoomIdx = (BYTE)(p_btn->Tag);
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::Send_EnterRoomMessage(int _RoomIdx) {

	// Common
	UnicodeString tempStr = L"";
	int t_sendrst = 0;
	unsigned short t_PacketLen = 5; // Fixed

	// Check Client Socket
	if(m_sock_Client == INVALID_SOCKET) {
		tempStr.sprintf(L"Client socket is invalid");
		PrintLog(tempStr);
		return false;
	}

	// Check Client Thread
	if(m_ClientThread == NULL) {
		tempStr.sprintf(L"Client Thread is invalid");
		PrintLog(tempStr);
		return false;
	}

	// Check Connection
	if(m_ClientThread->isConnected == false) {
		tempStr.sprintf(L"Client is not connected");
		PrintLog(tempStr);
		return false;
	}

	// Reset Send Buffer
	memset(m_ClientThread->sendBuff, 0, TCP_SEND_BUF_SIZE);
	m_ClientThread->p_sendText = NULL;

	// Set Header Data
	m_ClientThread->sendBuff[0] = 0x47;
	memcpy(&m_ClientThread->sendBuff[1], &t_PacketLen, 2);
	m_ClientThread->sendBuff[3] = DATA_TYPE_ENTER_GAME_ROOM;

	// Input Data Into Packet Data
	m_ClientThread->sendBuff[4] = (BYTE)_RoomIdx;

	// Send to Server
	t_sendrst = send(m_sock_Client, (char*)m_ClientThread->sendBuff, t_PacketLen, 0);
	if(t_sendrst == 0) return false;

	// Function End Routine
	tempStr.sprintf(L"Send Byte(Enter Room) : %d", t_sendrst);
	PrintLog(tempStr);
	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Receive_EnterRoomResult(SERVERDATA _serverData) {

	m_MyIdx = _serverData.Data[4];

	if(m_MyIdx != 0) {
		lb_MyPlayNumber->Caption = m_MyIdx;
		lb_MyID->Caption = m_ID;
		lb_MyGrade->Caption = m_Grade;
		memo_Chat_Game->Clear();
		ed_Chat_InGame->Text = L"";
		btn_StartGame->Enabled = false;
		ResetPlayerGrid();
		m_IsDead = true;
		Notebook_Main->PageIndex = 2; // GAME
	} else {
		ShowMessage(L"Room is Full...");
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_Send_InGameChatClick(TObject *Sender)
{
	//Send_LobbyChatMessage();
	Send_InGameChatMessage();
}
//---------------------------------------------------------------------------

int __fastcall TFormMain::Send_InGameChatMessage() {

	// Pre Return
	if(m_IsSingleMode) {
		PrintChat_InGame(ed_Chat_InGame->Text);
		ed_Chat_InGame->Text = L"";
		return -1;
	}

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
	tempStr += ed_Chat_InGame->Text;
	t_TextLen = tempStr.Length() * 2 + 2;// 2 is NULL
	t_PacketLen = t_TextLen + 4 + 1; // +1 is Room Number
	m_ClientThread->p_sendText = (unsigned char*)tempStr.c_str();

	// Set Header Data
	m_ClientThread->sendBuff[0] = 0x47;
	memcpy(&m_ClientThread->sendBuff[1], &t_PacketLen, 2);
	m_ClientThread->sendBuff[3] = DATA_TYPE_INGAME_CHATTING;
	m_ClientThread->sendBuff[4] = m_MyRoomIdx;
	memcpy(&m_ClientThread->sendBuff[5], m_ClientThread->p_sendText, t_TextLen);

	// Send to Server
	t_sendrst = send(m_sock_Client, (char*)m_ClientThread->sendBuff, t_PacketLen, 0);

	// Function End Routine
	ed_Chat_InGame->Text = L"";
	PrintLog(t_sendrst);
	return ERR_DEFAULT_SUCCESS;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ed_Chat_InGameKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)
{
	if(Key == VK_RETURN) {
		Send_InGameChatMessage();
	} else if(Key == VK_ESCAPE) {
		ed_Chat_InGame->Text = L"";
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Receive_InGameChatData(SERVERDATA _serverData) {

	// Common
	UnicodeString tempStr = L"";
	UnicodeString str_Chat = L"";
	unsigned short t_RecvSize = 0;
	SERVERDATA t_serverData = _serverData;

	// Extract Information
	memcpy(&t_RecvSize, &t_serverData.Data[1], 2);
	//str_Chat.sprintf(L"Client[%02d] : ", t_ClientIdx);

	// Receive Chatting Text and Print Out
	wchar_t* temp = new wchar_t[t_RecvSize - 5];
	memcpy(temp, &t_serverData.Data[5], t_RecvSize - 5);
	tempStr = temp;
	//str_Chat += tempStr; // Merge Text Message
	PrintChat_InGame(tempStr);
	delete[] temp;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_QUIT_InGameClick(TObject *Sender)
{
	if(m_IsSingleMode) this->Close();
	if(Send_EscapeRoomMessage(m_MyRoomIdx) == false) Application->MessageBoxW(L"Error", L"Escape Room", MB_OK | MB_ICONERROR);
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::Send_EscapeRoomMessage(int _RoomIdx) {

	// Common
	UnicodeString tempStr = L"";
	int t_sendrst = 0;
	unsigned short t_PacketLen = 5; // Fixed

	// Check Client Socket
	if(m_sock_Client == INVALID_SOCKET) {
		tempStr.sprintf(L"Client socket is invalid");
		PrintLog(tempStr);
		return false;
	}

	// Check Client Thread
	if(m_ClientThread == NULL) {
		tempStr.sprintf(L"Client Thread is invalid");
		PrintLog(tempStr);
		return false;
	}

	// Check Connection
	if(m_ClientThread->isConnected == false) {
		tempStr.sprintf(L"Client is not connected");
		PrintLog(tempStr);
		return false;
	}

	// Reset Send Buffer
	memset(m_ClientThread->sendBuff, 0, TCP_SEND_BUF_SIZE);
	m_ClientThread->p_sendText = NULL;

	// Set Header Data
	m_ClientThread->sendBuff[0] = 0x47;
	memcpy(&m_ClientThread->sendBuff[1], &t_PacketLen, 2);
	m_ClientThread->sendBuff[3] = DATA_TYPE_ESCAPE_GAME_ROOM;

	// Input Data Into Packet Data
	m_ClientThread->sendBuff[4] = (BYTE)_RoomIdx;

	// Send to Server
	t_sendrst = send(m_sock_Client, (char*)m_ClientThread->sendBuff, t_PacketLen, 0);
	if(t_sendrst == 0) return false;

	// Function End Routine
	tempStr.sprintf(L"Send Byte(Escape Room) : %d", t_sendrst);
	PrintLog(tempStr);
	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Receive_EscapeRoomResult(SERVERDATA _serverData) {

	BYTE t_rst = _serverData.Data[4];
	if(t_rst != 0) { // Success
		ForceExitGame();
		TRect t_Rect;
		t_Rect.init(0, 0, img_NextBlock->Width, img_NextBlock->Height);
		img_NextBlock->Canvas->Brush->Color = clBlack;
		img_NextBlock->Canvas->FillRect(t_Rect);
		memset(m_MyView, 0, MAX_GRID_X * MAX_GRID_Y);
		grid_Mine->Refresh();
		m_MyIdx = 0; // Init '0'
		m_MyRoomIdx = 0;
		memset(&m_RoomStatus, 0, sizeof(m_RoomStatus));
		for(int i = 0 ; i < 5 ; i++) {
			memset(&m_Player[i], 0, sizeof(PLAYER));
		}

		lb_MyPlayNumber->Caption = L"";
		lb_MyID->Caption = L"";
		lb_MyGrade->Caption = L"";
		memo_Chat_Game->Clear();
		ed_Chat_InGame->Text = L"";
		btn_StartGame->Enabled = false;
		Notebook_Main->PageIndex = 1; // LOBBY

	} else {
		Application->MessageBoxW(L"Fail to escape Room", L"Escape Room", MB_OK | MB_ICONERROR);
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ForceExitGame() {
	tm_Level->Enabled = false;
	tm_PlayTime->Enabled = false;
	if(m_Block) {
		delete m_Block;
		m_Block = NULL;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_StartGameClick(TObject *Sender)
{
	if(m_IsSingleMode) {
		StartGame();
		return;
	}

	// Check Is possible to start the game ?
	bool t_IsAllDead = true;
	for(int i = 0 ; i < 5 ; i++) {
		if(m_Player[i].Connected) {
			if(m_Player[i].Life) {
				t_IsAllDead = false;
			}
		}
	}
	if(t_IsAllDead) t_IsAllDead = m_IsDead; // My Death Info.
	if(t_IsAllDead == false) {
		ShowMessage(L"The game is not over");
		return;
	}


	// Send Game Start Request Message To Server
	if(Send_GameStartMessage(m_MyRoomIdx) == false) {
		ShowMessage(L"Send Fail..");
	}
	// Send Start CMD
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::StartGame() {

	///***** INIT BEFORE GAME START *****///
	m_Score = 0;
	m_ComboCnt = 0;
	m_OldScore = 0;
	m_CleardLineCnt = 0;
	//lb_Combo_Value->Caption = m_ComboCnt;
	//lb_Time_Value->Caption = L"00:00:00";
	m_time_H = 0;
	m_time_M = 0;
	m_time_S = 0;
	m_Speed = 1000;
	m_time_cnt = 0;
	tm_Level->Interval = m_Speed;

	AddScore(m_Score);
	memset(&(m_MyView[0][0]), 0, MAX_GRID_X * MAX_GRID_Y);
	//RefreshOthersGameView(); // THIS FUNC MUST BE HERE (after memset 0)
	int num = 0;
	num = rand() % 7;
	//if(ed_BLOCK->Text != L"") num = StrToInt(ed_BLOCK->Text);
	m_Block = new C_BLOCK(num, m_MyView, &m_CreateSuccess);
	RefreshMyGameView();
	tm_Level->Enabled = true;
	tm_PlayTime->Enabled = true;
	grid_Mine->SetFocus();

	///***** SETTING NEXT BLOCK *****///
	m_NextBlockIdx = rand() % 7;
	RefreshNextBlock();
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::Send_GameStartMessage(int _RoomIdx) {

	// Common
	UnicodeString tempStr = L"";
	int t_sendrst = 0;
	unsigned short t_PacketLen = 30; // Fixed

	// Check Client Socket
	if(m_sock_Client == INVALID_SOCKET) {
		tempStr.sprintf(L"Client socket is invalid");
		PrintLog(tempStr);
		return false;
	}

	// Check Client Thread
	if(m_ClientThread == NULL) {
		tempStr.sprintf(L"Client Thread is invalid");
		PrintLog(tempStr);
		return false;
	}

	// Check Connection
	if(m_ClientThread->isConnected == false) {
		tempStr.sprintf(L"Client is not connected");
		PrintLog(tempStr);
		return false;
	}

	// Reset Send Buffer
	memset(m_ClientThread->sendBuff, 0, TCP_SEND_BUF_SIZE);
	m_ClientThread->p_sendText = NULL;

	// Set Header Data
	m_ClientThread->sendBuff[0] = 0x47;
	memcpy(&m_ClientThread->sendBuff[1], &t_PacketLen, 2);
	m_ClientThread->sendBuff[3] = DATA_TYPE_INGAME_CMD;

	// Input Data Into Packet Data
	m_ClientThread->sendBuff[4] = (BYTE)_RoomIdx;
	m_ClientThread->sendBuff[5] = 0x01; // Start Signal

	// Send to Server
	t_sendrst = send(m_sock_Client, (char*)m_ClientThread->sendBuff, t_PacketLen, 0);
	if(t_sendrst == 0) return false;

	// Function End Routine
	tempStr.sprintf(L"Send Byte(Game Start Button) : %d", t_sendrst);
	PrintLog(tempStr);
	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Receive_InnerRoomCMDData(SERVERDATA _serverData) {

	// Common
	UnicodeString tempStr = L"";
	int t_CurrentIdx = 0;
	BYTE t_RoomNumber = 0;
	BYTE t_StartSignal = 0;
	BYTE t_StateMessage = 0;
	BYTE t_PlayerIdx = 0;
	BYTE t_ReceivedPlayerIdx = 0;
	TAdvSmoothPanel* p_pn = NULL;
	TAdvStringGrid* p_grid = NULL;

	// Check Room Number
	t_RoomNumber = _serverData.Data[4];
	if(t_RoomNumber != m_MyRoomIdx) {
		return;
	}

	// Check Game Start Signal
	t_StartSignal = _serverData.Data[5];
	if(t_StartSignal == 0x01) {
		m_IsDead = false;
		for(int i = 0 ; i < 5 ; i++) {
			if(m_Player[i].Connected) {
				m_Player[i].Life = true;
			}
		}

		ResetPlayerGrid();
		StartGame();
		return;
	}

	// Check Defeat
	t_StateMessage = _serverData.Data[9];
	t_ReceivedPlayerIdx = _serverData.Data[7];

	if(t_StateMessage == 0x01) { // Means Dead
		if(t_ReceivedPlayerIdx == m_MyIdx) {
			pn_Dead->Visible = true;
			m_IsDead = true;
			return;
		}

		for(int i = 0 ; i < 5 ; i++) {
			if(m_Player[i].ServerIdx + 1 == t_ReceivedPlayerIdx) {
				tempStr = L"pn_Dead_";
				tempStr += (i + 1);
				p_pn = (TAdvSmoothPanel*)FindComponent(tempStr);
				if(p_pn != NULL) p_pn->Visible = true;

				m_Player[i].Life = false;
				return;
			}
		}
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ResetPlayerGrid() {

	// Common
	UnicodeString tempStr = L"";
	TAdvSmoothPanel* p_pn = NULL;
	TAdvStringGrid* p_grid = NULL;

	// Reset My Game Area
	memset(m_MyView, 0, MAX_GRID_X * MAX_GRID_Y);
	pn_Dead->Visible = false;

	// Reset Player Game Area
	for(int i = 0 ; i < 5 ; i++) {
		tempStr = L"pn_Dead_";
		tempStr += (i + 1);
		p_pn = (TAdvSmoothPanel*)FindComponent(tempStr);
		if(p_pn != NULL) p_pn->Visible = false;

		tempStr = L"grid_P";
		tempStr += (i + 1);
		p_grid = (TAdvStringGrid*)FindComponent(tempStr);
		memset(m_Player[i].Block, 0, 200);
		if(p_grid != NULL) p_grid->Refresh();
	}
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::Send_InGameDataMessage(int _RoomIdx) {

	// Pre Return
	if(m_IsSingleMode) return true;

	// Common
	UnicodeString tempStr = L"";
	int t_sendrst = 0;
	unsigned short t_PacketLen = TCP_SEND_BUF_SIZE; // Fixed
	int t_BuffIdx = 0;

	// Check Client Socket
	if(m_sock_Client == INVALID_SOCKET) {
		tempStr.sprintf(L"Client socket is invalid");
		PrintLog(tempStr);
		return false;
	}

	// Check Client Thread
	if(m_ClientThread == NULL) {
		tempStr.sprintf(L"Client Thread is invalid");
		PrintLog(tempStr);
		return false;
	}

	// Check Connection
	if(m_ClientThread->isConnected == false) {
		tempStr.sprintf(L"Client is not connected");
		PrintLog(tempStr);
		return false;
	}

	// Reset Send Buffer
	memset(m_ClientThread->sendBuff, 0, TCP_SEND_BUF_SIZE);
	m_ClientThread->p_sendText = NULL;

	// Set Header Data
	m_ClientThread->sendBuff[0] = 0x47;
	memcpy(&m_ClientThread->sendBuff[1], &t_PacketLen, 2);
	m_ClientThread->sendBuff[3] = DATA_TYPE_INGAME_DATA;

	// Input Data Into Packet Data
	m_ClientThread->sendBuff[4] = (BYTE)_RoomIdx;
	m_ClientThread->sendBuff[5] = m_MyIdx;

	t_BuffIdx = 10;
	for(int x = 0 ; x < MAX_GRID_X ; x++) {
		for(int y = 3 ; y < MAX_GRID_Y ; y++) {
			m_ClientThread->sendBuff[t_BuffIdx] = m_MyView[x][y];
			t_BuffIdx++;
		}
	}

	// Send to Server
	t_sendrst = send(m_sock_Client, (char*)m_ClientThread->sendBuff, t_PacketLen, 0);
	if(t_sendrst == 0) return false;

	// Function End Routine
	tempStr.sprintf(L"Send Byte(In Game Data) : %d", t_sendrst);
	PrintLog(tempStr);
	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Receive_InGameData(SERVERDATA _serverData) {

	// Common
	UnicodeString tempStr = L"";
	int t_BuffIdx = 0;
	int t_PlayerIdx = 0;
	int t_CurrentIdx = 0;
	BYTE t_RoomNumber = 0;

	// Check Room Number
	t_RoomNumber = _serverData.Data[4];
	if(t_RoomNumber != m_MyRoomIdx) {
		return;
	}

	// Input Received Data into Room Player Structure
	for(int i = 0 ; i < 6 ; i++) {
		t_BuffIdx = 10 + (200 * i);
		t_CurrentIdx += 1;
		if(t_CurrentIdx == m_MyIdx) {
			continue;
		}

		for(int x = 0 ; x < 10 ; x++) {
			for(int y = 0 ; y < 20 ; y++) {
				m_Player[t_PlayerIdx].Block[x][y] = _serverData.Data[t_BuffIdx++];
			}
		}
		t_PlayerIdx++;
	}

	// Refresh Other Game View Routine Here...
	RefreshOthersGameView();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::RefreshOthersGameView() {

	RefreshPlayerGame();
	for(int i = 0 ; i < 5 ; i++) {
		memcpy(m_Player[i].BlockTempBuffer, m_Player[i].Block, 200);
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::RefreshPlayerGame() {

	// Common
	UnicodeString tempStr = L"";
	TAdvStringGrid *p_grid = NULL;
	TRect t_Rect;
	int t_PlayerIdx = 0;
	BYTE t_Byte = 0;

	for(int i = 0 ; i < 6 ; i++) {
		// Find Grid Component
		tempStr.sprintf(L"grid_P%d", i + 1);
		p_grid = (TAdvStringGrid*)FindComponent(tempStr);
		if(!p_grid) continue; // NULL Exception

		t_PlayerIdx = p_grid->Tag - 1;

		// Draw Cells
		for(int x = 0 ; x < 10 ; x++) {
			for(int y = 0 ; y < 20 ; y++) {
				// Check Overwriting
				if(memcmp(&(m_Player[t_PlayerIdx].BlockTempBuffer[x][y]), &(m_Player[t_PlayerIdx].Block[x][y]), 1) == 0) continue;

				t_Byte = GetBlockData(m_Player[t_PlayerIdx].Block[x][y]);
				t_Rect = p_grid->CellRect(x, y);
				t_Rect.left += 0.1;
				t_Rect.right -= 0.1;
				t_Rect.top += 0.1;
				t_Rect.bottom -= 0.1;

				switch(t_Byte) {
				case TYPE_BLOCK_O:
					p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_O];
					break;
				case TYPE_BLOCK_I:
					p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_I];
					break;
				case TYPE_BLOCK_T:
					p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_T];
					break;
				case TYPE_BLOCK_J:
					p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_J];
					break;
				case TYPE_BLOCK_L:
					p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_L];
					break;
				case TYPE_BLOCK_S:
					p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_S];
					break;
				case TYPE_BLOCK_Z:
					p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_Z];
					break;
				case TYPE_STATUS_ROCK:
					p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_R];
					break;
				case TYPE_ITEM_PLUS:
					p_grid->Canvas->Brush->Bitmap = m_BmpList[ITEM_P];
					break;
				default:
					p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_N];
					break;
				}
				p_grid->Canvas->FillRect(t_Rect);
			}
		}
	}
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::Send_DieMessage(int _RoomIdx) {

	// Common
	UnicodeString tempStr = L"";
	int t_sendrst = 0;
	unsigned short t_PacketLen = 30; // Fixed

	// Check Client Socket
	if(m_sock_Client == INVALID_SOCKET) {
		tempStr.sprintf(L"Client socket is invalid");
		PrintLog(tempStr);
		return false;
	}

	// Check Client Thread
	if(m_ClientThread == NULL) {
		tempStr.sprintf(L"Client Thread is invalid");
		PrintLog(tempStr);
		return false;
	}

	// Check Connection
	if(m_ClientThread->isConnected == false) {
		tempStr.sprintf(L"Client is not connected");
		PrintLog(tempStr);
		return false;
	}

	// Reset Send Buffer
	memset(m_ClientThread->sendBuff, 0, TCP_SEND_BUF_SIZE);
	m_ClientThread->p_sendText = NULL;

	// Set Header Data
	m_ClientThread->sendBuff[0] = 0x47;
	memcpy(&m_ClientThread->sendBuff[1], &t_PacketLen, 2);
	m_ClientThread->sendBuff[3] = DATA_TYPE_INGAME_CMD;

	// Input Data Into Packet Data
	m_ClientThread->sendBuff[4] = (BYTE)_RoomIdx;
	m_ClientThread->sendBuff[7] = m_MyIdx;
	m_ClientThread->sendBuff[9] = 0x01; // I'm Dead...

	// Send to Server
	t_sendrst = send(m_sock_Client, (char*)m_ClientThread->sendBuff, t_PacketLen, 0);
	if(t_sendrst == 0) return false;

	// Function End Routine
	tempStr.sprintf(L"Send Byte(Deadman Message) : %d", t_sendrst);
	PrintLog(tempStr);
	return true;
}
//---------------------------------------------------------------------------








void __fastcall TFormMain::RefreshMyGameView() {
	grid_Mine->Refresh();

#if 0
	BYTE t_Byte = 0;
	for(int i = 0 ; i < MAX_GRID_X ; i++) {
		for(int j = 0 ; j < MAX_GRID_Y ; j++) {
			t_Byte = GetBlockData(m_MyView[i][j]);

			switch(t_Byte) {
				case TYPE_BLOCK_O:
					grid_Mine->Colors[i][j] = clYellow;
					break;
				case TYPE_BLOCK_I:
					grid_Mine->Colors[i][j] = clBlue;
					break;
				case TYPE_BLOCK_T:
					grid_Mine->Colors[i][j] = clPurple;
					break;
				case TYPE_BLOCK_J:
					grid_Mine->Colors[i][j] = clGreen;
					break;
				case TYPE_BLOCK_L:
					grid_Mine->Colors[i][j] = clMenuHighlight;
					break;
				case TYPE_BLOCK_S:
					grid_Mine->Colors[i][j] = clRed;
					break;
				case TYPE_BLOCK_Z:
					grid_Mine->Colors[i][j] = clFuchsia;
					break;
				default:
					grid_Mine->Colors[i][j] = clBlack;
					break;
			}
        }
	}
#endif
}
//---------------------------------------------------------------------------































bool __fastcall TFormMain::GetBitStatus(BYTE _src, int _bit) {
	if(_bit < 8 && _bit >= 0)	return (_src >> _bit) & 0x01;
	return false;
}
//---------------------------------------------------------------------------

BYTE __fastcall TFormMain::GetBlockData(BYTE _src) {
	return _src &= 0x3F; // 0011 1111
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::SetBlockData(BYTE &_src) {
	//return _src &= 0x3F; // 0011 1111
}
//---------------------------------------------------------------------------

BYTE __fastcall TFormMain::_BitSetting(BYTE _src, int _bitIdx, bool _bool) {
	BYTE t_byte = _src;
	BYTE t_01 = 0x01;
	t_01 <<= _bitIdx;
	if(_bool) t_byte |= t_01;
	else t_byte &= ~t_01; // if toggle : ^= t_01;
	return t_byte;
}
//---------------------------------------------------------------------------










































void __fastcall TFormMain::grid_MineDrawCell(TObject *Sender, int ACol, int ARow,
          TRect &Rect, TGridDrawState State)
{
	TAdvStringGrid *p_grid = (TAdvStringGrid*)Sender;

	BYTE t_Byte = 0;
	t_Byte = GetBlockData(m_MyView[ACol][ARow]);
	switch(t_Byte) {
		case TYPE_BLOCK_O:
			p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_O];
			break;
		case TYPE_BLOCK_I:
			p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_I];
			break;
		case TYPE_BLOCK_T:
			p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_T];
			break;
		case TYPE_BLOCK_J:
			p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_J];
			break;
		case TYPE_BLOCK_L:
			p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_L];
			break;
		case TYPE_BLOCK_S:
			p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_S];
			break;
		case TYPE_BLOCK_Z:
			p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_Z];
			break;
		case TYPE_STATUS_ROCK:
			p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_R];
			break;
		case TYPE_ITEM_PLUS:
			p_grid->Canvas->Brush->Bitmap = m_BmpList[ITEM_P];
			break;
		default:
			p_grid->Canvas->Brush->Bitmap = m_BmpList[BLOCK_N];
			break;
	}
	p_grid->Canvas->FillRect(Rect);

}
//---------------------------------------------------------------------------

void __fastcall TFormMain::grid_MineKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)
{
	///***** PRE RETURN *****///
	if(!m_Block) return;
	bool t_ret = false;

	///***** COMMON INIT *****///
	//int num = rand() % 7;

	///***** KEY MAP *****///
	if(Key == VK_ESCAPE) {
		if(m_IsSingleMode == false) return;
		m_IsPause = !m_IsPause;
		if(m_IsPause) {
			tm_Level->Enabled = false;
			tm_PlayTime->Enabled = false;
		} else {
			tm_Level->Enabled = true;
			tm_PlayTime->Enabled = true;
		}
		pn_Pause->Visible = m_IsPause;
		return;
	}

	if(m_IsPause) return;
	if(Key == VK_RIGHT) t_ret = m_Block->MoveRight();
	if(Key == VK_LEFT)  t_ret = m_Block->MoveLeft();
	if(Key == VK_UP)    t_ret = m_Block->RotateRight();
	if(Key == 0x43)    t_ret = m_Block->RotateRight(); // 0x43 : 'C'
	if(Key == 0x5A)    t_ret = m_Block->RotateLeft(); // 0x5A : 'Z'

	if(Key == VK_DOWN) {
		t_ret = m_Block->MoveDown();
		if(t_ret) {
			if(!m_IsSingleMode) Send_InGameDataMessage(m_MyRoomIdx);
			delete m_Block;
			m_Block = NULL;
			//RefreshOthersGameView();
			m_Block = new C_BLOCK(m_NextBlockIdx, m_MyView, &m_CreateSuccess);
			CheckCombo();

			///***** SETTING NEXT BLOCK *****///
			m_NextBlockIdx = rand() % 7;
			RefreshNextBlock();
		}
	}
	if(Key == VK_SPACE) {
		t_ret = m_Block->Drop();
		if(t_ret) {
			if(!m_IsSingleMode) Send_InGameDataMessage(m_MyRoomIdx);
			delete m_Block;
			m_Block = NULL;
			//RefreshOthersGameView();
			m_Block = new C_BLOCK(m_NextBlockIdx, m_MyView, &m_CreateSuccess);
			CheckCombo();

			///***** SETTING NEXT BLOCK *****///
			m_NextBlockIdx = rand() % 7;
			RefreshNextBlock();
		}
	}

	if(Key == 0x31) USE_ITEM_PLUS();
	if(Key == 0x32) USE_ITEM_MINUS();

	RefreshMyGameView();

	if(!m_CreateSuccess) {
		delete m_Block;
		m_Block = NULL;
		tm_Level->Enabled = false;
		tm_PlayTime->Enabled = false;
		//ShowMessage(L"GAME OVER");
		Send_DieMessage(m_MyRoomIdx);

		///***** RESET NEXT BLOCK IMAGE *****///
		m_NextBlockIdx = -1; // -1 means nothing just black screen
        RefreshNextBlock();
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::tm_LevelTimer(TObject *Sender)
{
	if(!m_Block) return;

	bool t_ret = m_Block->MoveDown();
	if(t_ret) {
		if(!m_IsSingleMode) Send_InGameDataMessage(m_MyRoomIdx);
		delete m_Block;
		m_Block = NULL;
		m_Block = new C_BLOCK(m_NextBlockIdx, m_MyView, &m_CreateSuccess);
		CheckCombo();

		///***** SETTING NEXT BLOCK *****///
		m_NextBlockIdx = rand() % 7;
		RefreshNextBlock();
	}

	RefreshMyGameView();

	if(!m_CreateSuccess) {
		delete m_Block;
		m_Block = NULL;
		tm_Level->Enabled = false;
		tm_PlayTime->Enabled = false;
		//ShowMessage(L"GAME OVER");
		Send_DieMessage(m_MyRoomIdx);
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::tm_PlayTimeTimer(TObject *Sender)
{
	UnicodeString tempStr = L"";
	if(++m_time_S == 60) {
		m_time_S = 0;
		if(++m_time_M == 60) {
			m_time_M = 0;
			++m_time_H;
		}
	}
	tempStr.sprintf(L"%02d:%02d:%02d", m_time_H, m_time_M, m_time_S);
	lb_Time->Caption = tempStr;

	// SPEED UP
	if(m_Speed == 100) return;

	m_time_cnt++;
	if(m_time_cnt % 30 == 0) {
		m_Speed -= 100;
		tm_Level->Interval = m_Speed;
		tempStr.sprintf(L"SPEED UP : %.1f Sec", (double)m_Speed / 1000);
		PrintChat_InGame(tempStr);
		if(m_Speed == 100) PrintChat_InGame(L"MAX SPEED");
	}
}
//---------------------------------------------------------------------------


void __fastcall TFormMain::USE_ITEM_PLUS() {

	int num = rand() % 9;
	int t_TopLine = MAX_GRID_Y - 1;
	bool t_bFindComplete = false;
	for(int y = 2 ; y <= MAX_GRID_Y - 1 ; y++) {
		for(int x = 0 ; x < MAX_GRID_X ; x++) {
			if(GetBlockData(m_MyView[x][y]) != 0 && !GetBitStatus(m_MyView[x][y], 7) && !GetBitStatus(m_MyView[x][y], 6)) {
				t_TopLine = y;
				t_bFindComplete = true;
				break;
			}
		}
		if(t_bFindComplete) break;
	}

	///***** CASE : THERE IS NOTHING *****///
	if(!t_bFindComplete) {
		for(int x = 0 ; x < MAX_GRID_X ; x++) {
			if(x == num) continue;
			m_MyView[x][t_TopLine] = TYPE_STATUS_ROCK;
		}
		return;
	}

	///***** CASE : FULL *****///
	if(t_TopLine == 2) {
		//PringMsg(L"GAME OVER");
	}


	///***** MOVE UP LINES *****///
	BYTE t_Byte = 0;
	bool t_b_IsMovedCurrentBlock = false;

	for(int y = t_TopLine ; y < MAX_GRID_Y ; y++) {
		for(int x = 0 ; x < MAX_GRID_X ; x++) {
			t_Byte = m_MyView[x][y];
			if(GetBitStatus(t_Byte, 7) || GetBitStatus(t_Byte, 6)) {
				continue;
			}

			if(GetBitStatus(m_MyView[x][y - 1], 7) && !t_b_IsMovedCurrentBlock) {
				m_Block->MoveUp();
				t_b_IsMovedCurrentBlock = true;
			}

			m_MyView[x][y - 1] = t_Byte;
			m_MyView[x][y] = 0;
		}
		if(y == MAX_GRID_Y - 1) {
			for(int x = 0 ; x < MAX_GRID_X ; x++) {
				if(x == num) continue;
				m_MyView[x][y] = TYPE_STATUS_ROCK;
			}
			return;
		}
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::USE_ITEM_MINUS() {
	m_Block->ClearLine(MAX_GRID_Y - 1);
}
//---------------------------------------------------------------------------
