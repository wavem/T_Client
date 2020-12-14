//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Version.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "AdvGlassButton"
#pragma link "AdvSmoothPanel"
#pragma resource "*.dfm"
TFormVersion *FormVersion;
//---------------------------------------------------------------------------
__fastcall TFormVersion::TFormVersion(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TFormVersion::btn_EXITClick(TObject *Sender)
{
	this->Close();
}
//---------------------------------------------------------------------------
