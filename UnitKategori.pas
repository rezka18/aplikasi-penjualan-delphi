unit UnitKategori;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TFormKategori = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lbl2: TLabel;
    edt2: TEdit;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKategori: TFormKategori;
  a: string;

implementation

uses
  UnitDataModule;

{$R *.dfm}

procedure TFormKategori.btn1Click(Sender: TObject);
begin
DataModule1.Zkategori.SQL.Clear;
DataModule1.Zkategori.SQL.Add('insert into kategori values(null,"'+edt1.Text+'")');
DataModule1.Zkategori.ExecSQL;

DataModule1.Zkategori.SQL.Clear;
DataModule1.Zkategori.SQL.Add('select * from kategori');
DataModule1.Zkategori.Open;
ShowMessage('Data Berhasil Disimpan');
end;

procedure TFormKategori.btn2Click(Sender: TObject);
begin
DataModule1.Zkategori.SQL.Clear;
DataModule1.Zkategori.SQL.Add('update kategori set name="'+edt1.Text+'" where id="'+a+'"');
DataModule1.Zkategori.ExecSQL;

DataModule1.Zkategori.SQL.Clear;
DataModule1.Zkategori.SQL.Add('select * from kategori');
DataModule1.Zkategori.Open;
ShowMessage('Data Berhasil Diupdate');
end;

procedure TFormKategori.btn3Click(Sender: TObject);
begin
DataModule1.Zkategori.SQL.Clear;
DataModule1.Zkategori.SQL.Add('delete from kategori where id="'+a+'"');
DataModule1.Zkategori.ExecSQL;

DataModule1.Zkategori.SQL.Clear;
DataModule1.Zkategori.SQL.Add('select * from kategori');
DataModule1.Zkategori.Open;
ShowMessage('Data Berhasil Dihapus');
end;

procedure TFormKategori.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule1.Zkategori.Fields[1].AsString;
a:= DataModule1.Zkategori.Fields[0].AsString;
end;

end.
