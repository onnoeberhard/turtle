//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Anmeldun.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
TStringList *Kennwort;
TStringList *name;
TStringList *Anmeldung;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
        if(RadioButton1->Checked)
        {
                if((MaskEdit1->Text != MaskEdit2->Text) && !((MaskEdit1->Text.Length() < 1)||MaskEdit2->Text.Length() < 1))
                {
                        Application->MessageBoxA("Die Kennwörter stimmen leider nicht mit enander überein.", "Kennwort", 0);
                }
                else if(MaskEdit1->Text.Length() < 1)
                {
                        Application->MessageBoxA("Bitte Kenwort eingeben", "Kenwort", 0);
                }
                else if(MaskEdit2->Text.Length() < 1)
                {
                        Application->MessageBoxA("Bitte Kenwort wiederholen", "Kenwort", 0);
                }
                else if(Edit1->Text.Length() < 1)
                {
                        Application->MessageBoxA("Bitte Namen eingeben", "Name", 0);
                }
                else
                {
                        Kennwort = new TStringList;
                        Kennwort->LoadFromFile("Kennwort.txt");
                        Kennwort->Text = "";
                        Kennwort->Add(MaskEdit1->Text);
                        Kennwort->SaveToFile("Kennwort.txt");
                        name = new TStringList;
                        name->LoadFromFile("Name.txt");
                        name->Text = "";
                        name->Add(Edit1->Text);
                        name->SaveToFile("Name.txt");
                        Anmeldung = new TStringList;
                        Anmeldung->LoadFromFile("Anmeldung.txt");
                        Anmeldung->Text = "";
                        Anmeldung->Add("Anmeldung erfolgreich");
                        Anmeldung->SaveToFile("Anmeldung.txt");
                        ShellExecute(Handle,NULL,"OSP1.exe",NULL, NULL, SW_NORMAL);
                        Application->Terminate();
                }

        }
        if(RadioButton2->Checked)
        {
                if(Edit2->Text.Length() < 1)
                {
                        Application->MessageBoxA("Bitte Namen eingeben", "Name nicht eingetragen", 0);
                }
                else
                {
                        Kennwort = new TStringList;
                        Kennwort->LoadFromFile("Kennwort.txt");
                        Kennwort->Text = "";
                        Kennwort->Add(MaskEdit1->Text);
                        Kennwort->SaveToFile("Kennwort.txt");
                        name = new TStringList;
                        name->LoadFromFile("Name.txt");
                        name->Text = "";
                        name->Add(Edit1->Text);
                        name->SaveToFile("Name.txt");
                        Anmeldung = new TStringList;
                        Anmeldung->LoadFromFile("Anmeldung.txt");
                        Anmeldung->Text = "";
                        Anmeldung->Add("Anmeldung erfolgreich");
                        Anmeldung->SaveToFile("Anmeldung.txt");
                        ShellExecute(Handle,NULL,"OSP1.exe",NULL, NULL, SW_NORMAL);
                        Application->Terminate();
                }
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::RadioButton1Click(TObject *Sender)
{
        Panel1->Enabled = true;
        Button1->Enabled = true;
        Panel2->Enabled = false;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::RadioButton2Click(TObject *Sender)
{
        Panel2->Enabled = true;
        Button1->Enabled = true;
        Panel1->Enabled = false;
}
//---------------------------------------------------------------------------


