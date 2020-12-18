//---------------------------------------------------------------------------

#ifndef MakingRoomDlgH
#define MakingRoomDlgH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "AdvEdit.hpp"
#include "AdvGlassButton.hpp"
#include "AdvSmoothPanel.hpp"
#include "AdvSmoothComboBox.hpp"
#include "AdvSmoothListBox.hpp"
//---------------------------------------------------------------------------
class TFormMakingRoomDlg : public TForm
{
__published:	// IDE-managed Components
	TAdvSmoothPanel *_pnBase_01_MakingRoom;
	TLabel *lb_Title_MakingRoom_Title;
	TLabel *lb_Title_MakingRoom_TeamType;
	TLabel *lb_Title_MakingRoom_ItemType;
	TAdvEdit *ed_ID;
	TAdvGlassButton *btn_MakeRoom;
	TAdvGlassButton *btn_EXIT;
	TAdvSmoothComboBox *cb_Team;
	TAdvSmoothComboBox *cb_Item;
	void __fastcall btn_EXITClick(TObject *Sender);
	void __fastcall btn_MakeRoomClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormMakingRoomDlg(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormMakingRoomDlg *FormMakingRoomDlg;
//---------------------------------------------------------------------------
#endif
