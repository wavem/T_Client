//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ResultDlg.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "AdvGlassButton"
#pragma link "AdvSmoothPanel"
#pragma resource "*.dfm"
TFormGameResult *FormGameResult;
//---------------------------------------------------------------------------
__fastcall TFormGameResult::TFormGameResult(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

__fastcall TFormGameResult::TFormGameResult(TComponent* Owner, int _mode)
	: TForm(Owner)
{
	if(_mode == 0) {
		// Win
		Notebook_GameResult->PageIndex = 0;
	} else {
		// Defeat
		Notebook_GameResult->PageIndex = 1;
	}
}
//---------------------------------------------------------------------------
void __fastcall TFormGameResult::btn_OK_WinClick(TObject *Sender)
{
	this->Close();
}
//---------------------------------------------------------------------------

void __fastcall TFormGameResult::btn_OK_DefeatClick(TObject *Sender)
{
	this->Close();
}
//---------------------------------------------------------------------------

