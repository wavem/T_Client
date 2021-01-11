//---------------------------------------------------------------------------

#ifndef MainH
#define MainH
//---------------------------------------------------------------------------
#include "Define.h"
#include "TCPSocketThread.h"
#include "SignUpDlg.h"
#include "Version.h"
#include "MakingRoomDlg.h"
#include "HelpDlg.h"
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include "AdvGrid.hpp"
#include "AdvObj.hpp"
#include "BaseGrid.hpp"
#include <Vcl.Grids.hpp>
#include "cxButtons.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinBlack.hpp"
#include "dxSkinBlue.hpp"
#include "dxSkinBlueprint.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinCoffee.hpp"
#include "dxSkinDarkRoom.hpp"
#include "dxSkinDarkSide.hpp"
#include "dxSkinDevExpressDarkStyle.hpp"
#include "dxSkinDevExpressStyle.hpp"
#include "dxSkinFoggy.hpp"
#include "dxSkinGlassOceans.hpp"
#include "dxSkinHighContrast.hpp"
#include "dxSkiniMaginary.hpp"
#include "dxSkinLilian.hpp"
#include "dxSkinLiquidSky.hpp"
#include "dxSkinLondonLiquidSky.hpp"
#include "dxSkinMcSkin.hpp"
#include "dxSkinMetropolis.hpp"
#include "dxSkinMetropolisDark.hpp"
#include "dxSkinMoneyTwins.hpp"
#include "dxSkinOffice2007Black.hpp"
#include "dxSkinOffice2007Blue.hpp"
#include "dxSkinOffice2007Green.hpp"
#include "dxSkinOffice2007Pink.hpp"
#include "dxSkinOffice2007Silver.hpp"
#include "dxSkinOffice2010Black.hpp"
#include "dxSkinOffice2010Blue.hpp"
#include "dxSkinOffice2010Silver.hpp"
#include "dxSkinOffice2013DarkGray.hpp"
#include "dxSkinOffice2013LightGray.hpp"
#include "dxSkinOffice2013White.hpp"
#include "dxSkinPumpkin.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsDefaultPainters.hpp"
#include "dxSkinSeven.hpp"
#include "dxSkinSevenClassic.hpp"
#include "dxSkinSharp.hpp"
#include "dxSkinSharpPlus.hpp"
#include "dxSkinSilver.hpp"
#include "dxSkinSpringTime.hpp"
#include "dxSkinStardust.hpp"
#include "dxSkinSummer2008.hpp"
#include "dxSkinTheAsphaltWorld.hpp"
#include "dxSkinValentine.hpp"
#include "dxSkinVisualStudio2013Blue.hpp"
#include "dxSkinVisualStudio2013Dark.hpp"
#include "dxSkinVisualStudio2013Light.hpp"
#include "dxSkinVS2010.hpp"
#include "dxSkinWhiteprint.hpp"
#include "dxSkinXmas2008Blue.hpp"
#include <Vcl.Menus.hpp>
#include "AdvSmoothPanel.hpp"
#include "AdvGlassButton.hpp"
#include "AdvMemo.hpp"
#include "AdvSmoothButton.hpp"
#include "AdvEdit.hpp"
#include "AdvScrollBox.hpp"
#include "CurvyControls.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxMemo.hpp"
#include "cxTextEdit.hpp"
#include "dxGDIPlusClasses.hpp"
#include <Vcl.ImgList.hpp>
#include "AdvShape.hpp"
#include <vector>
//---------------------------------------------------------------------------
class TFormSignUp;
class TFormMakingRoomDlg;
class CTcpSocketThread;

