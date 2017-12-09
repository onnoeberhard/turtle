//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "turtling.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
TStringList *Anmeldung;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormCreate(TObject *Sender)
{
        Anmeldung = new TStringList;
        Anmeldung->LoadFromFile("Anmeldung.txt");
        if(Anmeldung->Text.Length()-1 <= 0)
        {
                ShellExecute(Handle,NULL,"Anmeldung.exe",NULL, NULL, SW_NORMAL);
                Application->Terminate();
        }
        else
        {
                ShellExecute(Handle,NULL,"OSP1.exe",NULL, NULL, SW_NORMAL);
                Application->Terminate();
        }
}
//---------------------------------------------------------------------------
