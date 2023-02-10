unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Button2: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit4, Unit3;

procedure TForm2.Button1Click(Sender: TObject);
begin
if (Edit1.Text = '5536') and (Edit2.Text='1234567890*')then
begin
  ShowMessage('Baþarý Ýle Giriþ Yapýldý...'+#13#10+#13#10+'Yetkili:5536 Hoþgeldin');
  Form3.Showmodal;
end
  else if(Edit1.Text='5536') and (Edit2.Text <> '1234567890*') then
  begin
    ShowMessage('Yetkili Þifresi Yanlýþ Girildi...');

  end
  else if (edit1.Text <> '5536') and (edit2.Text = '1234567890*') then
  begin
    ShowMessage('Dahili Numaranýzý Yanlýþ Girdiniz...');
  end
  else
  begin
    ShowMessage('Dahili Numaranýzý ve Yetkili Þifrenizi Yanlýþ Girdiniz...')
  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
if (CheckBox1.Checked) then
  begin
    Edit2.PasswordChar:=#0;

  end
  else
    begin
      Edit2.PasswordChar:='*';
    end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
Form2.Position:=poScreenCenter;
Form2.BorderStyle:=bsToolWindow;
Edit1.MaxLength:=4;
Edit2.MaxLength:=11;
Edit1.Hint:='Lütfen Dahili Numaranýzý Giriniz';
Edit1.ShowHint:=True;
Edit2.Hint:='Lütfen Yetkili Þifrenizi Giriniz';
Edit2.ShowHint:=True;
Edit2.PasswordChar:='*';
end;

end.
