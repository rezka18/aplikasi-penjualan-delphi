program ProjectPenjualan;

uses
  Forms,
  dashboard in 'dashboard.pas' {FormDashboard},
  UnitLogin in 'UnitLogin.pas' {FormLogin},
  UnitKategori in 'UnitKategori.pas' {FormKategori},
  UnitDataModule in 'UnitDataModule.pas' {DataModule1: TDataModule},
  UnitNew in '..\..\..\2B\Visual 1\libmysql (4)\UnitNew.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormDashboard, FormDashboard);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormKategori, FormKategori);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
