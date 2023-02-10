unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef;

type
  TForm13 = class(TForm)
    SpeedButton1: TSpeedButton;
    FDConnection6: TFDConnection;
    FDQuery6: TFDQuery;
    DataSource6: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Button3: TButton;
    Edit2: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

uses Unit12;

procedure TForm13.Button1Click(Sender: TObject);
begin
FDQuery6.Close;
FDQuery6.SQL.Clear;
FDQuery6.SQL.Add('select*from giris');
FDQuery6.Open;
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
FDQuery6.Locate('tc',Edit1.Text,[TLocateOption.loPartialKey]);
end;

procedure TForm13.Button3Click(Sender: TObject);
begin
fdquery6.Edit;
try
  fdquery6['izin'] := Edit2.Text;
  fdquery6.Post;
except
  fdquery6.Cancel;
end;

end;

procedure TForm13.SpeedButton1Click(Sender: TObject);
begin
Form12.show;
Form13.Close;
end;

end.
