//---------------------------------------------------------------------------

#ifndef ResultDlgH
#define ResultDlgH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "AdvGlassButton.hpp"
#include "AdvSmoothPanel.hpp"
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TFormGameResult : public TForm
{
__published:	// IDE-managed Components
	TNotebook *Notebook_GameResult;
	TAdvSmoothPanel *_pnBase_01_Win;
	TLabel *lb_Title_Win;
	TAdvGlassButton *btn_OK_Win;
	TAdvSmoothPanel *_pnBase_02_Defeat;
	TLabel *lb_Title_Defeat;
	TAdvGlassButton *btn_OK_Defeat;
	void __fastcall btn_OK_WinClick(TObject *Sender);
	void __fastcall btn_OK_DefeatClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormGameResult(TComponent* Owner);
	__fastcall TFormGameResult(TComponent* Owner, int _mode);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormGameResult *FormGameResult;
//---------------------------------------------------------------------------
#endif
