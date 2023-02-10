unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.jpeg, Vcl.DBCtrls;

type
  TForm5 = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    FDConnection3: TFDConnection;
    FDQuery3: TFDQuery;
    DataSource3: TDataSource;
    DBGrid3: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    SpeedButton2: TSpeedButton;
    ListBox1: TListBox;
    Button4: TButton;
    MENÜ: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Edit8: TEdit;
    Button5: TButton;
    Button6: TButton;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  x:string;

implementation

{$R *.dfm}

uses Unit3, Unit7;

procedure TForm5.Button1Click(Sender: TObject);
begin
FDQuery3.Close;
FDQuery3.SQL.Clear;
FDQuery3.SQL.Add('select*from yemek');
FDQuery3.Open;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
FDQuery3.SQL.Clear;
FDQuery3.SQL.Add('insert into yemek(adi,soyadi,tcno)') ;
FDQuery3.SQL.Add('values (:k1,:k2,:k3)');
FDQuery3.Params[0].AsString:=Edit6.Text;
FDQuery3.Params[1].AsString:=Edit7.Text;
FDQuery3.Params[2].AsString:=Edit8.Text;
FDQuery3.Execute;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
x:=InputBox('','','');
FDQuery3.SQL.Clear;
FDQuery3.SQL.Add('delete from yemek where tcno ='+QuotedStr(x));
FDQuery3.Execute;
end;



procedure TForm5.Button4Click(Sender: TObject);
var
anayemek:String;
anayemek2:String;
çorba:String;
tatlý:string;
begin
anayemek:=Edit1.Text;
anayemek2:=Edit2.Text;
çorba:=Edit3.Text;
tatlý:=Edit4.Text;
ListBox1.Items.Add(anayemek);
ListBox1.Items.Add(anayemek2);
Listbox1.Items.Add(çorba);
Listbox1.Items.Add(tatlý);
Label6.Caption := Edit5.Text;

end;



procedure TForm5.Button5Click(Sender: TObject);
var
value : Integer;

begin
value := StrToIntDef(Label6.Caption, 0);
  if value > 0 then
    Label6.Caption := IntToStr(Value - 1);
fdquery3.Edit;
try
  fdquery3['durumu'] := 'Yemek Alýndý';
  fdquery3.Post;
except
  fdquery3.Cancel;
end;
end;

procedure TForm5.Button6Click(Sender: TObject);
begin
if ListBox1.ItemIndex <> -1 then
    ListBox1.Items.Delete(ListBox1.ItemIndex);
end;



procedure TForm5.FormCreate(Sender: TObject);
begin
Form5.Position:=poScreenCenter;
Form5.BorderStyle:=bsToolWindow;
end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
Form5.Hide;
Form7.Showmodal;
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin
Form3.show;
Form5.Close;

end;

end.
