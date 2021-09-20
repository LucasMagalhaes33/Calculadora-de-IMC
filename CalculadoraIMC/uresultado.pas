unit uResultado;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, uDadosPessoa;

type

  { TfrmResultado }

  TfrmResultado = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblIMC: TLabel;
    lblSexo: TLabel;
    lblPeso: TLabel;
    lblAltura: TLabel;
    Panel1: TPanel;
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  frmResultado: TfrmResultado;

implementation

{$R *.lfm}

{ TfrmResultado }

procedure TfrmResultado.FormShow(Sender: TObject);
begin
  lblAltura.Caption  := FloatToStr(P_Dados_Pessoa.Altura);
  lblPeso.Caption    := FloatToStr(P_Dados_Pessoa.Peso);
  lblSexo.Caption    := P_Dados_Pessoa.Sexo;
  lblIMC.Caption     := P_Dados_Pessoa.IMC;
end;

end.

