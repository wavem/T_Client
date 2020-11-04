//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormMain *FormMain;
//---------------------------------------------------------------------------
__fastcall TFormMain::TFormMain(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Init_Tetris() {

}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintMsg(UnicodeString _str) {

}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_EnterClick(TObject *Sender)
{
	Notebook_Main->PageIndex = 1; // Lobby
}
//---------------------------------------------------------------------------

