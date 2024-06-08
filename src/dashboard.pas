unit dashboard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls;

type
  TFormDashboard = class(TForm)
    mm1: TMainMenu;
    DASHBOARD: TMenuItem;
    DATAMASTER1: TMenuItem;
    RANSAKSI1: TMenuItem;
    LAPORAN1: TMenuItem;
    LOGIN1: TMenuItem;
    LOGOUT1: TMenuItem;
    KATEGORI1: TMenuItem;
    SATUAN1: TMenuItem;
    SUPPLIER1: TMenuItem;
    KUSTOMER1: TMenuItem;
    LAPORAN2: TMenuItem;
    PEMBELIAN1: TMenuItem;
    LAPORANPENJUALAN1: TMenuItem;
    LAPORANSTOKBARANG1: TMenuItem;
    LAPORANBARANG1: TMenuItem;
    img1: TImage;
    procedure LOGIN1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure KATEGORI1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDashboard: TFormDashboard;

implementation

uses UnitLogin, UnitKategori;

{$R *.dfm}

procedure TFormDashboard.LOGIN1Click(Sender: TObject);
begin
FormLogin.Show;
end;

procedure TFormDashboard.FormShow(Sender: TObject);
begin
  mm1.Items[1].Visible := False;
  mm1.Items[2].Visible := False;
  mm1.Items[3].Visible := False;
end;

procedure TFormDashboard.KATEGORI1Click(Sender: TObject);
begin
FormKategori.Show;
end;

end.
