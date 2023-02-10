unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef;

type
  TForm11 = class(TForm)
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    FDConnection7: TFDConnection;
    FDQuery7: TFDQuery;
    DataSource7: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses Unit10;

procedure TForm11.Button1Click(Sender: TObject);
begin
FDQuery7.Close;
FDQuery7.SQL.Clear;
FDQuery7.SQL.Add('select*from izin');
FDQuery7.Open;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
FDQuery7.SQL.Clear;
FDQuery7.SQL.Add('insert into izin(adisoyadi,tcno,izintarih,adres,açiklama)') ;
FDQuery7.SQL.Add('values (:k1,:k2,:k3,:k4,:k5)');
FDQuery7.Params[0].AsString:=Edit1.Text;
FDQuery7.Params[1].AsString:=Edit2.Text;
FDQuery7.Params[2].AsString:=Edit3.Text;
FDQuery7.Params[3].AsString:=Edit4.Text;
FDQuery7.Params[4].AsString:=Edit5.Text;
FDQuery7.Execute;
end;

procedure TForm11.SpeedButton1Click(Sender: TObject);
begin
Form10.show;
Form11.Close;
end;

end.