class TFormMain : public TForm
{
__published:	// IDE-managed Components
	TPanel *__pnBase;
	TNotebook *Notebook_Main;
	TAdvSmoothPanel *_pnBase_01_Login;
	TAdvGlassButton *btn_SingleMode;
	TAdvEdit *ed_ID;
	TAdvGlassButton *btn_Login;
	TAdvEdit *ed_PW;
	TAdvGlassButton *btn_Information;
	TLabel *lb_Title_Login_ID;
	TLabel *lb_Title_Login_PW;
	TAdvGlassButton *btn_SignUp;
	TAdvGlassButton *btn_Login_Quit;
	TAdvSmoothPanel *_pnBase_02_Lobby;
	TAdvGlassButton *btn_Send_LobbyChat;
	TAdvEdit *ed_Chat_Lobby;
	TAdvSmoothPanel *_pnBase_03_Game;
	TLabel *lb_InGame_NextBlock;
	TAdvStringGrid *grid_P1;
	TAdvStringGrid *grid_P2;
	TAdvStringGrid *grid_P3;
	TAdvStringGrid *grid_P4;
	TAdvStringGrid *grid_P5;
	TPanel *pn_Pause;
	TAdvStringGrid *grid_Mine;
	TAdvStringGrid *grid_Items;
	TImage *img_NextBlock;
	TAdvStringGrid *grid_PlayerList;
	TAdvGlassButton *btn_MakeRoom;
	TLabel *lb_Lobby_10;
	TLabel *lb_Lobby_11;
	TLabel *lb_Lobby_12;
	TAdvGlassButton *btn_LogOut;
	TAdvGlassButton *btn_Help;
	TAdvEdit *ed_Chat_InGame;
	TAdvGlassButton *btn_Send_InGameChat;
	TAdvGlassButton *btn_QUIT_InGame;
	TAdvGlassButton *btn_StartGame;
	TAdvGlassButton *btn_PauseGame;
	TAdvGlassButton *btn_Setting_InGame;
	TPanel *_pnBase_04_Log;
	TImage *btn_Debug;
	TAdvMemo *memo_LOG;
	TAdvGlassButton *btn_Log_Lobby;
	TAdvGlassButton *btn_Log_InGame;
	TAdvGlassButton *btn_Back_LogScreen;
	TcxMemo *memo_Chat_Lobby;
	TAdvSmoothPanel *pnRoom_1;
	TLabel *lb_Room_1_NumTitle;
	TLabel *lb_Room_1_Number;
	TLabel *lb_Title_Room_1;
	TLabel *lb_PlayerCount_Room_1;
	TImage *img_Team_Room_1;
	TImage *img_Item_Room_1;
	TImage *img_Game_Room_1;
	TLabel *lb_Game_1;
	TLabel *lb_Team_1;
	TLabel *lb_Item_1;
	TAdvGlassButton *btn_Room_1;
	TImage *ImgSrc_Wait;
	TImage *ImgSrc_Game;
	TImage *ImgSrc_Team;
	TImage *ImgSrc_Item;
	TImage *ImgSrc_Private;
	TImage *ImgSrc_Notem;
	TAdvSmoothPanel *pnRoom_2;
	TLabel *lb_Room_2_NumTitle;
	TLabel *lb_Room_2_Number;
	TLabel *lb_Title_Room_2;
	TLabel *lb_PlayerCount_Room_2;
	TImage *img_Team_Room_2;
	TImage *img_Item_Room_2;
	TImage *img_Game_Room_2;
	TLabel *lb_Game_2;
	TLabel *lb_Team_2;
	TLabel *lb_Item_2;
	TAdvGlassButton *btn_Room_2;
	TAdvSmoothPanel *pnRoom_3;
	TLabel *lb_Room_3_NumTitle;
	TLabel *lb_Room_3_Number;
	TLabel *lb_Title_Room_3;
	TLabel *lb_PlayerCount_Room_3;
	TImage *img_Team_Room_3;
	TImage *img_Item_Room_3;
	TImage *img_Game_Room_3;
	TLabel *lb_Game_3;
	TLabel *lb_Team_3;
	TLabel *lb_Item_3;
	TAdvGlassButton *btn_Room_3;
	TAdvSmoothPanel *pnRoom_4;
	TLabel *lb_Room_4_NumTitle;
	TLabel *lb_Room_4_Number;
	TLabel *lb_Title_Room_4;
	TLabel *lb_PlayerCount_Room_4;
	TImage *img_Team_Room_4;
	TImage *img_Item_Room_4;
	TImage *img_Game_Room_4;
	TLabel *lb_Game_4;
	TLabel *lb_Team_4;
	TLabel *lb_Item_4;
	TAdvGlassButton *btn_Room_4;
	TAdvSmoothPanel *pnRoom_7;
	TLabel *lb_Room_7_NumTitle;
	TLabel *lb_Room_7_Number;
	TLabel *lb_Title_Room_7;
	TLabel *lb_PlayerCount_Room_7;
	TImage *img_Team_Room_7;
	TImage *img_Item_Room_7;
	TImage *img_Game_Room_7;
	TLabel *lb_Game_7;
	TLabel *lb_Team_7;
	TLabel *lb_Item_7;
	TAdvGlassButton *btn_Room_7;
	TAdvSmoothPanel *pnRoom_8;
	TLabel *lb_Room_8_NumTitle;
	TLabel *lb_Room_8_Number;
	TLabel *lb_Title_Room_8;
	TLabel *lb_PlayerCount_Room_8;
	TImage *img_Team_Room_8;
	TImage *img_Item_Room_8;
	TImage *img_Game_Room_8;
	TLabel *lb_Game_8;
	TLabel *lb_Team_8;
	TLabel *lb_Item_8;
	TAdvGlassButton *btn_Room_8;
	TAdvSmoothPanel *pnRoom_5;
	TLabel *lb_Room_5_NumTitle;
	TLabel *lb_Room_5_Number;
	TLabel *lb_Title_Room_5;
	TLabel *lb_PlayerCount_Room_5;
	TImage *img_Team_Room_5;
	TImage *img_Item_Room_5;
	TImage *img_Game_Room_5;
	TLabel *lb_Game_5;
	TLabel *lb_Team_5;
	TLabel *lb_Item_5;
	TAdvGlassButton *btn_Room_5;
	TAdvSmoothPanel *pnRoom_6;
	TLabel *lb_Room_6_NumTitle;
	TLabel *lb_Room_6_Number;
	TLabel *lb_Title_Room_6;
	TLabel *lb_PlayerCount_Room_6;
	TImage *img_Team_Room_6;
	TImage *img_Item_Room_6;
	TImage *img_Game_Room_6;
	TLabel *lb_Game_6;
	TLabel *lb_Team_6;
	TLabel *lb_Item_6;
	TAdvGlassButton *btn_Room_6;
	TAdvSmoothPanel *pnRoom_9;
	TLabel *lb_Room_9_NumTitle;
	TLabel *lb_Room_9_Number;
	TLabel *lb_Title_Room_9;
	TLabel *lb_PlayerCount_Room_9;
	TImage *img_Team_Room_9;
	TImage *img_Item_Room_9;
	TImage *img_Game_Room_9;
	TLabel *lb_Game_9;
	TLabel *lb_Team_9;
	TLabel *lb_Item_9;
	TAdvGlassButton *btn_Room_9;
	TAdvSmoothPanel *pnRoom_10;
	TLabel *lb_Room_10_NumTitle;
	TLabel *lb_Room_10_Number;
	TLabel *lb_Title_Room_10;
	TLabel *lb_PlayerCount_Room_10;
	TImage *img_Team_Room_10;
	TImage *img_Item_Room_10;
	TImage *img_Game_Room_10;
	TLabel *lb_Game_10;
	TLabel *lb_Team_10;
	TLabel *lb_Item_10;
	TAdvGlassButton *btn_Room_10;
	TcxMemo *memo_Chat_Game;
	TLabel *lb_PlayerID_1;
	TLabel *lb_PlayerGrade_1;
	TLabel *lb_PlayerNumber_1;
	TLabel *lb_PlayerNumber_2;
	TLabel *lb_PlayerID_2;
	TLabel *lb_PlayerGrade_2;
	TLabel *lb_PlayerNumber_3;
	TLabel *lb_PlayerID_3;
	TLabel *lb_PlayerGrade_3;
	TLabel *lb_PlayerNumber_4;
	TLabel *lb_PlayerID_4;
	TLabel *lb_PlayerGrade_4;
	TLabel *lb_PlayerNumber_5;
	TLabel *lb_PlayerID_5;
	TLabel *lb_PlayerGrade_5;
	TTimer *tm_Level;
	TTimer *tm_PlayTime;
	TAdvSmoothPanel *pn_Cover;
	TLabel *lb_MyPlayNumber;
	TLabel *lb_MyID;
	TLabel *lb_MyGrade;
	TAdvSmoothPanel *pn_Dead;
	TLabel *lb_Dead;
	TAdvSmoothPanel *pn_Dead_1;
	TLabel *Label1;
	TAdvSmoothPanel *pn_Dead_2;
	TLabel *Label2;
	TAdvSmoothPanel *pn_Dead_3;
	TLabel *Label3;
	TAdvSmoothPanel *pn_Dead_4;
	TLabel *Label4;
	TAdvSmoothPanel *pn_Dead_5;
	TLabel *Label5;
	TLabel *lb_Time_Title;
	TLabel *lb_Score_Title;
	TLabel *lb_Time;
	TLabel *lb_Score;
	TLabel *lb_Combo_Title;
	TLabel *lb_Combo;
	TLabel *lb_VersionIsDifferent;
	TLabel *lb_DownloadLink;
	TImageList *ImgList_My;
	TImageList *ImgList_Others;
	TAdvShape *shp_Team_2;
	TAdvShape *shp_Team_1;
	TAdvShape *shp_Team_3;
	TAdvShape *shp_Team_4;
	TAdvShape *shp_Team_5;
	TAdvShape *shp_Team_Mine;
	TAdvGlassButton *btn_Help_Ingame;
	TAdvGlassButton *AdvGlassButton1;
	TAdvGlassButton *AdvGlassButton2;
	void __fastcall btn_SingleModeClick(TObject *Sender);
	void __fastcall btn_SignUpClick(TObject *Sender);
	void __fastcall btn_Login_QuitClick(TObject *Sender);
	void __fastcall btn_LoginClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall btn_HelpClick(TObject *Sender);
	void __fastcall btn_LogOutClick(TObject *Sender);
	void __fastcall btn_InformationClick(TObject *Sender);
	void __fastcall btn_DebugClick(TObject *Sender);
	void __fastcall btn_Log_LobbyClick(TObject *Sender);
	void __fastcall btn_Log_InGameClick(TObject *Sender);
	void __fastcall btn_Back_LogScreenClick(TObject *Sender);
	void __fastcall btn_Send_LobbyChatClick(TObject *Sender);
	void __fastcall ed_Chat_LobbyKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall btn_MakeRoomClick(TObject *Sender);
	void __fastcall ClickEnterRoomButton(TObject *Sender);
	void __fastcall btn_Send_InGameChatClick(TObject *Sender);
	void __fastcall ed_Chat_InGameKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall btn_QUIT_InGameClick(TObject *Sender);
	void __fastcall btn_StartGameClick(TObject *Sender);
	void __fastcall grid_MineKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall tm_LevelTimer(TObject *Sender);
	void __fastcall tm_PlayTimeTimer(TObject *Sender);
	void __fastcall lb_DownloadLinkClick(TObject *Sender);
	void __fastcall grid_MineDrawCell(TObject *Sender, int ACol, int ARow, TRect &Rect,
          TGridDrawState State);
	void __fastcall btn_Help_IngameClick(TObject *Sender);



private:	// User declarations
public:		// User declarations
	__fastcall TFormMain(TComponent* Owner);


// MJW START
public: // BASIC FUNCTIONS
	void __fastcall InitProgram();
	void __fastcall ExitProgram();
	void __fastcall PrintLog(UnicodeString _str);
	void __fastcall PrintChat_Lobby(UnicodeString _str);
	void __fastcall PrintChat_InGame(UnicodeString _str);
	void __fastcall LoadBMPFiles();

