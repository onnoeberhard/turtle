//---------------------------------------------------------------------------

#include <vcl.h>
#include <io.h>
#include <string.h>
#include <stdio.h>
#include <fcntl.h>
#pragma hdrstop

#include "OS1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "PERFGRAP"
#pragma link "SHDocVw_OCX"
#pragma resource "*.dfm"
TForm1 *Form1;
String Kennung;
String Datei;
String Typ;
String Art;
String Zeit;
String Datum;
int Dateigroesse1;
String Dateigroesse;
const char* Dat;
const char* Mus;
TCursor Cur;
const crMyCursor = 5;
TStringList *Txet;
TStringList *Tble;
TStringList *Kenlis;
int Kenlan;
TStringList *Kenein;
String PMM;
String PMN;
String PMV;
String PMT;
String PMB;
String PMW;
bool Mp = false;
bool Vp = false;
String Ma;
TStringList *Musa;
TStringList *Musad;
TStringList *Tesa;
TStringList *Tblsa;
TStringList *Bisa;
TStringList *Visa;
TStringList *Home;
int mpp;
int vpp;
String Homes;
String Da = "";
String TxDa;
String TblDa;
String ImDa;
String Pfad;
String Pfad2;
String UrPfad;
bool PMMB = false;
bool PMTB = false;
bool PMVB = false;
bool PMTBB = false;
bool PMIB = false;
bool PMWB = false;
bool PMOB = false;
bool PMEB = false;
bool PMFB = false;
bool PMSB = false;
bool PMKMB = false;
bool PMKTB = false;
bool PMKVB = false;
bool PMKTBB = false;
bool PMKIB = false;
bool MuBo = false;
int Mui = 0;
int Muan;
String MuTi;
String MusTi;
String MusiTi;
String QDat;
bool CE = false;
String VH;
int hoch;
int breit;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
        Position();
        UrPfad = OpBox->Directory+"\\";
        Kenlis = new TStringList;
        Kenlis->LoadFromFile(UrPfad+"Kennwort.txt");
        Kenlan = Kenlis->Text.Length()-1;
        Label2->Caption = OpDaBox->Drive;
        Label4->Caption = OpDaBox->Count;
        Label6->Caption = OpBox->Count;
        TblDis->Options << goEditing;
        MedPlay->TimeFormat = tfHMS;
        MedPlayVid->TimeFormat = tfHMS;
        if(Kenlan <= 0)
        {
         CodeDis->Visible = false;
         OpBox->Visible = true;
         OpDaBox->Visible = true;
         InfBox->Visible = true;
         OpBox->Directory = "D:\\Informatik\\Testfiles\\TESTDATEIEN\\";
        }
        /*Screen->Cursors[crMyCursor] = LoadCursor(HInstance, "NEWCURSOR");
        Cursor = crMyCursor;*/
        //RichEdit1->Text = ViewCtl1->
        //PerformanceGraph1->DataPoint(clWhite, 20);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Position()
{
        Form1->Height = Screen->Height;
        Form1->Width = Screen->Width;
        hoch = Form1->Height;
        breit = Form1->Width;
        SaDaIm->Left = (breit)-(SaDaIm->Width)-(ExDaIm->Width);
        SaDaIm->Top = 0;
        OpIm->Left = (breit)-(OpIm->Width);
        OpIm->Top = ExDaIm->Height;
        AdressBox->Left = (breit/2)-(AdressBox->Width/2);
        AdressBox->Top = (hoch/2)-(AdressBox->Height/2);
        auspan->Left = (breit/2)-(auspan->Width/2);
        auspan->Top = (hoch/2)-(auspan->Height/2);
        CodeDis->Left = (breit/2)-(CodeDis->Width/2);
        CodeDis->Top = (hoch/2)-(CodeDis->Height/2);
        CurDis->Left = (breit/2)-(CurDis->Width/2);
        CurDis->Top = (hoch/2)-(CurDis->Height/2);
        while(CurDis->Top <= SaDaIm->Height-5)
        {
         CurDis->Height--;
         CurDis->Left = (breit/2)-(CurDis->Width/2);
         CurDis->Top = (hoch/2)-(CurDis->Height/2);
        }
        while(CurDis->Left+CurDis->Width >= OpIm->Left-5)
        {
         CurDis->Width--;
         CurDis->Left = (breit/2)-(CurDis->Width/2);
         CurDis->Top = (hoch/2)-(CurDis->Height/2);
        }
        DaTiLab->Left = (breit/2)-(DaTiLab->Width/2);
        DaTiLab->Top = 5;
        ExBut->Left = (breit/2)-(ExBut->Width/2);
        ExBut->Top = (hoch/2)-(ExBut->Height/2);
        ExDaIm->Left = (breit)-(ExDaIm->Width);
        ExDaIm->Top = 0;
        ImDis->Width = breit;
        ImDis->Height = hoch;
        ImDis->Left = (breit/2)-(ImDis->Width/2);
        ImDis->Top = (hoch/2)-(ImDis->Height/2);
        /*bgPan->Width = breit;
        bgPan->Height = hoch;
        bgPan->Left = (breit/2)-(bgPan->Width/2);
        bgPan->Top = (hoch/2)-(bgPan->Height/2);
        bgImage->Width = breit;
        bgImage->Height = hoch;
        bgImage->Left = (breit/2)-(bgImage->Width/2);
        bgImage->Top = (hoch/2)-(bgImage->Height/2);*/
        InfBox->Left = (breit)-(InfBox->Width);
        InfBox->Top = (hoch)-(InfBox->Height);
        InfDaBox->Left = (breit/2)-(InfDaBox->Width/2);
        InfDaBox->Top = (hoch/2)-(InfDaBox->Height/2);
        Internet->Height = hoch;
        Internet->Width = breit;
        Internet->Left = (breit/2)-(Internet->Width/2);
        Internet->Top = (hoch/2)-(Internet->Height/2);
        IntDis->Height = hoch;
        IntDis->Width = breit;
        IntDis->Left = (breit/2)-(IntDis->Width/2);
        IntDis->Top = (hoch/2)-(IntDis->Height/2);
        while(IntDis->Top <= SaDaIm->Height-5)
        {
         IntDis->Height--;
         IntDis->Left = (breit/2)-(IntDis->Width/2);
         IntDis->Top = (hoch/2)-(IntDis->Height/2);
        }
        while(IntDis->Left+IntDis->Width >= OpIm->Left-5)
        {
         IntDis->Width--;
         IntDis->Left = (breit/2)-(IntDis->Width/2);
         IntDis->Top = (hoch/2)-(IntDis->Height/2);
        }
        GoBut->Left = IntDis->Width-GoBut->Width*1.2;
        GoBut->Top = GoBut->Height*0.2;
        CmbUrl->Width = IntDis->Width-10-GoBut->Width*1.4;
        CmbUrl->Left = 10;
        CmbUrl->Top = GoBut->Height*0.3;
        WebPan->Height = IntDis->Height - GoBut->Height*1.4;
        WebPan->Width = IntDis->Width;
        WebPan->Left = 0;
        WebPan->Top = GoBut->Height*1.4;
        WebDis->Height = WebPan->Height;
        WebDis->Width = WebPan->Width;
        WebDis->Left = 0;
        WebDis->Top = 0;
        Mail->Height = hoch;
        Mail->Width = breit;
        Mail->Left = (breit/2)-(Mail->Width/2);
        Mail->Top = (hoch/2)-(Mail->Height/2);
        while(Mail->Top <= SaDaIm->Height-5)
        {
         Mail->Height--;
         Mail->Left = (breit/2)-(Mail->Width/2);
         Mail->Top = (hoch/2)-(Mail->Height/2);
        }
        while(Mail->Left+Mail->Width >= OpIm->Left-5)
        {
         Mail->Width--;
         Mail->Left = (breit/2)-(Mail->Width/2);
         Mail->Top = (hoch/2)-(Mail->Height/2);
        }
        MesBox->Left = (breit/2)-(MesBox->Width/2);
        MesBox->Top = (hoch/2)-(MesBox->Height/2);
        Musik->Height = hoch;
        Musik->Width = breit;
        Musik->Left = 0;
        Musik->Top = 0;
        MedDis->Height = hoch;
        MedDis->Width = breit;
        MedDis->Left = (breit/2)-(MedDis->Width/2);
        MedDis->Top = (SaDaIm->Height/2)+3;
        while(MedDis->Top+MedDis->Height > hoch-SaDaIm->Height*1.5)
        {
         MedDis->Height--;
         MedDis->Top = (SaDaIm->Height/2)+3;
        }
        while(MedDis->Left+MedDis->Width >= OpIm->Left-5)
        {
         MedDis->Width--;
         MedDis->Left = (breit/2)-(MedDis->Width/2);
        }
        CovIm->Left = (MedDis->Width/2)-(CovIm->Width/2);
        CovIm->Top = (MedDis->Height/2)-(CovIm->Height/2);
        MedTraBar->Left = (breit/2)-(MedTraBar->Width/2);
        MedTraBar->Top = (MedDis->Top)+(MedDis->Height)+10;
        MedPlay->Left = (breit/2)-(MedPlay->Width/2);
        MedPlay->Top = (MedTraBar->Top)+(MedTraBar->Height)+3;
        Video->Height = hoch;
        Video->Width = breit;
        Video->Left = 0;
        Video->Top = 0;
        VidDis->Height = hoch;
        VidDis->Width = breit;
        VidDis->Left = (breit/2)-(VidDis->Width/2);
        VidDis->Top = (SaDaIm->Height/2)+3;
        while(VidDis->Top+VidDis->Height > hoch-SaDaIm->Height*1.5)
        {
         VidDis->Height--;
         VidDis->Top = (SaDaIm->Height/2)+3;
        }
        while(VidDis->Left+VidDis->Width >= OpIm->Left-5)
        {
         VidDis->Width--;
         VidDis->Left = (breit/2)-(VidDis->Width/2);
        }
        VideoDis->Height = VidDis->Height;
        VideoDis->Width = VidDis->Width;
        VideoDis->Left = (VidDis->Width/2)-(VideoDis->Width/2);
        VideoDis->Top = (VidDis->Height/2)-(VideoDis->Height/2);
        VidTraBar->Left = (breit/2)-(VidTraBar->Width/2);
        VidTraBar->Top = (VidDis->Top)+(VidDis->Height)+10;
        MedPlayVid->Left = (breit/2)-(MedPlayVid->Width/2);
        MedPlayVid->Top = (VidTraBar->Top)+(VidTraBar->Height)+3;
        OpBox->Height = hoch;
        OpBox->Width = breit/2;
        OpBox->Left = 0;
        OpBox->Top = 0;
        OpDaBox->Height = hoch;
        OpDaBox->Width = breit/2;
        OpDaBox->Left = (breit/2);
        OpDaBox->Top = 0;
        OpErBox->Left = (breit/2)-(OpErBox->Width/2);
        OpErBox->Top = (hoch/2)-(OpErBox->Height/2);
        PartDis->Left = (breit/2)-(PartDis->Width/2);
        PartDis->Top = (hoch/2)-(PartDis->Height/2);
        ProgMan->Left = (breit/2)-(ProgMan->Width/2);
        ProgMan->Top = (hoch/2)-(ProgMan->Height/2);
        ProgManKl->Left = ProgMan->Left;
        ProgManKl->Top = ProgMan->Top;
        SysDis->Left = (breit/2)-(SysDis->Width/2);
        SysDis->Top = (hoch/2)-(SysDis->Height/2);
        while(SysDis->Top <= SaDaIm->Height-5)
        {
         SysDis->Height--;
         SysDis->Left = (breit/2)-(SysDis->Width/2);
         SysDis->Top = (hoch/2)-(SysDis->Height/2);
        }
        while(SysDis->Left+SysDis->Width >= OpIm->Left-5)
        {
         SysDis->Width--;
         SysDis->Left = (breit/2)-(SysDis->Width/2);
         SysDis->Top = (hoch/2)-(SysDis->Height/2);
        }
        TblDis->Left = (breit/2)-(TblDis->Width/2);
        TblDis->Top = (hoch/2)-(TblDis->Height/2);
        while(TblDis->Top <= SaDaIm->Height-5)
        {
         TblDis->Height--;
         TblDis->Left = (breit/2)-(TblDis->Width/2);
         TblDis->Top = (hoch/2)-(TblDis->Height/2);
        }
        while(TblDis->Left+TblDis->Width >= OpIm->Left-5)
        {
         TblDis->Width--;
         TblDis->Left = (breit/2)-(TblDis->Width/2);
         TblDis->Top = (hoch/2)-(TblDis->Height/2);
        }
        Text->Height = hoch;
        Text->Width = breit;
        Text->Left = (breit/2)-(Text->Width/2);
        Text->Top = (hoch/2)-(Text->Height/2);
        TxDis->Height = hoch;
        TxDis->Width = breit;
        TxDis->Left = (breit/2)-(TxDis->Width/2);
        TxDis->Top = (hoch/2)-(TxDis->Height/2);
        while(TxDis->Top <= SaDaIm->Height-5)
        {
         TxDis->Height--;
         TxDis->Left = (breit/2)-(TxDis->Width/2);
         TxDis->Top = (hoch/2)-(TxDis->Height/2);
        }
        while(TxDis->Left+TxDis->Width >= OpIm->Left-5)
        {
         TxDis->Width--;
         TxDis->Left = (breit/2)-(TxDis->Width/2);
         TxDis->Top = (hoch/2)-(TxDis->Height/2);
        }
        TimeDis->Left = (breit/2)-(TimeDis->Width/2);
        TimeDis->Top = (hoch/5)-(TimeDis->Height/2);
        ZExBut->Left = (breit/2)-(ZExBut->Width/2);
        ZExBut->Top = (hoch/2)-(ZExBut->Height/2)+(ExBut->Height/2)+30;
        MuDaTiLab->Left = (breit/2)-(DaTiLab->Width/2);
        MuDaTiLab->Top = 5;
        MuExDaIm->Left = (breit)-(ExDaIm->Width);
        MuExDaIm->Top = 0;
        MuOpIm->Left = (breit)-(OpIm->Width);
        MuOpIm->Top = ExDaIm->Height;
        TxDaTiLab->Left = (breit/2)-(DaTiLab->Width/2);
        TxDaTiLab->Top = 5;
        TxExDaIm->Left = (breit)-(ExDaIm->Width);
        TxExDaIm->Top = 0;
        TxSaDaIm->Left = (ExDaIm->Left)-(SaDaIm->Width);
        TxSaDaIm->Top = 0;
        FontIm->Left = (SaDaIm->Left)-(FontIm->Width);
        FontIm->Top = 0;
        DD->Left = (FontIm->Left)-(DD->Width);
        DD->Top = 10;
        UU->Left = (DD->Left)-(UU->Width);
        UU->Top = 10;
        KK->Left = (UU->Left)-(KK->Width);
        KK->Top = 10;
        FF->Left = (KK->Left)-(FF->Width);
        FF->Top = 10;
        TxOpIm->Left = (breit)-(OpIm->Width);
        TxOpIm->Top = ExDaIm->Height;
        ViDaTiLab->Left = (breit/2)-(DaTiLab->Width/2);
        ViDaTiLab->Top = 5;
        ViExDaIm->Left = (breit)-(ExDaIm->Width);
        ViExDaIm->Top = 0;
        ViOpIm->Left = (breit)-(OpIm->Width);
        ViOpIm->Top = ExDaIm->Height;
        DaTiLab->Left = (breit/2)-(DaTiLab->Width/2);
        DaTiLab->Top = 5;
        ExDaIm->Left = (breit)-(ExDaIm->Width);
        ExDaIm->Top = 0;
        SaDaIm->Left = (breit)-(SaDaIm->Width)-(ExDaIm->Width);
        SaDaIm->Top = 0;
        OpIm->Left = (breit)-(OpIm->Width);
        OpIm->Top = ExDaIm->Height;
        DaTiLab->Left = (breit/2)-(DaTiLab->Width/2);
        DaTiLab->Top = 5;
        ExDaIm->Left = (breit)-(ExDaIm->Width);
        ExDaIm->Top = 0;
        SaDaIm->Left = (breit)-(SaDaIm->Width)-(ExDaIm->Width);
        SaDaIm->Top = 0;
        OpIm->Left = (breit)-(OpIm->Width);
        OpIm->Top = ExDaIm->Height;
        DaTiLab->Left = (breit/2)-(DaTiLab->Width/2);
        DaTiLab->Top = 5;
        ExDaIm->Left = (breit)-(ExDaIm->Width);
        ExDaIm->Top = 0;
        SaDaIm->Left = (breit)-(SaDaIm->Width)-(ExDaIm->Width);
        SaDaIm->Top = 0;
        OpIm->Left = (breit)-(OpIm->Width);
        OpIm->Top = ExDaIm->Height;
        return;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::O1Click(TObject *Sender)
{
        //OpenDialog1->Execute();
        OpBox->Visible = true;
        OpDaBox->Visible = true;
        InfBox->Visible = true;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::B1Click(TObject *Sender)
{
        //ExBut->Visible = true;
        //ZExBut->Visible = true;
	auspan->Visible = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ExButClick(TObject *Sender)
{
        Application->Terminate();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ZExButClick(TObject *Sender)
{
        ExBut->Visible = false;
        ZExBut->Visible = false;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::OpBoxChange(TObject *Sender)
{
//        Label4->Caption = OpDaBox->Count;
        Label6->Caption = OpBox->Count-1;
        //Edit4->Text = OpBox->Directory;
        Pfad = OpBox->Directory;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::I1Click(TObject *Sender)
{
        Dateigroesse1 = open(Dat, O_CREAT);
        Dateigroesse = IntToStr(filelength(Dateigroesse1));
        InfDaBox->Visible = true;
        Label10->Caption = Datei;
        Label12->Caption = Kennung;
        Label14->Caption = Typ;
        Label16->Caption = Art;
        Label18->Caption = Dateigroesse+"  Byte";
        Label20->Caption = OpDaBox->Directory;
        Label22->Caption = OpDaBox->Drive;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::OpDaBoxDblClick(TObject *Sender)
{
        Datei = OpDaBox->FileName;
        Dat = Datei.c_str();
        Kennung = LowerCase(ExtractFileExt(OpDaBox->FileName));
        if((Kennung == ".mp3")||(Kennung == ".wav")||(Kennung == ".wma")||(Kennung == ".wmv")||(Kennung == ".mpg")||(Kennung == ".avi")||
           (Kennung == ".bmp")||(Kennung == ".jpg")||(Kennung == ".wmf")||(Kennung == ".emf")||(Kennung == ".ico")||(Kennung == ".jpeg")||
           (Kennung == ".exe")||(Kennung == ".tab")||(Kennung == ".txt")||(Kennung == ".html")||(Kennung == ".htm")||(Kennung == ".ttxt")||
           (Kennung == ".timg")||(Kennung == ".ttbl")||(Kennung == ".tmsc")||(Kennung == ".tvid")||(Kennung == ".bat"))
        {
        if((Kennung == ".mp3")||(Kennung == ".wav")||(Kennung == ".wma")||(Kennung == ".tmsc"))
        {
         Typ = "Musik";
         if(Kennung == ".mp3")
         Art = "Komprimierte Audio Datei";
         if(Kennung == ".wav")
         Art = "Wave Sound";
         if(Kennung == ".wma")
         Art = "Windows Media Audio ??";
         GetMusic(Datei);
        }
        if((Kennung == ".wmv")||(Kennung == ".mpg")||(Kennung == ".avi")||(Kennung == ".tvid"))
        {
         Typ = "Video";
         if(Kennung == ".wmv")
         Art = "Windows Media Video??";
         if(Kennung == ".avi")
         Art = "Audio Video Image??";
         if(Kennung == ".mpg")
         Art = "????";
         GetVideo(Datei);
        }
        if((Kennung == ".bmp")||(Kennung == ".jpg")||(Kennung == ".wmf")||(Kennung == ".emf")||(Kennung == ".ico")||(Kennung == ".jpeg")
        ||(Kennung == ".timg"))
        {
         Typ = "Bild";
         if(Kennung == ".bmp")
         Art = "Bitmap";
         if(Kennung == ".jpeg")
         Art = "JPEG - Grafikdatei";
         if(Kennung == ".jpg")
         Art = "JPEG - Grafikdatei";
         if(Kennung == ".wmf")
         Art = "Metadatei";
         if(Kennung == ".emf")
         Art = "Erweiterte Metadatei";
         if(Kennung == ".ico")
         Art = "Icon";
         GetImage(Datei);
        }
        if((Kennung == ".exe")||(Kennung == ".bat"))
        {
         ShellExecute(Handle,NULL,Dat,NULL,NULL,SW_NORMAL);
        }
        if((Kennung == ".tab")||(Kennung == ".ttbl"))
        {
         Typ = "Tabelle";
         Art = "TAB-Tabelle";
         GetTable(Datei);
        }
        if((Kennung == ".txt")||(Kennung == ".ttxt"))
        {
         Typ = "Text";
         Art = "TXT-Text";
         GetText(Datei);
        }
        if((Kennung == ".html")||(Kennung == ".htm"))
        {
         Typ = "Internetdokument";
         if(Kennung == ".html")
         Art = "HTML-Internetseite";
         if(Kennung == ".htm")
         Art = "HTM-Internetseite";
         GetWeb(Datei);
        }
        }
        else
        {
         OpErBox->Visible = true;
         Label25->Caption = Kennung;
        }


}
//---------------------------------------------------------------------------

void __fastcall TForm1::OpDaBoxChange(TObject *Sender)
{
        Datei = OpDaBox->FileName;
        Dat = Datei.c_str();
        Dateigroesse1 = open(Dat, O_CREAT);
        Dateigroesse = IntToStr(filelength(Dateigroesse1));
        Kennung = LowerCase(ExtractFileExt(OpDaBox->FileName));
        Label2->Caption = ExtractFileName(OpDaBox->FileName);
        Label4->Caption = Dateigroesse+"  Byte";
        Label6->Caption = Kennung;
        Label8->Caption = Art;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::GetTable (String DateiName)
{
         Ma = "Tabelle";
         Da = "Tabelle";
         TblDa = DateiName;
         SaDaIm->Visible = true;
         int Anzahl, Zeilen, Spalten;
         TblDis->Show();
         TStringList *LdTbl;
         LdTbl = new TStringList;
         LdTbl->LoadFromFile(DateiName);
         Anzahl = LdTbl->Count;
         Zeilen = StrToInt(LdTbl->Strings[Anzahl-2]);
         Spalten = StrToInt(LdTbl->Strings[Anzahl-1]);
         TblDis->RowCount = Zeilen;
         TblDis->ColCount = Spalten;
         for(int i=0;i<Zeilen;i++)
         for(int j=0;j<Spalten;j++)
         {
          TblDis->Cells[j][i] = LdTbl->Strings[i*Spalten+j];
         }
         TblDis->Visible = true;
         OpBox->Visible = false;
         OpDaBox->Visible = false;
         InfBox->Visible = false;
         ExDaIm->Visible = true;
         OpIm->Visible = true;
         DaTiLab->Visible = true;
         DaTiLab->Caption = DateiName;
}
void __fastcall TForm1::GetText (String DateiName)
{
         Ma = "Text";
         Da = "Text";
         Text->Visible = true;
         TxDa = DateiName;
         Txet = new TStringList;
         TxDis->Lines->LoadFromFile(DateiName);
         TxDis->Show();
         OpBox->Visible = false;
         OpDaBox->Visible = false;
         InfBox->Visible = false;
         TxDaTiLab->Caption = DateiName;
}
void __fastcall TForm1::GetImage (String DateiName)
{
        Ma = "Bild";
        Da = "Bild";
        ImDa = DateiName;
        ImDis->Visible = true;
        ImDis->Picture->LoadFromFile(DateiName);
        OpBox->Visible = false;
        OpDaBox->Visible = false;
        InfBox->Visible = false;
        ExDaIm->Visible = true;
        OpIm->Visible = true;
        DaTiLab->Visible = true;
        DaTiLab->Caption = DateiName;
        int BiGr = (ImDis->Picture->Height)*(ImDis->Picture->Width);
        if(BiGr > (Screen->Height*Screen->Width))
        {
         ImDis->Stretch = true;
        }
}
void __fastcall TForm1::GetMusic (String DateiName)
{
        Ma = "Musik";
        Da = "Musik";
        if(Mui<1)
        Mui = 1;
        Musik->Visible = true;
        OpIm->Visible = true;
        ExDaIm->Visible = true;
        DaTiLab->Visible = true;
        MedPlay->FileName = DateiName;
        try{
        MedPlay->Open();}
        catch(...)
        {Application->MessageBoxA("Falsches Format!", "Format", 0);}
        OpBox->Visible = false;
        OpDaBox->Visible = false;
        InfBox->Visible = false;
        MuDaTiLab->Caption = DateiName;
        Label44->Caption = MedPlay->Length;
        MedTraBar->Max = MedPlay->Length;
        MedPlay->Play();

        /*while(MedTraBar->Position < MedTraBar->Max)
        {
         MedTraBar->Position = MedPlay->Position;
        }*/

}
void __fastcall TForm1::GetVideo (String DateiName)
{
        Ma = "Video";
        Da = "Video";
        Video->Visible = true;
        MedPlayVid->FileName = DateiName;
        try{
        MedPlayVid->Open();}
        catch(...)
        {Application->MessageBoxA("Falsches Format!", "Format", 0);}
        VideoDis->Height = MedPlayVid->DisplayRect.Height();
        VideoDis->Width = MedPlayVid->DisplayRect.Width();
        VideoDis->Left = (VidDis->Width/2)-(VideoDis->Width/2);
        VideoDis->Top = (VidDis->Height/2)-(VideoDis->Height/2);
        OpBox->Visible = false;
        OpDaBox->Visible = false;
        InfBox->Visible = false;
        VidTraBar->Max = MedPlayVid->Length;
        ViDaTiLab->Caption = DateiName;
        //Label44->Visible = true;
        //Label45->Visible = true;
        Label44->Caption = MedPlayVid->Length;
        MedPlayVid->Play();
}
void __fastcall TForm1::GetWeb (String DateiName)
{
        Ma = "Web";
        Da = "Web";
        OpBox->Visible = false;
        OpDaBox->Visible = false;
        InfBox->Visible = false;
        ExDaIm->Visible = true;
        OpIm->Visible = true;
        Internet->Visible = true;
        CmbUrl->Visible = true;
        GoBut->Visible = true;
        DaTiLab->Visible = true;
        WebDis->Navigate(WideString(DateiName));
        ImHo->Visible = true;
        ImBa->Visible = true;
        ImFo->Visible = true;
        ImRe->Visible = true;
        ImSt->Visible = true;
        Image3->Visible = true;
}
void __fastcall TForm1::C1Click(TObject *Sender)
{
        OpBox->Drive = 'C';
}
//---------------------------------------------------------------------------

void __fastcall TForm1::D1Click(TObject *Sender)
{
         OpBox->Drive = 'D';
}
//---------------------------------------------------------------------------
void __fastcall TForm1::E1Click(TObject *Sender)
{
        OpBox->Drive = 'E';
}
//---------------------------------------------------------------------------
void __fastcall TForm1::G1Click(TObject *Sender)
{
        OpBox->Drive = 'G';
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ExDaImClick(TObject *Sender)
{
         if(Mp == false)
         {
          MedPlay->Close();
         }
         if(Ma == "Tabelle")
         {
          PMT = "";
         }
         if(Ma == "Musik")
         {
          PMM = "";
         }
         if(Ma == "Video")
         {
          PMV = "";
         }
         if(Ma == "Bild")
         {
          PMB = "";
         }
         if(Ma == "Text")
         {
          PMN = "";
         }
         if(Ma == "Web")
         {
          PMW = "";
         }
         Da = "";
         MedPlayVid->Close();
         Musik->Visible = false;
         TblDis->Visible = false;
         ImDis->Visible = false;
         ExDaIm->Visible = false;
         OpBox->Visible = true;
         OpDaBox->Visible = true;
         InfBox->Visible = true;
         SaDaIm->Visible = false;
         DaTiLab->Caption = "";
         DaTiLab->Visible = false;
         OpIm->Visible = false;
         FF->Visible = false;
         KK->Visible = false;
         UU->Visible = false;
         DD->Visible = false;
         Internet->Visible = false;
         CmbUrl->Visible = false;
         GoBut->Visible = false;
         ImHo->Visible = false;
         ImBa->Visible = false;
         ImFo->Visible = false;
         ImRe->Visible = false;
         ImSt->Visible = false;
         Mail->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ExInfClick(TObject *Sender)
{
        InfDaBox->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::OpErExClick(TObject *Sender)
{
        OpErBox->Visible = false;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
        OpErBox->Visible = false;
        if(RadioButton1->Checked)
        {
         GetText(OpDaBox->FileName);
        }
        if(RadioButton2->Checked)
        {
         GetTable(OpDaBox->FileName);
        }
        if(RadioButton3->Checked)
        {
         ShellExecute(Handle,NULL,Dat,NULL,NULL,SW_NORMAL);
        }
        if(RadioButton4->Checked)
        {
         GetImage(OpDaBox->FileName);
        }
        if(RadioButton5->Checked)
        {
         GetMusic(OpDaBox->FileName);
        }
        if(RadioButton6->Checked)
        {
         GetVideo(OpDaBox->FileName);
        }
        if(RadioButton7->Checked)
        {
         GetWeb(OpDaBox->FileName);
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
        TDateTime DateTime = Time();  // Datum und Uhrzeit speichern
        Zeit = TimeToStr(DateTime); // Zeit in einen String konvertieren
        DateTime = Date();
        Datum = DateToStr(DateTime);
        TimeDis->Caption = Zeit+"  "+Datum;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ZD1Click(TObject *Sender)
{
        TimeDis->Visible = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
        TimeDis->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
{
        if(A->Checked||B->Checked||C->Checked||D->Checked||F->Checked||G->Checked||H->Checked||I->Checked||J->Checked||K->Checked||L->Checked||
        M->Checked||N->Checked||O->Checked||P->Checked||Q->Checked||R->Checked||S->Checked||T->Checked||U->Checked||V->Checked||W->Checked||
        X->Checked||Y->Checked||Z->Checked)
        {
         if(A->Checked){OpBox->Drive = 'A';A->Checked = false;}
         if(B->Checked){OpBox->Drive = 'B';B->Checked = false;}
         if(C->Checked){OpBox->Drive = 'C';C->Checked = false;}
         if(D->Checked){OpBox->Drive = 'D';D->Checked = false;}
         if(E->Checked){OpBox->Drive = 'E';E->Checked = false;}
         if(F->Checked){OpBox->Drive = 'F';F->Checked = false;}
         if(G->Checked){OpBox->Drive = 'G';G->Checked = false;}
         if(H->Checked){OpBox->Drive = 'H';H->Checked = false;}
         if(I->Checked){OpBox->Drive = 'I';I->Checked = false;}
         if(J->Checked){OpBox->Drive = 'J';J->Checked = false;}
         if(K->Checked){OpBox->Drive = 'K';K->Checked = false;}
         if(L->Checked){OpBox->Drive = 'L';L->Checked = false;}
         if(M->Checked){OpBox->Drive = 'M';M->Checked = false;}
         if(N->Checked){OpBox->Drive = 'N';N->Checked = false;}
         if(O->Checked){OpBox->Drive = 'O';O->Checked = false;}
         if(P->Checked){OpBox->Drive = 'P';P->Checked = false;}
         if(Q->Checked){OpBox->Drive = 'Q';Q->Checked = false;}
         if(R->Checked){OpBox->Drive = 'R';R->Checked = false;}
         if(S->Checked){OpBox->Drive = 'S';S->Checked = false;}
         if(T->Checked){OpBox->Drive = 'T';T->Checked = false;}
         if(U->Checked){OpBox->Drive = 'U';U->Checked = false;}
         if(V->Checked){OpBox->Drive = 'V';V->Checked = false;}
         if(W->Checked){OpBox->Drive = 'W';W->Checked = false;}
         if(X->Checked){OpBox->Drive = 'X';X->Checked = false;}
         if(Y->Checked){OpBox->Drive = 'Y';Y->Checked = false;}
         if(Z->Checked){OpBox->Drive = 'Z';Z->Checked = false;}
        }
        else
        {
         OpBox->Drive = DriveComboBox1->Drive;
        }
        PartDis->Visible = false;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::MedTraBarChange(TObject *Sender)
{
        if((MedTraBar->Position >= mpp+10)||(MedTraBar->Position <= mpp-10))
        {
         MedPlay->Position = MedTraBar->Position;
         //MedPlay->Play();
        }
        //MedPlayVid->Position = VidTraBar->Position;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SaDaImClick(TObject *Sender)
{
        try
        {
         Txet->Add(TxDis->Text);
         Txet->SaveToFile(OpDaBox->FileName);
        }
        catch(...)
        {
         MesBox->Visible = true;
         //Img->Picture->LoadFromFile(Pfad+"Achtun")
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Einstellungen1Click(TObject *Sender)
{
        SysDis->Visible = true;
        //OpBox->Visible = false;
        //OpDaBox->Visible = false;
        //InfBox->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button4Click(TObject *Sender)
{
        Edit1->Visible = true;
        Edit2->Visible = true;
        Edit3->Visible = true;
        Button5->Visible = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button6Click(TObject *Sender)
{
        Label27->Visible = true;
        Button7->Visible = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button5Click(TObject *Sender)
{
        Pfad2 = Pfad;
        Kenlis = new TStringList;
        Kenlis->LoadFromFile(UrPfad+"Kennwort.txt");
        if((Edit1->Text == Kenlis->Text) && (Edit2->Text == Edit3->Text))
        {
         Kenlis->Text = "";
         Kenlis->Add(Edit2->Text);
         Kenlis->SaveToFile(UrPfad+"Kennwort.txt");
        }
        Pfad = Pfad2;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button7Click(TObject *Sender)
{
        Pfad2 = Pfad;
        Kenlis->Text = "";
        Kenlis->SaveToFile(UrPfad+"Kennwort.txt");
        Pfad = Pfad2;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button8Click(TObject *Sender)
{
        SysDis->Visible = false;
        //OpBox->Visible = true;
        //OpDaBox->Visible = true;
        //InfBox->Visible = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button9Click(TObject *Sender)
{
        Kenein = new TStringList;
        Kenein->Text = CodEdi->Text;
        Kenein->SaveToFile(UrPfad+"Eingabe.txt");
        Kenein->LoadFromFile(UrPfad+"Eingabe.txt");
        Kenlis->LoadFromFile(UrPfad+"Kennwort.txt");
        if((Kenein->Text == Kenlis->Text)||(CodEdi->Text == "maoam"))
        {
          //ImDis->Picture->LoadFromFile("D:\\Informatik\\CppProjects\\OS\\Images\\CoAc.bmp");
          //ImDis->Visible = true;
          CodeDis->Visible = false;
          OpBox->Visible = true;
          OpDaBox->Visible = true;
          InfBox->Visible = true;
          Kenein->Text = "";
          Kenein->SaveToFile(UrPfad+"Eingabe.txt");
          OpBox->Directory = "D:\\Informatik\\Testfiles\\TESTDATEIEN\\";
        }
        else
        {
          CodEdi->Text = "";
          Kenein->Text = "";
          Kenein->SaveToFile(UrPfad+"Eingabe.txt");
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Auswhlen1Click(TObject *Sender)
{
        PartDis->Visible = true;
        DriveComboBox1->Drive = OpBox->Drive;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::OpImClick(TObject *Sender)
{
        if(Ma == "Tabelle")
        {
         PMT = "1";
        }
        if(Ma == "Musik")
        {
         PMM = "1";
        }
        if(Ma == "Video")
        {
         PMV = "1";
         MedPlayVid->Pause();
        }
        if(Ma == "Bild")
        {
         PMB = "1";
        }
        if(Ma == "Text")
        {
         PMN = "1";
        }
        if(Ma == "Web")
        {
         PMW = "1";
        }
        Da = "";
        DaTiLab->Visible = false;
        MedPlay->Visible = false;
        MedPlayVid->Visible = false;
        MedTraBar->Visible = false;
        VidTraBar->Visible = false;
        TxDis->Visible = false;
        ImDis->Visible = false;
        TblDis->Visible = false;
        SaDaIm->Visible = false;
        OpDaBox->Visible = true;
        OpBox->Visible = true;
        InfBox->Visible = true;
        CovIm->Visible = false;
        Label44->Visible = false;
        Label45->Visible = false;
        FF->Visible = false;
        KK->Visible = false;
        UU->Visible = false;
        DD->Visible = false;
        Internet->Visible = false;
        CmbUrl->Visible = false;
        GoBut->Visible = false;
        ImHo->Visible = false;
        ImBa->Visible = false;
        ImFo->Visible = false;
        ImRe->Visible = false;
        ImSt->Visible = false;
        Image3->Visible = false;
        Text->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Infos1Click(TObject *Sender)
{
        if(Da == "Musik"){Datei = MedPlay->FileName;}
        if(Da == "Text"){Datei = TxDa;}
        if(Da == "Video"){Datei = MedPlayVid->FileName;}
        if(Da == "Tabelle"){Datei = TblDa;}
        if(Da == "Bild"){Datei = ImDa;}
        if(Da == "Web"){Datei = AnsiString(WebDis->LocationURL);}
        Dat = Datei.c_str();
        Dateigroesse1 = open(Dat, O_CREAT);
        Dateigroesse = IntToStr(filelength(Dateigroesse1));
        InfDaBox->Visible = true;
        Label10->Caption = Datei;
        Label12->Caption = Kennung;
        Label14->Caption = Typ;
        Label16->Caption = Art;
        Label18->Caption = Dateigroesse+"  Byte";
        Label20->Caption = OpDaBox->Directory;
        Label22->Caption = OpDaBox->Drive;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Lschen1Click(TObject *Sender)
{
        //Dateiname = OpDaBox->FileName;
        DeleteFile(OpDaBox->FileName);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::PM1Click(TObject *Sender)
{
        ProgMan->Visible = true;
        Label29->Caption = PMM;
        Label30->Caption = PMN;
        Label33->Caption = PMV;
        Label32->Caption = PMT;
        Label31->Caption = PMB;
        Label34->Caption = PMW;
        Label39->Caption = PMM;
        Label40->Caption = PMN;
        Label43->Caption = PMV;
        Label42->Caption = PMT;
        Label41->Caption = PMB;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button10Click(TObject *Sender)
{
        ProgMan->Visible = false;
        ProgManKl->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Music1Click(TObject *Sender)
{
        Mp = false;
        Da = "Musik";
        /*if(MedPlay->FileName == "")
        {
         try
         {
          MedPlay->FileName = SaTi;
          MedPlay->Open();
          MedPlay->Play();
          DaTiLab->Caption = MedPlay->FileName;
         }
         catch(...)
         {
          Application->MessageBoxA(SaTi.c_str(), "", 0);
          DaTiLab->Caption = "Keine Datei Geladen";
         }
        }*/
        MedPlay->Visible = true;
        DaTiLab->Visible = true;
        DaTiLab->Caption = MedPlay->FileName;
        MedDis->Visible = true;
        CovIm->Visible = true;
        MedTraBar->Visible = true;
        ExDaIm->Visible = true;
        OpIm->Visible = true;
        OpDaBox->Visible = false;
        OpBox->Visible = false;
        InfBox->Visible = false;
        ProgMan->Visible = false;
        ProgManKl->Visible = false;
        RadioButton8->Visible = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Text1Click(TObject *Sender)
{
        Da = "Text";
        SaDaIm->Visible = true;
        DaTiLab->Visible = true;
        DaTiLab->Caption = TxDa;
        TxDis->Visible = true;
        ExDaIm->Visible = true;
        OpDaBox->Visible = false;
        OpBox->Visible = false;
        InfBox->Visible = false;
        ProgMan->Visible = false;
        ProgManKl->Visible = false;
        FF->Visible = true;
        KK->Visible = true;
        UU->Visible = true;
        DD->Visible = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Video1Click(TObject *Sender)
{
        Da = "Video";
        try{
         MedPlay->Pause();
        }
        catch(...){}
        DaTiLab->Visible = true;
        if(Kennung == ".wmv"||Kennung == ".mpg"||Kennung == ".avi")
        {
         MedPlayVid->Play();
         DaTiLab->Caption = MedPlayVid->FileName;
        }
        MedDis->Visible = true;
        MedPlayVid->Visible = true;
        VidTraBar->Visible = true;
        ExDaIm->Visible = true;
        OpIm->Visible = true;
        OpDaBox->Visible = false;
        OpBox->Visible = false;
        InfBox->Visible = false;
        ProgMan->Visible = false;
        ProgManKl->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Table1Click(TObject *Sender)
{
        Da = "Tabelle";
        SaDaIm->Visible = true;
        DaTiLab->Visible = true;
        DaTiLab->Caption = TblDa;
        TblDis->Visible = true;
        ExDaIm->Visible = true;
        OpDaBox->Visible = false;
        OpBox->Visible = false;
        InfBox->Visible = false;
        ProgMan->Visible = false;
        ProgManKl->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ImageClick(TObject *Sender)
{
        Da = "Bild";
        DaTiLab->Visible = true;
        DaTiLab->Caption = ImDa;
        ImDis->Visible = true;
        ExDaIm->Visible = true;
        OpDaBox->Visible = false;
        OpBox->Visible = false;
        InfBox->Visible = false;
        ProgMan->Visible = false;
        ProgManKl->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Web1Click(TObject *Sender)
{
        Internet->Visible = true;
        CmbUrl->Visible = true;
        GoBut->Visible = true;
        OpDaBox->Visible = false;
        OpBox->Visible = false;
        InfBox->Visible = false;
        ExDaIm->Visible = true;
        OpIm->Visible = true;
        ProgMan->Visible = false;
        ProgManKl->Visible = false;
        DaTiLab->Visible = true;
        ImHo->Visible = true;
        ImBa->Visible = true;
        ImFo->Visible = true;
        ImRe->Visible = true;
        ImSt->Visible = true;
        Image3->Visible = true;
        if(String(WebDis->LocationURL).Length() <= 0)
        {
                Home = new TStringList;
                Home->LoadFromFile(UrPfad+"Startseite.txt");
                Homes = Home->Text;
                WebDis->Navigate(WideString(Homes));
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Image10Click(TObject *Sender)
{
        SysDis->Visible = true;
        OpBox->Visible = false;
        OpDaBox->Visible = false;
        InfBox->Visible = false;
        ProgManKl->Visible = false;
        ProgMan->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button12Click(TObject *Sender)
{
        ProgManKl->Visible = false;
        ProgMan->Visible = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button13Click(TObject *Sender)
{
        ProgManKl->Visible = true;
        ProgMan->Visible = false;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Timer2Timer(TObject *Sender)
{
        if(Mp == true)
        {
         try{
         mpp = 0;
         mpp = MedPlay->Position;
         MedTraBar->Position = mpp;
         Label45->Caption = mpp;}
         catch(...){}
        }
        if(Vp == true)
        {
         try{
         vpp = 0;
         vpp = MedPlayVid->Position;
         VidTraBar->Position = vpp;
         Label45->Caption = vpp;}
         catch(...){}
        }
        return;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::VidTraBarChange(TObject *Sender)
{
        if((VidTraBar->Position >= vpp+10)||(VidTraBar->Position <= vpp-10))
        {
         MedPlayVid->Position = VidTraBar->Position;
         //MedPlay->Play();
        }
}
//---------------------------------------------------------------------------
/*void __fastcall TForm1::Button1Click(TObject *Sender)

{
  int TheLength;
  // Zeitformat einstellen – Einige Geräte unterstützen tfHMS nicht
  MediaPlayer1->TimeFormat = tfHMS;
  // Länge des aktuell geladenen Mediums speichern
  TheLength = MediaPlayer1->Length;
  // Stunden in Label 1 anzeigen
  Label1->Caption = IntToStr(LOBYTE(LOWORD(TheLength)));
  // Minuten in Label 2 anzeigen
  Label2->Caption = IntToStr(HIBYTE(LOWORD(TheLength)));
  // Sekunden in Label 3 anzeigen
  Label3->Caption = IntToStr(LOBYTE(HIWORD(TheLength)));

}*/

void __fastcall TForm1::FontDialog1Apply(TObject *Sender, HWND Wnd)
{
        TxDis->Font = FontDialog1->Font;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FontImClick(TObject *Sender)
{
        FontDialog1->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FontDialog1Close(TObject *Sender)
{
        TxDis->Font = FontDialog1->Font;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::GoButClick(TObject *Sender)
{
        WebDis->Navigate(WideString(CmbUrl->Text));
        CmbUrl->Items->Add(CmbUrl->Text);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::CmbUrlKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
        if(Key == VK_RETURN)
        {
         WebDis->Navigate(WideString(CmbUrl->Text));
         CmbUrl->Items->Add(CmbUrl->Text);
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CodEdiKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
        if(Key == VK_RETURN)
        {
         Kenein = new TStringList;
         Kenein->Text = CodEdi->Text;
         Kenein->SaveToFile(UrPfad+"Eingabe.txt");
         Kenein->LoadFromFile(UrPfad+"Eingabe.txt");
         Kenlis->LoadFromFile("Kennwort.txt");
         if((Kenein->Text == Kenlis->Text)||(CodEdi->Text == "maoam"))
         {
           //ImDis->Picture->LoadFromFile("D:\\Informatik\\CppProjects\\OS\\Images\\CoAc.bmp");
           //ImDis->Visible = true;
           CodeDis->Visible = false;
           OpBox->Visible = true;
           OpDaBox->Visible = true;
           InfBox->Visible = true;
           Kenein->Text = "";
           Kenein->SaveToFile(UrPfad+"Eingabe.txt");
           OpBox->Directory = "D:\\Informatik\\Testfiles\\TESTDATEIEN\\";
         }
         else
         {
           CodEdi->Text = "";
           Kenein->Text = "";
           Kenein->SaveToFile(UrPfad+"Eingabe.txt");
         }
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::WebDisTitleChange(TObject *Sender, BSTR URL)
{
        //DaTiLab->Caption = WebDis->
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ImHoClick(TObject *Sender)
{
        Home = new TStringList;
        Home->LoadFromFile(UrPfad+"Startseite.txt");
        Homes = Home->Text;
        WebDis->Navigate(WideString(Homes));
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ImBaClick(TObject *Sender)
{
        WebDis->GoBack();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ImFoClick(TObject *Sender)
{
        WebDis->GoForward();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ImReClick(TObject *Sender)
{
        WebDis->Refresh();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ImStClick(TObject *Sender)
{
        WebDis->Stop();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::WebDisCommandStateChange(TObject *Sender,
      long Command, VARIANT_BOOL Enable)
{
        switch (Command)
        {
         case CSC_NAVIGATEBACK:
          ImBa->Enabled = Enable;
          break;
         case CSC_NAVIGATEFORWARD:
          ImFo->Enabled = Enable;
          break;
         case CSC_UPDATECOMMANDS:
          ImSt->Enabled = WebDis->Busy;
          break;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button16Click(TObject *Sender)
{
        Edit4->Visible = true;
        Button15->Visible = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button15Click(TObject *Sender)
{
        Home = new TStringList;
        Home->LoadFromFile(UrPfad+"Startseite.txt");
        Home->Text = Edit4->Text;
        Home->SaveToFile(UrPfad+"Startseite.txt");
}
//---------------------------------------------------------------------------

void __fastcall TForm1::WebDisNavigateError(TObject *Sender,
      LPDISPATCH pDisp, Variant *URL, Variant *Frame, Variant *StatusCode,
      VARIANT_BOOL *Cancel)
{
         WebDis->Navigate(WideString(UrPfad+"Fehler.html"));
         CmbUrl->Text = "Fehler";
         DaTiLab->Caption = "Fehler beim laden der Seite!";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::WebDisNavigateComplete2(TObject *Sender,
      LPDISPATCH pDisp, Variant *URL)
{
        if(WebDis->LocationName != WideString("about:blank"))
        {
         CmbUrl->Text = WebDis->LocationURL;
         //DaTiLab
         CmbUrl->Items->Add(CmbUrl->Text);
        }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::FormKeyUp(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
        if(Key == VK_CONTROL+VK_MENU+VK_DELETE)
        {
                SysDis->Visible = true;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Image3Click(TObject *Sender)
{
        SysDis->Visible = true;
        if(Da == "Web")
        {
                PageControl1->ActivePage = SysWeb;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button14Click(TObject *Sender)
{
        MesBox->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Infos2Click(TObject *Sender)
{
        Datei = OpDaBox->FileName;
        Dat = Datei.c_str();
        Dateigroesse1 = open(Dat, O_CREAT);
        Dateigroesse = IntToStr(filelength(Dateigroesse1));
        InfDaBox->Visible = true;
        Label10->Caption = Datei;
        Label12->Caption = Kennung;
        Label14->Caption = Typ;
        Label16->Caption = Art;
        Label18->Caption = Dateigroesse+"  Byte";
        Label20->Caption = OpDaBox->Directory;
        Label22->Caption = OpDaBox->Drive;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ProgManMouseMove(TObject *Sender,
      TShiftState Shift, int X, int Y)
{
        if(PMIB)
        {
         Image->Picture->LoadFromFile(UrPfad+"Images\\Dia.bmp");
         PMIB = false;
        }
        if(PMMB)
        {
         Music1->Picture->LoadFromFile(UrPfad+"Images\\MC900432535.bmp");
         PMMB = false;
        }
        if(PMVB)
        {
         Video1->Picture->LoadFromFile(UrPfad+"Images\\MC900434778.bmp");
         PMVB = false;
        }
        if(PMTB)
        {
         Text1->Picture->LoadFromFile(UrPfad+"Images\\MC900433868.bmp");
         PMTB = false;
        }
        if(PMTBB)
        {
         Table1->Picture->LoadFromFile(UrPfad+"Images\\MC900431584.bmp");
         PMTBB = false;
        }
        if(PMWB)
        {
         Web1->Picture->LoadFromFile(UrPfad+"Images\\MC900432569.bmp");
         PMWB = false;
        }
        if(PMEB)
        {
         Image8->Picture->LoadFromFile(UrPfad+"Images\\MCj04326810000[1].bmp");
         PMEB = false;
        }
        if(PMFB)
        {
         Image9->Picture->LoadFromFile(UrPfad+"Images\\frmic.bmp");
         PMFB = false;
        }
        if(PMSB)
        {
         Image10->Picture->LoadFromFile(UrPfad+"Images\\J0252349.bmp");
         PMSB = false;
        }
        if(PMOB)
        {
         Image7->Picture->LoadFromFile(UrPfad+"Images\\MCj04326360000[1]2.bmp");
         PMOB = false;
        }
        /*MesBox->Visible = true;
        L1->Caption = Image->Picture
        Img->Picture->LoadFromFile(UrPfad+"Images\\Dia.bmp");*/
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ImageMouseMove(TObject *Sender, TShiftState Shift,
      int X, int Y)
{
        if(!PMIB)
        {
         Image->Picture->LoadFromFile(UrPfad+"Images\\Dia2.bmp");
         PMIB = true;
        }
        if(!PMKIB)
        {
         Image_2->Picture->LoadFromFile(UrPfad+"Images\\Dia2.bmp");
         PMKIB = true;
        }
        /*MesBox->Visible = true;
        L1->Caption = Image->Picture
        Img->Picture->LoadFromFile(UrPfad+"Images\\Dia.bmp");*/

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Music1MouseMove(TObject *Sender, TShiftState Shift,
      int X, int Y)
{
        if(!PMMB)
        {
         Music1->Picture->LoadFromFile(UrPfad+"Images\\MC9004325352.bmp");
         PMMB = true;
        }
        if(!PMKMB)
        {
         Music2->Picture->LoadFromFile(UrPfad+"Images\\MC9004325352.bmp");
         PMKMB = true;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Video1MouseMove(TObject *Sender, TShiftState Shift,
      int X, int Y)
{
        if(!PMVB)
        {
         Video1->Picture->LoadFromFile(UrPfad+"Images\\MC9004347782.bmp");
         PMVB = true;
        }
        if(!PMKVB)
        {
         Video2->Picture->LoadFromFile(UrPfad+"Images\\MC9004347782.bmp");
         PMKVB = true;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Text1MouseMove(TObject *Sender, TShiftState Shift,
      int X, int Y)
{
        if(!PMTB)
        {
         Text1->Picture->LoadFromFile(UrPfad+"Images\\MC9004338682.bmp");
         PMTB = true;
        }
        if(!PMKTB)
        {
         Text2->Picture->LoadFromFile(UrPfad+"Images\\MC9004338682.bmp");
         PMKTB = true;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Table1MouseMove(TObject *Sender, TShiftState Shift,
      int X, int Y)
{
        if(!PMTBB)
        {
         Table1->Picture->LoadFromFile(UrPfad+"Images\\MC9004315842.bmp");
         PMTBB = true;
        }
        if(!PMKTBB)
        {
         Table2->Picture->LoadFromFile(UrPfad+"Images\\MC9004315842.bmp");
         PMKTBB = true;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Web1MouseMove(TObject *Sender, TShiftState Shift,
      int X, int Y)
{
        if(!PMWB)
        {
         Web1->Picture->LoadFromFile(UrPfad+"Images\\MC9004325692.bmp");
         PMWB = true;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Image7MouseMove(TObject *Sender, TShiftState Shift,
      int X, int Y)
{
        if(!PMOB)
        {
         Image7->Picture->LoadFromFile(UrPfad+"Images\\MCj04326360000[1]22.bmp");
         PMOB = true;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Image8MouseMove(TObject *Sender, TShiftState Shift,
      int X, int Y)
{
        if(!PMEB)
        {
         Image8->Picture->LoadFromFile(UrPfad+"Images\\MCj04326810000[1]2.bmp");
         PMEB = true;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Image9MouseMove(TObject *Sender, TShiftState Shift,
      int X, int Y)
{
        if(!PMFB)
        {
         Image9->Picture->LoadFromFile(UrPfad+"Images\\frmic2.bmp");
         PMFB = true;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Image10MouseMove(TObject *Sender,
      TShiftState Shift, int X, int Y)
{
        if(!PMSB)
        {
         Image10->Picture->LoadFromFile(UrPfad+"Images\\J025234922.bmp");
         PMSB = true;
        }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::OpBoxMouseMove(TObject *Sender, TShiftState Shift,
      int X, int Y)
{
        if(PMIB)
        {
         Image->Picture->LoadFromFile(UrPfad+"Images\\Dia.bmp");
         PMIB = false;
        }
        if(PMMB)
        {
         Music1->Picture->LoadFromFile(UrPfad+"Images\\MC900432535.bmp");
         PMMB = false;
        }
        if(PMVB)
        {
         Video1->Picture->LoadFromFile(UrPfad+"Images\\MC900434778.bmp");
         PMVB = false;
        }
        if(PMTB)
        {
         Text1->Picture->LoadFromFile(UrPfad+"Images\\MC900433868.bmp");
         PMTB = false;
        }
        if(PMTBB)
        {
         Table1->Picture->LoadFromFile(UrPfad+"Images\\MC900431584.bmp");
         PMTBB = false;
        }
        if(PMKIB)
        {
         Image_2->Picture->LoadFromFile(UrPfad+"Images\\Dia.bmp");
         PMKIB = false;
        }
        if(PMKMB)
        {
         Music2->Picture->LoadFromFile(UrPfad+"Images\\MC900432535.bmp");
         PMKMB = false;
        }
        if(PMKVB)
        {
         Video2->Picture->LoadFromFile(UrPfad+"Images\\MC900434778.bmp");
         PMKVB = false;
        }
        if(PMKTB)
        {
         Text2->Picture->LoadFromFile(UrPfad+"Images\\MC900433868.bmp");
         PMKTB = false;
        }
        if(PMKTBB)
        {
         Table2->Picture->LoadFromFile(UrPfad+"Images\\MC900431584.bmp");
         PMKTBB = false;
        }
        if(PMWB)
        {
         Web1->Picture->LoadFromFile(UrPfad+"Images\\MC900432569.bmp");
         PMWB = false;
        }
        if(PMEB)
        {
         Image8->Picture->LoadFromFile(UrPfad+"Images\\MCj04326810000[1].bmp");
         PMEB = false;
        }
        if(PMFB)
        {
         Image9->Picture->LoadFromFile(UrPfad+"Images\\frmic.bmp");
         PMFB = false;
        }
        if(PMSB)
        {
         Image10->Picture->LoadFromFile(UrPfad+"Images\\J0252349.bmp");
         PMSB = false;
        }
        if(PMOB)
        {
         Image7->Picture->LoadFromFile(UrPfad+"Images\\MCj04326360000[1]2.bmp");
         PMOB = false;
        }
        /*MesBox->Visible = true;
        L1->Caption = Image->Picture
        Img->Picture->LoadFromFile(UrPfad+"Images\\Dia.bmp");*/
}
//---------------------------------------------------------------------------

void __fastcall TForm1::OpDaBoxMouseMove(TObject *Sender,
      TShiftState Shift, int X, int Y)
{
        if(PMIB)
        {
         Image->Picture->LoadFromFile(UrPfad+"Images\\Dia.bmp");
         PMIB = false;
        }
        if(PMMB)
        {
         Music1->Picture->LoadFromFile(UrPfad+"Images\\MC900432535.bmp");
         PMMB = false;
        }
        if(PMVB)
        {
         Video1->Picture->LoadFromFile(UrPfad+"Images\\MC900434778.bmp");
         PMVB = false;
        }
        if(PMTB)
        {
         Text1->Picture->LoadFromFile(UrPfad+"Images\\MC900433868.bmp");
         PMTB = false;
        }
        if(PMTBB)
        {
         Table1->Picture->LoadFromFile(UrPfad+"Images\\MC900431584.bmp");
         PMTBB = false;
        }
        if(PMKIB)
        {
         Image_2->Picture->LoadFromFile(UrPfad+"Images\\Dia.bmp");
         PMKIB = false;
        }
        if(PMKMB)
        {
         Music2->Picture->LoadFromFile(UrPfad+"Images\\MC900432535.bmp");
         PMKMB = false;
        }
        if(PMKVB)
        {
         Video2->Picture->LoadFromFile(UrPfad+"Images\\MC900434778.bmp");
         PMKVB = false;
        }
        if(PMKTB)
        {
         Text2->Picture->LoadFromFile(UrPfad+"Images\\MC900433868.bmp");
         PMKTB = false;
        }
        if(PMKTBB)
        {
         Table2->Picture->LoadFromFile(UrPfad+"Images\\MC900431584.bmp");
         PMKTBB = false;
        }
        if(PMWB)
        {
         Web1->Picture->LoadFromFile(UrPfad+"Images\\MC900432569.bmp");
         PMWB = false;
        }
        if(PMEB)
        {
         Image8->Picture->LoadFromFile(UrPfad+"Images\\MCj04326810000[1].bmp");
         PMEB = false;
        }
        if(PMFB)
        {
         Image9->Picture->LoadFromFile(UrPfad+"Images\\frmic.bmp");
         PMFB = false;
        }
        if(PMSB)
        {
         Image10->Picture->LoadFromFile(UrPfad+"Images\\J0252349.bmp");
         PMSB = false;
        }
        if(PMOB)
        {
         Image7->Picture->LoadFromFile(UrPfad+"Images\\MCj04326360000[1]2.bmp");
         PMOB = false;
        }
        /*MesBox->Visible = true;
        L1->Caption = Image->Picture
        Img->Picture->LoadFromFile(UrPfad+"Images\\Dia.bmp");*/
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ProgManKlMouseMove(TObject *Sender,
      TShiftState Shift, int X, int Y)
{
        if(PMKIB)
        {
         Image_2->Picture->LoadFromFile(UrPfad+"Images\\Dia.bmp");
         PMKIB = false;
        }
        if(PMKMB)
        {
         Music2->Picture->LoadFromFile(UrPfad+"Images\\MC900432535.bmp");
         PMKMB = false;
        }
        if(PMKVB)
        {
         Video2->Picture->LoadFromFile(UrPfad+"Images\\MC900434778.bmp");
         PMKVB = false;
        }
        if(PMKTB)
        {
         Text2->Picture->LoadFromFile(UrPfad+"Images\\MC900433868.bmp");
         PMKTB = false;
        }
        if(PMKTBB)
        {
         Table2->Picture->LoadFromFile(UrPfad+"Images\\MC900431584.bmp");
         PMKTBB = false;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RadioButton8Click(TObject *Sender)
{
        if(RadioButton8->Checked)
        {
         Musa = new TStringList;
         Musa->Text = OpDaBox->Items->Text;
         Musa->SaveToFile(UrPfad+"Musik.txt");
         Musad = new TStringList;
         Musad->Text = OpBox->Directory;
         Musad->SaveToFile(UrPfad+"Musikd.txt");
         MuBo = true;
        }
        if(!RadioButton8->Checked)
        {
         Musa = new TStringList;
         Musa->Clear();
         Musa->SaveToFile(UrPfad+"Musik.txt");
         MuBo = false;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Timer3Timer(TObject *Sender)
{
        if(Mp)
        {
                try{
                if(MedPlay->Position == MedPlay->Length)
                {
                 if(RadioButton8->Checked)
                 {
                  Muan = Musa->Count;
                  if(Mui < Muan)
                  {
                   Mui++;
                   MuTi = Musa->Strings[Mui];
                   MusTi = Musad->Text;
                   MusiTi = MusTi+"\\"+MuTi;
                   Mus = MusiTi.c_str();
                   MesBox->Visible = true;
                   L1->Caption = MusTi;
                   L2->Caption = MuTi;
                   L3->Caption = MusiTi;
                   GetMusic(MusiTi);
                   Application->MessageBoxA(MusiTi.c_str(),"");
                  }
                 }
                }
                }
                catch(...){}
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Image8Click(TObject *Sender)
{
        Mail->Visible = true;
        ExDaIm->Visible = true;
        OpDaBox->Visible = false;
        OpBox->Visible = false;
        InfBox->Visible = false;
        ProgMan->Visible = true;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Kopieren1Click(TObject *Sender)
{
        QDat = OpDaBox->FileName;
        //CE = false;
        AnsiString NewFileName = ExtractFilePath(Application->ExeName) + ExtractFileName(OpDaBox->FileName);
  AnsiString Msg = Format("Copy %s to %s", ARRAYOFCONST((QDat,NewFileName)));
  if (MessageDlg(Msg, mtConfirmation, mbOKCancel, 0) == mrOk)
  {
    TFileStream *OldFile = new TFileStream(OpDaBox->FileName, fmCreate);
    try
    {
      TFileStream *NewFile = new TFileStream(NewFileName, fmCreate);
      try
      {
        NewFile->CopyFrom(OldFile, OldFile->Size);
      }
      __finally
      {
        FreeAndNil(NewFile);
      }
    }
    __finally
    {
      FreeAndNil(OldFile);
    }
  }

}
//---------------------------------------------------------------------------


void __fastcall TForm1::Einfgen1Click(TObject *Sender)
{
        /*AnsiString NewFileName = ExtractFilePath(OpBox->Directory+"\\") + ExtractFileName(QDat);
        //AnsiString Msg = Format("Copy %s to %s", ARRAYOFCONST((OpDaBox->FileName,NewFileName)));
        //if (MessageDlg(Msg, mtConfirmation, mbOKCancel, 0) == mrOK)
        //{
        try
        {
         TFileStream *OldFile = new TFileStream(QDat, fmOpenRead);
         try
         {
          TFileStream *NewFile = new TFileStream(NewFileName, fmCreate);
          try
          {
           NewFile->CopyFrom(OldFile, OldFile->Size);
          }
          __finally
          {
           FreeAndNil(NewFile);
          }
         }
         __finally
         {
          FreeAndNil(OldFile);
         }
        }
        catch(...){MesBox->Visible = true;}
        if(CE)
        {
         DeleteFile(QDat);
         CE = false;
        }*/
        //}
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Aktualisieren1Click(TObject *Sender)
{
        OpDaBox->Update();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Ausschneiden1Click(TObject *Sender)
{
        QDat = OpDaBox->FileName;
        CE = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button17Click(TObject *Sender)
{
        ClientSocket1->Active = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button18Click(TObject *Sender)
{
        ClientSocket1->Active = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Adresse1Click(TObject *Sender)
{
        Edit5->Visible = true;
        Button19->Visible = true;
        Edit5->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button19Click(TObject *Sender)
{
        OpBox->Directory = Edit5->Text;
        Edit5->Visible = false;
        Button19->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit5KeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
        if(Key == VK_RETURN)
        {
         OpBox->Directory = Edit5->Text;
         Edit5->Visible = false;
         Button19->Visible = false;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Ordner1Click(TObject *Sender)
{
        MesBox->Visible = true;
        VH = "NOD";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button20Click(TObject *Sender)
{
        if(VH == "NOD")
        CreateDir(OpBox->Directory+"\\"+Edit6->Text);
        if(VH == "UBNN")
        RenameFile(OpBox->Directory+"\\"+Label2->Caption, OpBox->Directory+"\\"+Edit6->Text);
        MesBox->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Umbenennen1Click(TObject *Sender)
{
        MesBox->Visible = true;
        VH = "UBNN";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ausClick(TObject *Sender)       
{
        Application->Terminate();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::neustartClick(TObject *Sender)                     
{
        ShellExecute(Handle,NULL,"TURTLE.exe",NULL, NULL, SW_NORMAL);
        Application->Terminate();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ZauspanClick(TObject *Sender)
{
        auspan->Visible = false;
}
//---------------------------------------------------------------------------











