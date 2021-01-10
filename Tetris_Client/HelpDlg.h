//---------------------------------------------------------------------------

#ifndef HelpDlgH
#define HelpDlgH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "AdvGlassButton.hpp"
#include "AdvSmoothPanel.hpp"
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TFormHelp : public TForm
{
__published:	// IDE-managed Components
	TPanel *__pnBase_Help;
	TNotebook *Notebook_Help;
	TAdvSmoothPanel *_pnBase_01_Control;
	TLabel *lb_Title_Defeat;
	TAdvGlassButton *btn_OK_Defeat;
	TAdvSmoothPanel *_pnBase_02_Level;
	TLabel *Label1;
	TAdvGlassButton *AdvGlassButton1;
	TAdvSmoothPanel *_pnBase_02_Item;
	TLabel *Label3;
	TAdvGlassButton *AdvGlassButton3;
	TAdvGlassButton *AdvGlassButton2;
	TAdvGlassButton *AdvGlassButton4;
	TAdvGlassButton *AdvGlassButton5;
	TAdvSmoothPanel *_pnBase_03_Tip;
	TLabel *Label2;
	TAdvGlassButton *AdvGlassButton6;
	TAdvGlassButton *AdvGlassButton7;
private:	// User declarations
public:		// User declarations
	__fastcall TFormHelp(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormHelp *FormHelp;
//---------------------------------------------------------------------------
#endif
