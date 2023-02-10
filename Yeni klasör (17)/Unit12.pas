unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm12 = class(TForm)
    SpeedButton1: TSpeedButton;
    FDConnection7: TFDConnection;
    FDQuery7: TFDQuery;
    DataSource7: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;
  x:string;

implementation

{$R *.dfm}

uses Unit10, Unit11, Unit13;



procedure TForm12.Button1Click(Sender: TObject);
begin
FDQuery7.Close;
FDQuery7.SQL.Clear;
FDQuery7.SQL.Add('select*from izin');
FDQuery7.Open;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
x:=InputBox('','','');
FDQuery7.SQL.Clear;
FDQuery7.SQL.Add('delete from izin where adisoyadi='+QuotedStr(x));
FDQuery7.Execute;
end;





procedure TForm12.SpeedButton1Click(Sender: TObject);
begin
Form10.show;
Form12.Close;
end;

procedure TForm12.SpeedButton2Click(Sender: TObject);
begin
Form13.show;
Form12.Close;

end;

end.
