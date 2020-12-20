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
	// Pre-Return
	if(ed_Title->Text == L"") {
		Application->MessageBoxW(L"Please Input Game Room Title", L"Creating Room", MB_OK | MB_ICONERROR);
		return;
	}

	// Extract User Information
	m_MakingRoomInfo.Title = ed_Title->Text;
	m_MakingRoomInfo.TeamType = cb_Team->SelectedItemIndex;
	m_MakingRoomInfo.ItemType = cb_Item->SelectedItemIndex;
	PostMessage(FormMain->Handle, MSG_TRY_TO_MAKING_ROOM, (unsigned int)&m_MakingRoomInfo, 0x10);
}
//---------------------------------------------------------------------------

void __fastcall TFormMakingRoomDlg::ReceiveMakingRoomResult(TMessage &_msg) {

	// Common
	UnicodeString tempStr = L"";
	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam;
	int* p_rst = NULL;
	int t_rst = 0;

	// Extract Message
	p_rst = (int*)t_wParam;
	t_rst = *p_rst;

	if(t_rst == ERR_MAKING_ROOM_SUCCESS) {
		FormMain->btn_StartGame->Enabled = true;
		FormMain->memo_Chat_Game->Clear();
		FormMain->ed_Chat_InGame->Text = L"";
		FormMain->Notebook_Main->PageIndex = 2; // Enter Game Room
		this->Close();
	} else {
		Application->MessageBoxW(L"Fail to create room", L"Creating Room", MB_OK | MB_ICONERROR);
	}
}
//---------------------------------------------------------------------------
