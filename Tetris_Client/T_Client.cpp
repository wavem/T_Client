//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
USEFORM("Version.cpp", FormVersion);
USEFORM("SignUpDlg.cpp", FormSignUp);
USEFORM("MakingRoomDlg.cpp", FormMakingRoomDlg);
USEFORM("Main.cpp", FormMain);
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
