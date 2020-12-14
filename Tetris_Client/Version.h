//---------------------------------------------------------------------------

#ifndef VersionH
#define VersionH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "AdvGlassButton.hpp"
#include "AdvSmoothPanel.hpp"
//---------------------------------------------------------------------------
class TFormVersion : public TForm
{
__published:	// IDE-managed Components
	TAdvSmoothPanel *_pnBase_01_Login;
	TLabel *lb_Title_Program;
	TLabel *lb_Version;
	TLabel *lb_Update_Date;
	TAdvGlassButton *btn_EXIT;
	TLabel *lb_Github_URL;
	void __fastcall btn_EXITClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormVersion(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormVersion *FormVersion;
//---------------------------------------------------------------------------
#endif
