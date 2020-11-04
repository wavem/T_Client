//---------------------------------------------------------------------------

#ifndef MainH
#define MainH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TFormMain : public TForm
{
__published:	// IDE-managed Components
	TPanel *__pnBase;
	TNotebook *Notebook_Main;
	TPanel *_pnBase_01_Login;
	TPanel *_pnBase_03_Game;
	TPanel *_pnBase_02_Lobby;
	TButton *btn_Enter;
	void __fastcall btn_EnterClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormMain(TComponent* Owner);


// MJW START
public:
	void __fastcall Init_Tetris();
	void __fastcall PrintMsg(UnicodeString _str);

};
//---------------------------------------------------------------------------
extern PACKAGE TFormMain *FormMain;
//---------------------------------------------------------------------------
#endif
