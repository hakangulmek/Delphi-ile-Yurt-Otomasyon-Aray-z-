unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    Label3: TLabel;
    SpeedButton4: TSpeedButton;
    Label4: TLabel;
    SpeedButton5: TSpeedButton;
    Label5: TLabel;
    SpeedButton6: TSpeedButton;
    Label6: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit4, Unit5, Unit6, Unit8, Unit9;



procedure TForm3.FormCreate(Sender: TObject);
begin
Form3.Position:=poScreenCenter;
Form3.BorderStyle:=bsToolWindow;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
form3.Hide;
Form1.ShowModal;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
Form3.Hide;
Form5.Showmodal;


end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
Form3.Hide;
Form6.Showmodal;
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
Close;
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
begin
form3.Hide;
Form9.ShowModal;

end;

procedure TForm3.SpeedButton6Click(Sender: TObject);
begin
form3.Hide;
Form8.ShowModal;
end;

end.
