//---------------------------------------------------------------------------

#ifndef SignUpDlgH
#define SignUpDlgH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "AdvEdit.hpp"
#include "AdvGlassButton.hpp"
#include "AdvSmoothPanel.hpp"
//---------------------------------------------------------------------------
#include "Main.h"
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TFormSignUp : public TForm
{
__published:	// IDE-managed Components
	TAdvSmoothPanel *_pnBase_01_Login;
	TLabel *lb_Title_SignUp_ID;
	TLabel *lb_Title_SignUp_PW;
	TAdvEdit *ed_ID;
	TAdvEdit *ed_PW;
	TAdvGlassButton *btn_SignUp;
	TAdvGlassButton *btn_EXIT;
	TLabel *lb_Title_SignUp_UserName;
	TAdvEdit *ed_UserName;
	void __fastcall btn_EXITClick(TObject *Sender);
	void __fastcall btn_SignUpClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormSignUp(TComponent* Owner);

public: // Member Variables
	SIGNUPINFO m_SignUpInfo;

public: // Message Handler
	void __fastcall ReceiveSignUpResult(TMessage &_msg);

BEGIN_MESSAGE_MAP
	MESSAGE_HANDLER(MSG_TRY_TO_SIGNUP, TMessage, ReceiveSignUpResult)
END_MESSAGE_MAP(TForm)
};
//---------------------------------------------------------------------------
extern PACKAGE TFormSignUp *FormSignUp;
//---------------------------------------------------------------------------
#endif
