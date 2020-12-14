//---------------------------------------------------------------------------

#ifndef MainH
#define MainH
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
//---------------------------------------------------------------------------

#include "Define.h"
#include "SignUpDlg.h"
#include "Version.h"
//---------------------------------------------------------------------------
class TFormMain : public TForm
{
__published:	// IDE-managed Components
	TPanel *__pnBase;
	TNotebook *Notebook_Main;
	TAdvSmoothPanel *_pnBase_04_Test;
	TAdvSmoothPanel *pn_Login;
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
	TLabel *lb_Lobby_1;
	TAdvGlassButton *AdvGlassButton3;
	TAdvEdit *ed_Chat;
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
	TAdvStringGrid *grid_Room;
	TAdvMemo *chat;
	TLabel *lb_Lobby_2;
	TLabel *lb_Lobby_3;
	TLabel *lb_Lobby_4;
	TLabel *lb_Lobby_5;
	TLabel *lb_Lobby_6;
	TLabel *lb_Lobby_7;
	TLabel *lb_Lobby_8;
	TLabel *lb_Lobby_9;
	TAdvStringGrid *grid_PlayerList;
	TAdvGlassButton *btn_MakeRoom;
	TLabel *lb_Lobby_10;
	TLabel *lb_Lobby_11;
	TLabel *lb_Lobby_12;
	TAdvGlassButton *btn_LogOut;
	TAdvGlassButton *btn_TEST;
	TAdvGlassButton *btn_Enter;
	TAdvEdit *ed_Chat_InGame;
	TAdvMemo *memo_Chat_InGame;
	TAdvGlassButton *btn_Send_InGameChat;
	TAdvGlassButton *btn_QUIT_InGame;
	TAdvGlassButton *btn_StartGame;
	TAdvGlassButton *btn_PauseGame;
	TAdvGlassButton *btn_Setting_InGame;
	void __fastcall btn_SingleModeClick(TObject *Sender);
	void __fastcall btn_SignUpClick(TObject *Sender);
	void __fastcall btn_Login_QuitClick(TObject *Sender);
	void __fastcall btn_LoginClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall btn_EnterClick(TObject *Sender);
	void __fastcall btn_QUIT_InGameClick(TObject *Sender);
	void __fastcall btn_LogOutClick(TObject *Sender);
	void __fastcall btn_InformationClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormMain(TComponent* Owner);


// MJW START
public:
	void __fastcall InitProgram();
	void __fastcall ExitProgram();
	void __fastcall PrintMsg(UnicodeString _str);
	void __fastcall PrintChat_Lobby(UnicodeString _str);

};
//---------------------------------------------------------------------------
extern PACKAGE TFormMain *FormMain;
//---------------------------------------------------------------------------
#endif
