unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef;

type
  TForm6 = class(TForm)
    Image1: TImage;
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
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    DBGrid1: TDBGrid;
    FDConnection2: TFDConnection;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit10: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  x:string;

implementation

{$R *.dfm}

uses Unit3;

procedure TForm6.Button1Click(Sender: TObject);
begin
FDQuery2.Close;
FDQuery2.SQL.Clear;
FDQuery2.SQL.Add('select*from personelbilgileri');
FDQuery2.Open;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
FDQuery2.SQL.Clear;
FDQuery2.SQL.Add('insert into personelbilgileri(adisoyadi,yas,telefonno,eposta,dogumtarihi,dogumyeri,adresi,gorevi,cinsiyeti)') ;
FDQuery2.SQL.Add('values (:k1,:k2,:k3,:k4,:k5,:k6,:k7,:k8,:k9)');
FDQuery2.Params[0].AsString:=Edit1.Text;
FDQuery2.Params[1].AsString:=Edit3.Text;
FDQuery2.Params[2].AsString:=Edit7.Text;
FDQuery2.Params[3].AsString:=Edit8.Text;
FDQuery2.Params[4].AsString:=Edit5.Text;
FDQuery2.Params[5].AsString:=Edit4.Text;
FDQuery2.Params[6].AsString:=Edit9.Text;
FDQuery2.Params[7].AsString:=Edit6.Text;
FDQuery2.Params[8].AsString:=Edit2.Text;
FDQuery2.Execute;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
x:=InputBox('','','');
FDQuery2.SQL.Clear;
FDQuery2.SQL.Add('delete from personelbilgileri where adisoyadi='+QuotedStr(x));
FDQuery2.Execute;
end;






procedure TForm6.Button4Click(Sender: TObject);

begin
FDQuery2.Locate('adisoyadi',Edit10.Text,[TLocateOption.loPartialKey]);
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
Form6.Position:=poScreenCenter;
Form6.BorderStyle:=bsToolWindow;
end;

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
Form3.Show;
Form6.Close;
end;

end.
