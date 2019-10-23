unit UDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, DBXMSSQL, FMTBcd, DB, DBClient, Provider, SqlExpr,
  DBXMySql;

type
  TFrmDados = class(TForm)
    SqlConexao: TSQLConnection;
    SDSConsulta: TSQLDataSet;
    DSPConsulta: TDataSetProvider;
    CDSConsulta: TClientDataSet;
    DSConsulta: TDataSource;
    DSConsulta1: TDataSource;
    CDSConsulta1: TClientDataSet;
    DSPConsulta1: TDataSetProvider;
    SDSConsulta1: TSQLDataSet;
    SDSConsulta2: TSQLDataSet;
    DSPConsulta2: TDataSetProvider;
    CDSConsulta2: TClientDataSet;
    DSConsulta2: TDataSource;
    DSConsulta3: TDataSource;
    CDSConsulta3: TClientDataSet;
    DSPConsulta3: TDataSetProvider;
    SDSConsulta3: TSQLDataSet;
    SDSConsultaPesquisa: TSQLDataSet;
    DSPConsultaPesquisa: TDataSetProvider;
    CDSConsultaPesquisa: TClientDataSet;
    DSConsultaPesquisa: TDataSource;
    SDSConsultaAux: TSQLDataSet;
    DSPConsultaAux: TDataSetProvider;
    CDSConsultaAux: TClientDataSet;
    DSConsultaAux: TDataSource;
    SDSConsultaFinanceiro: TSQLDataSet;
    DSPConsultaFinanceiro: TDataSetProvider;
    CDSConsultaFinanceiro: TClientDataSet;
    DSConsultaFinanceiro: TDataSource;
    SDSThread1: TSQLDataSet;
    DSPThread1: TDataSetProvider;
    CDSThread1: TClientDataSet;
    DSThread1: TDataSource;
    SDSThread2: TSQLDataSet;
    DSPThread2: TDataSetProvider;
    CDSThread2: TClientDataSet;
    DSThread2: TDataSource;
    SDSThread3: TSQLDataSet;
    DSPThread3: TDataSetProvider;
    CDSThread3: TClientDataSet;
    DSThread3: TDataSource;
    SDSThread4: TSQLDataSet;
    DSPThread4: TDataSetProvider;
    CDSThread4: TClientDataSet;
    DSThread4: TDataSource;
    SDSThread5: TSQLDataSet;
    DSPThread5: TDataSetProvider;
    CDSThread5: TClientDataSet;
    DSThread5: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDados: TFrmDados;

implementation

uses UGlobal;

{$R *.dfm}

end.
