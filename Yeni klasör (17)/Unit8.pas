unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TForm8 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Timer1: TTimer;
    Edit1: TEdit;
    Label2: TLabel;
    Image2: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    FDConnection6: TFDConnection;
    FDQuery6: TFDQuery;
    DataSource6: TDataSource;
    Button4: TButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Button5: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Button6: TButton;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
    SpeedButton2: TSpeedButton;
    Label9: TLabel;
    Memo1: TMemo;
    Button7: TButton;
    Button8: TButton;
    Label14: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  dakika,saniye:Integer;
  saat:Integer;
  x:String;

implementation

{$R *.dfm}

uses Unit3, Unit10;

procedure TForm8.Button1Click(Sender: TObject);
begin
Timer1.Enabled:= true;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
saniye:= 0;
dakika:= 0;
saat:= 0;
edit1.Text:= IntToStr(saat);
edit2.Text:= IntToStr(dakika);
edit3.Text:= IntToStr(saniye);
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
Timer1.Enabled:= False;
end;

procedure TForm8.Button4Click(Sender: TObject);

begin
FDQuery6.Close;
FDQuery6.SQL.Clear;
FDQuery6.SQL.Add('select*from giris');
FDQuery6.Open;
end;

procedure TForm8.Button5Click(Sender: TObject);
var
y,z,r:String;
begin
x:=InputBox('','','');
FDQuery6.SQL.Clear;
FDQuery6.SQL.Add('delete from giris where tc='+QuotedStr(x));
FDQuery6.Execute;

y:=edit4.Text;
z:=Edit5.Text;
r:=Edit2.Text;
Edit6.Text:=r;
if StrToInt(edit3.Text) <= 2 then
  begin
    ShowMessage(' Ho�geldiniz...');
  end
  else if (StrToInt(Edit3.Text)> 2)  then
  begin
    ShowMessage('Yurt Giri� Saatini Ge�tiniz L�tfen �dareye Gidiniz') ;
    Memo1.Lines.Add(y);
    Memo1.Lines.Add(z);
    Memo1.Lines.Add(r);


  end;



end;

procedure TForm8.Button6Click(Sender: TObject);
begin
FDQuery6.SQL.Clear;
FDQuery6.SQL.Add('insert into giris(adi,soyadi,tc,�ikissaati)');
FDQuery6.SQL.Add('values (:k1,:k2,:k3,:k4)');
FDQuery6.Params[0].AsString:=Edit8.Text;
FDQuery6.Params[1].AsString:=Edit9.Text;
FDQuery6.Params[2].AsString:=Edit10.Text;
FDQuery6.Params[3].AsString:=Edit2.Text + ' : ' + Edit3.Text;
FDQuery6.Execute;
end;

procedure TForm8.Button7Click(Sender: TObject);
begin
memo1.Lines.SaveToFile('veri.txt');
end;

procedure TForm8.Button8Click(Sender: TObject);
begin
memo1.lines.LoadFromFile('veri.txt');
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
Form8.Position:=poScreenCenter;
Form8.BorderStyle:=bsToolWindow;
end;

procedure TForm8.SpeedButton1Click(Sender: TObject);
begin
Form3.show;
Form8.Close;
end;

procedure TForm8.SpeedButton2Click(Sender: TObject);
begin
Form10.show;
Form8.Close;

end;

procedure TForm8.Timer1Timer(Sender: TObject);
begin
saniye:=saniye+1;
if saniye=60 then
begin
  saniye:=0;
  dakika:=dakika+1;
end
else if dakika=60 then
     begin
       dakika:=0;
       saat:=saat+1;
     end;

edit1.Text:=IntToStr(saat);
edit2.Text:=IntToStr(dakika);
Edit3.Text:= IntToStr(saniye);

end;

end.
