//---------------------------------------------------------------------------

#ifndef AnmeldungH
#define AnmeldungH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Mask.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// Von der IDE verwaltete Komponenten
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TRadioButton *RadioButton1;
        TRadioButton *RadioButton2;
        TPanel *Panel1;
        TLabel *Label4;
        TLabel *Label5;
        TLabel *Label6;
        TEdit *Edit1;
        TMaskEdit *MaskEdit1;
        TMaskEdit *MaskEdit2;
        TPanel *Panel2;
        TLabel *Label7;
        TEdit *Edit2;
        TButton *Button1;
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall RadioButton1Click(TObject *Sender);
        void __fastcall RadioButton2Click(TObject *Sender);
private:	// Anwender-Deklarationen
public:		// Anwender-Deklarationen
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
