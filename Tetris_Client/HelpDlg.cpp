//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "HelpDlg.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "AdvGlassButton"
#pragma link "AdvSmoothPanel"
#pragma link "dxGDIPlusClasses"
#pragma resource "*.dfm"
TFormHelp *FormHelp;
//---------------------------------------------------------------------------
__fastcall TFormHelp::TFormHelp(TComponent* Owner)
	: TForm(Owner)
{
	Notebook_Help->PageIndex = 0; // Default Setting
}
//---------------------------------------------------------------------------

void __fastcall TFormHelp::ClickPageButton(TObject *Sender)
{
	int t_Tag = ((TAdvGlassButton*)Sender)->Tag;
	Notebook_Help->PageIndex = t_Tag;
}
//---------------------------------------------------------------------------

void __fastcall TFormHelp::btn_EXITClick(TObject *Sender)
{
	this->Close();
}
//---------------------------------------------------------------------------
