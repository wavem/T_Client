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
	TLabel *Label1;
	TLabel *Label2;
	TAdvGlassButton *AdvGlassButton3;
	TAdvEdit *AdvEdit1;
	TAdvSmoothButton *btn_Test;
	TButton *btn_GAME;
	TAdvMemo *chat;
	TAdvSmoothPanel *_pnBase_03_Game;
	TLabel *Label5;
	TAdvGlassButton *AdvGlassButton2;
	TAdvEdit *AdvEdit3;
	TAdvSmoothButton *AdvSmoothButton2;
	TAdvMemo *AdvMemo2;
	TAdvStringGrid *grid_P1;
	TAdvStringGrid *grid_P2;
	TAdvStringGrid *grid_P3;
	TAdvStringGrid *grid_P4;
	TAdvStringGrid *grid_P5;
	TPanel *pn_Pause;
	TAdvStringGrid *grid_Mine;
	TAdvStringGrid *grid_Items;
	TcxButton *btn_LogOut;
	TImage *img_NextBlock;
	TAdvScrollBox *AdvScrollBox1;
	TAdvSmoothPanel *AdvSmoothPanel1;
	void __fastcall btn_GAMEClick(TObject *Sender);
	void __fastcall btn_LogOutClick(TObject *Sender);
	void __fastcall btn_SingleModeClick(TObject *Sender);
	void __fastcall btn_TestClick(TObject *Sender);
	void __fastcall btn_SignUpClick(TObject *Sender);
	void __fastcall btn_InformationClick(TObject *Sender);
	void __fastcall btn_Login_QuitClick(TObject *Sender);
	void __fastcall btn_LoginClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormMain(TComponent* Owner);


// MJW START
public:
	void __fastcall Init_Tetris();
	void __fastcall PrintMsg(UnicodeString _str);
	void __fastcall PrintChat_Lobby(UnicodeString _str);

};
//---------------------------------------------------------------------------
extern PACKAGE TFormMain *FormMain;
//---------------------------------------------------------------------------
#endif
