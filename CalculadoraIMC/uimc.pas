unit uIMC;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, uRequisitos, uResultado, uDadosPessoa;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    btnResultado: TButton;
    btnRequisitos: TButton;
    cbSexo: TComboBox;
    edtAltura: TEdit;
    edtPeso: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Timer1: TTimer;
    procedure btnRequisitosClick(Sender: TObject);
    procedure btnResultadoClick(Sender: TObject);
    procedure edtAlturaEnter(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation
{$R *.lfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnRequisitosClick(Sender: TObject);
begin
  frmRequisitos.ShowModal;
end;

procedure TfrmPrincipal.btnResultadoClick(Sender: TObject);
begin
  try
    P_Dados_Pessoa.Altura  := StrToFloat(edtAltura.Text);
    P_Dados_Pessoa.Peso    := StrToFloat(edtPeso.Text);
    P_Dados_Pessoa.Sexo    := cbSexo.Text;
    P_Dados_Pessoa.IMC     := CalcularIMC(P_Dados_Pessoa.Peso,
                                          P_Dados_Pessoa.Altura,
                                          P_Dados_Pessoa.Sexo);
    frmResultado.ShowModal;

  except
    ShowMessage('Dados Inválidos!');
  end;
end;

procedure TfrmPrincipal.edtAlturaEnter(Sender: TObject);
begin
  edtAltura.Color  := clBlue;
end;


end.

