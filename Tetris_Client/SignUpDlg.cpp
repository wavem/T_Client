//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "SignUpDlg.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "AdvEdit"
#pragma link "AdvGlassButton"
#pragma link "AdvSmoothPanel"
#pragma resource "*.dfm"
TFormSignUp *FormSignUp;
//---------------------------------------------------------------------------
__fastcall TFormSignUp::TFormSignUp(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TFormSignUp::btn_EXITClick(TObject *Sender)
{
	this->Close();
}
//---------------------------------------------------------------------------

void __fastcall TFormSignUp::btn_SignUpClick(TObject *Sender)
{
	this->Close();
}
//---------------------------------------------------------------------------