	UnicodeString __fastcall GetLevelString(BYTE _num);
	void __fastcall InitLobbyGameRoom();
	void __fastcall ResetGameRoom(int _Num);
	void __fastcall RefreshInnerGameRoom();
	void __fastcall ForceExitGame();
	void __fastcall RefreshPlayerGame();

public: // Item Area
	void __fastcall ResetItemList();
	void __fastcall PushItemIntoList(BYTE _Idx);
	BYTE __fastcall PopItemFromList();
	void __fastcall RefreshItemList();


// MEMBER VARIABLES : SYSTEM
public:
	TFormSignUp* m_pDlgSignUp;
	TFormMakingRoomDlg* m_pDlgMakingRoom;
	CTcpSocketThread* m_ClientThread;
	SOCKET m_sock_Client;
	UnicodeString m_ID;
	UnicodeString m_Grade;
	int m_WinCount;
	int m_DefCount;
	int m_WinRate;
	BYTE m_MyIdx;
	BYTE m_MyRoomIdx;
	ROOMSTATUS m_RoomStatus;
	PLAYER m_Player[5];
	BYTE m_RoomMasterIdx;
	bool m_IsSingleMode;
	int m_Test;
	bool m_IsDead;
	bool m_IsGameOver;
	std::vector<BYTE> m_ItemList;



public: // Prepare Communication
	bool __fastcall CreateTCPSocket();
	bool __fastcall CreateClientThread();

public: // Do Communication
	int __fastcall Send_SignUpMessage(SIGNUPINFO _info);
	int __fastcall Send_MakingRoomMessage(MAKINGROOMINFO _info);
	int __fastcall Send_LobbyChatMessage();
	int __fastcall Send_InGameChatMessage();
	bool __fastcall Send_EnterRoomMessage(int _RoomIdx);
	bool __fastcall Send_EscapeRoomMessage(int _RoomIdx);
	bool __fastcall Send_GameStartMessage(int _RoomIdx);
	bool __fastcall Send_InGameDataMessage(int _RoomIdx);
	bool __fastcall Send_DieMessage(int _RoomIdx);
	bool __fastcall Send_ItemIndex(int _ItemIdx, int _PlayerIdx);



public: // Receive Routine
	void __fastcall Receive_SignUpResult(SERVERDATA _serverData);
	void __fastcall Receive_SignInResult(SERVERDATA _serverData);
	void __fastcall Receive_MakingRoomResult(SERVERDATA _serverData);
	void __fastcall Receive_EnterRoomResult(SERVERDATA _serverData);
	void __fastcall Receive_EscapeRoomResult(SERVERDATA _serverData);

