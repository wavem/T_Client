//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MakingRoomDlg.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "AdvEdit"
#pragma link "AdvGlassButton"
#pragma link "AdvSmoothPanel"
#pragma link "AdvSmoothComboBox"
#pragma link "AdvSmoothListBox"
#pragma resource "*.dfm"
TFormMakingRoomDlg *FormMakingRoomDlg;
//---------------------------------------------------------------------------
__fastcall TFormMakingRoomDlg::TFormMakingRoomDlg(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TFormMakingRoomDlg::btn_EXITClick(TObject *Sender)
{
	this->Close();
}
//---------------------------------------------------------------------------

void __fastcall TFormMakingRoomDlg::btn_MakeRoomClick(TObject *Sender)
{
	this->Close();
}
//---------------------------------------------------------------------------
