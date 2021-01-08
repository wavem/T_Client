//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
USEFORM("SignUpDlg.cpp", FormSignUp);
USEFORM("Version.cpp", FormVersion);
USEFORM("Main.cpp", FormMain);
USEFORM("ResultDlg.cpp", FormGameResult);
USEFORM("MakingRoomDlg.cpp", FormMakingRoomDlg);
USEFORM("HelpDlg.cpp", Form1);
//---------------------------------------------------------------------------
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		Application->CreateForm(__classid(TFormMain), &FormMain);
		Application->CreateForm(__classid(TFormSignUp), &FormSignUp);
		Application->CreateForm(__classid(TFormVersion), &FormVersion);
		Application->CreateForm(__classid(TFormMakingRoomDlg), &FormMakingRoomDlg);
		Application->CreateForm(__classid(TFormGameResult), &FormGameResult);
		Application->CreateForm(__classid(TForm1), &Form1);
		Application->Run();
	}
	catch (Exception &exception)
	{
		Application->ShowException(&exception);
	}
	catch (...)
	{
		try
		{
			throw Exception("");
		}
		catch (Exception &exception)
		{
			Application->ShowException(&exception);
		}
	}
	return 0;
}
//---------------------------------------------------------------------------