	void __fastcall Receive_LobbyChatData(SERVERDATA _serverData);
	void __fastcall Receive_InGameChatData(SERVERDATA _serverData);
	void __fastcall Receive_LobbyPlayerListData(SERVERDATA _serverData);
	void __fastcall Receive_LobbyRoomStatusData(SERVERDATA _serverData);
	void __fastcall Receive_InnerRoomStatusData(SERVERDATA _serverData);
	void __fastcall Receive_InnerRoomCMDData(SERVERDATA _serverData);
	void __fastcall Receive_InGameData(SERVERDATA _serverData);
	void __fastcall Receive_BlockRoomStatusData(SERVERDATA _serverData);

	void __fastcall Receive_VersionInfoData(SERVERDATA _serverData);








// MEMBER VARIABLES : IN GAME
public:
	TBitmap *m_BmpList_My[64];
	TBitmap *m_BmpList_Others[64];
	int m_row;
	int m_col;
	BYTE m_MyView[MAX_GRID_X][MAX_GRID_Y];
	//BYTE m_MyViewTempBuffer[MAX_GRID_X][MAX_GRID_Y]; // Delete 2021-01-09
	C_BLOCK *m_Block;
	bool m_CreateSuccess;
	int m_Score;

// MEMBER FUNCTIONS : IN GAME
public:
	void __fastcall InitTetris();
	void __fastcall StartGame();
	void __fastcall ResetPlayerGrid();

public: // Control Information
	void __fastcall AddScore(int _Value);
	void __fastcall CheckCombo();
	int m_ComboCnt;
	int m_OldScore;
	int m_CleardLineCnt;
	void __fastcall GetItemFromLine(int _LineNum);

public: // Display
	void __fastcall RefreshMyGameView();
	void __fastcall RefreshOthersGameView();
	void __fastcall RefreshNextBlock();

public: // ITEM
	void __fastcall CreateRandomItem();
	void __fastcall GetItem(int _Idx);
	void __fastcall Execute_Item(int _ItemIdx);

