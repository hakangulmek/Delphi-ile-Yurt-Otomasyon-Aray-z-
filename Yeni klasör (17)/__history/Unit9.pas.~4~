unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Mask,
  Vcl.DBCtrls, Datasnap.DBClient, Data.FMTBcd, Data.SqlExpr, Vcl.Imaging.jpeg;

type
  TForm9 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DataSource4: TDataSource;
    FDQuery4: TFDQuery;
    FDConnection4: TFDConnection;
    button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button4: TButton;
    Label4: TLabel;
    Edit5: TEdit;
    Image2: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit3;

procedure TForm9.button1Click(Sender: TObject);
begin
FDQuery4.Close;
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add('select*from genelbilgiler');
FDQuery4.Open;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
FDQuery4.Locate('adisoyadi',Edit1.Text,[TLocateOption.loPartialKey]);
end;



procedure TForm9.Button4Click(Sender: TObject);
var
x:Integer;
y:Integer;

begin
x:=StrToInt(Edit3.Text);
y:=StrToInt(Edit4.Text);
Edit5.Text:=IntToStr(x-y);
fdquery4.Edit;
try
  fdquery4['ücret'] := Edit5.Text;
  fdquery4.Post;
except
  fdquery4.Cancel;
end;


end;

procedure TForm9.FormCreate(Sender: TObject);
begin
Form9.Position:=poScreenCenter;
Form9.BorderStyle:=bsToolWindow;
end;

procedure TForm9.SpeedButton1Click(Sender: TObject);
begin
Form9.Close;
Form3.Show;
end;

end.
