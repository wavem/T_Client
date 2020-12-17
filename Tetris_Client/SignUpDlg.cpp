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
	// Pre-Return
	if(ed_ID->Text == L"" || ed_PW->Text == L"" || ed_UserName->Text == L"") {
		Application->MessageBoxW(L"Please Input All Information", L"Sign Up", MB_OK | MB_ICONERROR);
		return;
	}

	// Extract User Information
	m_SignUpInfo.ID = ed_ID->Text;
	m_SignUpInfo.PW = ed_PW->Text;
	m_SignUpInfo.UserName = ed_UserName->Text;

	PostMessage(FormMain->Handle, MSG_TRY_TO_SIGNUP, (unsigned int)&m_SignUpInfo, 0x10);
}
//---------------------------------------------------------------------------

void __fastcall TFormSignUp::ReceiveSignUpResult(TMessage &_msg) {

	// Common
	UnicodeString tempStr = L"";
	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam;
	int* p_rst = NULL;
	int t_rst = 0;

	// Extract Message
	p_rst = (int*)t_wParam;
	t_rst = *p_rst;

	switch(t_rst) {
	case ERR_SIGNUP_SUCCESS:
		Application->MessageBoxW(L"Complete. Please Log-In with your New ID/PW", L"Sign Up", MB_OK | MB_ICONINFORMATION);
		this->Close();
		break;
	case ERR_SIGNUP_SOCKET_ERR:
		Application->MessageBoxW(L"Socket Error. Please Restart Program", L"Sign Up", MB_OK | MB_ICONERROR);
		this->Close();
		break;
	case ERR_SIGNUP_THREAD_ERR:
		Application->MessageBoxW(L"Client Thread Error. Please Restart Program", L"Sign Up", MB_OK | MB_ICONERROR);
		this->Close();
		break;
	case ERR_SIGNUP_COMM_FAULT:
		Application->MessageBoxW(L"Communication Error. Please Restart Program", L"Sign Up", MB_OK | MB_ICONERROR);
		this->Close();
		break;
	case ERR_SIGNUP_ID_DUPLICATED:
		Application->MessageBoxW(L"ID is duplicated. Please Try again with new ID", L"Sign Up", MB_OK | MB_ICONINFORMATION);
		break;
	case ERR_SIGNUP_UNKNOWN:
		Application->MessageBoxW(L"Unknown Error. Please Restart Program", L"Sign Up", MB_OK | MB_ICONERROR);
		this->Close();
		break;
	default:
		Application->MessageBoxW(L"Error. Please Restart Program", L"Sign Up", MB_OK | MB_ICONERROR);
		this->Close();
		break;
	}
	//int t_result = Application->MessageBoxW(L"Are you sure you want to upload TCMS software?", L"TCMS Update", MB_YESNO | MB_ICONQUESTION);
	//if(t_result == IDNO) return;
}
//---------------------------------------------------------------------------
