unit UnitLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormLogin = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses dashboard;

{$R *.dfm}

procedure TFormLogin.btn1Click(Sender: TObject);
begin
FormDashboard.mm1.Items[3].Visible := True;
if edt1.Text = 'admin' then
begin
  FormDashboard.mm1.Items[1].Visible := True;
  FormDashboard.mm1.Items[2].Visible := False;
  FormDashboard.mm1.Items[3].Visible := False;
end else if edt1.Text = 'kasir' then
begin
  FormDashboard.mm1.Items[1].Visible := False;
  FormDashboard.mm1.Items[2].Visible := True;
  FormDashboard.mm1.Items[3].Visible := False;
end else if edt1.Text = 'pemilik' then
begin
  FormDashboard.mm1.Items[1].Visible := False;
  FormDashboard.mm1.Items[2].Visible := False;
  FormDashboard.mm1.Items[3].Visible := True;
end;
FormLogin.Close;
end;

end.
