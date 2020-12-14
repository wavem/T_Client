//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "AdvGrid"
#pragma link "AdvObj"
#pragma link "BaseGrid"
#pragma link "cxButtons"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxSkinBlack"
#pragma link "dxSkinBlue"
#pragma link "dxSkinBlueprint"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinCoffee"
#pragma link "dxSkinDarkRoom"
#pragma link "dxSkinDarkSide"
#pragma link "dxSkinDevExpressDarkStyle"
#pragma link "dxSkinDevExpressStyle"
#pragma link "dxSkinFoggy"
#pragma link "dxSkinGlassOceans"
#pragma link "dxSkinHighContrast"
#pragma link "dxSkiniMaginary"
#pragma link "dxSkinLilian"
#pragma link "dxSkinLiquidSky"
#pragma link "dxSkinLondonLiquidSky"
#pragma link "dxSkinMcSkin"
#pragma link "dxSkinMetropolis"
#pragma link "dxSkinMetropolisDark"
#pragma link "dxSkinMoneyTwins"
#pragma link "dxSkinOffice2007Black"
#pragma link "dxSkinOffice2007Blue"
#pragma link "dxSkinOffice2007Green"
#pragma link "dxSkinOffice2007Pink"
#pragma link "dxSkinOffice2007Silver"
#pragma link "dxSkinOffice2010Black"
#pragma link "dxSkinOffice2010Blue"
#pragma link "dxSkinOffice2010Silver"
#pragma link "dxSkinOffice2013DarkGray"
#pragma link "dxSkinOffice2013LightGray"
#pragma link "dxSkinOffice2013White"
#pragma link "dxSkinPumpkin"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsDefaultPainters"
#pragma link "dxSkinSeven"
#pragma link "dxSkinSevenClassic"
#pragma link "dxSkinSharp"
#pragma link "dxSkinSharpPlus"
#pragma link "dxSkinSilver"
#pragma link "dxSkinSpringTime"
#pragma link "dxSkinStardust"
#pragma link "dxSkinSummer2008"
#pragma link "dxSkinTheAsphaltWorld"
#pragma link "dxSkinValentine"
#pragma link "dxSkinVisualStudio2013Blue"
#pragma link "dxSkinVisualStudio2013Dark"
#pragma link "dxSkinVisualStudio2013Light"
#pragma link "dxSkinVS2010"
#pragma link "dxSkinWhiteprint"
#pragma link "dxSkinXmas2008Blue"
#pragma link "AdvSmoothPanel"
#pragma link "AdvGlassButton"
#pragma link "AdvMemo"
#pragma link "AdvSmoothButton"
#pragma link "AdvEdit"
#pragma link "AdvScrollBox"
#pragma resource "*.dfm"
TFormMain *FormMain;
//---------------------------------------------------------------------------
__fastcall TFormMain::TFormMain(TComponent* Owner)
	: TForm(Owner)
{
	InitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::InitProgram() {

	// SETTING START PAGE
	Notebook_Main->PageIndex = 0; // LOGIN

	// Setting Room Grid (TEST)
	grid_Room->Cells[0][0] = L"1";
	grid_Room->Cells[1][0] = L"대기중";
	grid_Room->Cells[2][0] = L"개인전";
	grid_Room->Cells[3][0] = L"아템전";
	grid_Room->Cells[4][0] = L"강북중학교 동창들 고수만 모여라";
	grid_Room->Cells[5][0] = L"fenix12345dark";
	grid_Room->Cells[6][0] = L"2/6";
	grid_Room->Cells[7][0] = L"공개";
	grid_Room->AddButton(8, 0, 50, 24, L"입장", haCenter, Advgrid::vaCenter); // View

	grid_PlayerList->Cells[0][0] = L"1";
	grid_PlayerList->Cells[1][0] = L"fenix24";
	grid_PlayerList->Cells[2][0] = L"하수";
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::FormClose(TObject *Sender, TCloseAction &Action)
{
	ExitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ExitProgram() {

}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintMsg(UnicodeString _str) {

}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintChat_Lobby(UnicodeString _str) {
	int t_Idx = chat->Lines->Add(_str);
	chat->SetCursor(0, t_Idx);
}
//---------------------------------------------------------------------------


void __fastcall TFormMain::btn_LogOutClick(TObject *Sender)
{
	Notebook_Main->PageIndex = 0; // GAME
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_LoginClick(TObject *Sender)
{
	// Button Login
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_SignUpClick(TObject *Sender)
{
	// Button Sign Up
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_SingleModeClick(TObject *Sender)
{
	// Button Single Mode
	Notebook_Main->PageIndex = 1; // Lobby
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_InformationClick(TObject *Sender)
{
	// Button Information
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_Login_QuitClick(TObject *Sender)
{
	// Button Quit in Login Screen
	FormMain->Close();
	//Application->Terminate();
}
//---------------------------------------------------------------------------
void __fastcall TFormMain::btn_EnterClick(TObject *Sender)
{
	Notebook_Main->PageIndex = 2; // GAME
}
//---------------------------------------------------------------------------