	///***** USING ITEM *****///
	void __fastcall USE_ITEM_PLUS();
	void __fastcall USE_ITEM_MINUS();
	void __fastcall USE_ITEM_TWIST();
	void __fastcall USE_ITEM_CLEAR_ALL();
	void __fastcall USE_ITEM_CLEAR_HALF();
	void __fastcall USE_ITEM_CLEAR_DROP();
	void __fastcall USE_ITEM_DEL_FIELD_ITEM();

	void __fastcall USE_ITEM_DEL_ITEMLIST();
	void __fastcall USE_ITEM_SWAP();
	void __fastcall USE_ITEM_SPEED_UP();
	void __fastcall USE_ITEM_SPEED_DOWN();
	void __fastcall USE_ITEM_BLIND();

///***** GAME SYSTEM *****///
	// TIME
	int m_time_H;
	int m_time_M;
	int m_time_S;
	int m_time_cnt;

	bool m_IsPause;

	// NEXT BLOCK
	int m_NextBlockIdx;

	int m_Speed;

	// Common Functions
	bool __fastcall GetBitStatus(BYTE _src, int _bit);
	BYTE __fastcall GetBlockData(BYTE _src);
	void __fastcall SetBlockData(BYTE &_src);
	BYTE __fastcall _BitSetting(BYTE _src, int _bitIdx, bool _bool);















public: // Message Handler
	//void __fastcall AddClient(TMessage &_msg);
	//void __fastcall ReceiveClientMessage(TMessage &_msg);
	void __fastcall PrintThreadLogMessage(TMessage &_msg);
	void __fastcall TryToSignUp(TMessage &_msg);
	void __fastcall TryToMakingRoom(TMessage &_msg);
	void __fastcall ReceiveServerData(TMessage &_msg);
	void __fastcall TryToGetVersionInfo(TMessage &_msg);


BEGIN_MESSAGE_MAP
	MESSAGE_HANDLER(MSG_LOG_FROM_THREAD, TMessage, PrintThreadLogMessage)
	MESSAGE_HANDLER(MSG_TRY_TO_SIGNUP, TMessage, TryToSignUp)
	MESSAGE_HANDLER(MSG_TRY_TO_MAKING_ROOM, TMessage, TryToMakingRoom)
	MESSAGE_HANDLER(MSG_SERVER_DATA, TMessage, ReceiveServerData)
	MESSAGE_HANDLER(MSG_TRY_TO_GET_VERSION_INFO, TMessage, TryToGetVersionInfo)
END_MESSAGE_MAP(TForm)
};
//---------------------------------------------------------------------------
extern PACKAGE TFormMain *FormMain;
//---------------------------------------------------------------------------
#endif
