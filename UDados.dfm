object FrmDados: TFrmDados
  Left = 0
  Top = 0
  Caption = 'Dados'
  ClientHeight = 649
  ClientWidth = 766
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SqlConexao: TSQLConnection
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    KeepConnection = False
    LibraryName = 'dbxmys.dll'
    LoginPrompt = False
    Params.Strings = (
      'HostName=192.185.176.154'
      'Database=stark316_validaemail'
      'User_Name=stark316_ususge'
      'Password=Fvrg55472'
      'DriverUnit=DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver140.' +
        'bpl'
      'VendorLib=LIBMYSQL.dll')
    VendorLib = 'libmysql.dll'
    Connected = True
    Left = 80
    Top = 15
  end
  object SDSConsulta: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlConexao
    Left = 168
    Top = 15
  end
  object DSPConsulta: TDataSetProvider
    DataSet = SDSConsulta
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 264
    Top = 15
  end
  object CDSConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPConsulta'
    Left = 360
    Top = 15
  end
  object DSConsulta: TDataSource
    DataSet = CDSConsulta
    Left = 464
    Top = 15
  end
  object DSConsulta1: TDataSource
    DataSet = CDSConsulta1
    Left = 464
    Top = 65
  end
  object CDSConsulta1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPConsulta1'
    Left = 360
    Top = 65
  end
  object DSPConsulta1: TDataSetProvider
    DataSet = SDSConsulta1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 264
    Top = 65
  end
  object SDSConsulta1: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlConexao
    Left = 168
    Top = 65
  end
  object SDSConsulta2: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlConexao
    Left = 168
    Top = 116
  end
  object DSPConsulta2: TDataSetProvider
    DataSet = SDSConsulta2
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 264
    Top = 116
  end
  object CDSConsulta2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPConsulta2'
    Left = 360
    Top = 116
  end
  object DSConsulta2: TDataSource
    DataSet = CDSConsulta2
    Left = 464
    Top = 116
  end
  object DSConsulta3: TDataSource
    DataSet = CDSConsulta3
    Left = 464
    Top = 166
  end
  object CDSConsulta3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPConsulta3'
    Left = 360
    Top = 166
  end
  object DSPConsulta3: TDataSetProvider
    DataSet = SDSConsulta3
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 264
    Top = 166
  end
  object SDSConsulta3: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlConexao
    Left = 168
    Top = 166
  end
  object SDSConsultaPesquisa: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlConexao
    Left = 168
    Top = 217
  end
  object DSPConsultaPesquisa: TDataSetProvider
    DataSet = SDSConsultaPesquisa
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 288
    Top = 217
  end
  object CDSConsultaPesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPConsultaPesquisa'
    Left = 408
    Top = 217
  end
  object DSConsultaPesquisa: TDataSource
    DataSet = CDSConsultaPesquisa
    Left = 520
    Top = 217
  end
  object SDSConsultaAux: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlConexao
    Left = 168
    Top = 269
  end
  object DSPConsultaAux: TDataSetProvider
    DataSet = SDSConsultaAux
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 264
    Top = 269
  end
  object CDSConsultaAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPConsultaAux'
    Left = 360
    Top = 269
  end
  object DSConsultaAux: TDataSource
    DataSet = CDSConsultaAux
    Left = 464
    Top = 269
  end
  object SDSConsultaFinanceiro: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlConexao
    Left = 168
    Top = 323
  end
  object DSPConsultaFinanceiro: TDataSetProvider
    DataSet = SDSConsultaFinanceiro
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 323
  end
  object CDSConsultaFinanceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPConsultaFinanceiro'
    Left = 424
    Top = 323
  end
  object DSConsultaFinanceiro: TDataSource
    DataSet = CDSConsultaFinanceiro
    Left = 552
    Top = 323
  end
  object SDSThread1: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlConexao
    Left = 168
    Top = 387
  end
  object DSPThread1: TDataSetProvider
    DataSet = SDSThread1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 387
  end
  object CDSThread1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPThread1'
    Left = 424
    Top = 387
  end
  object DSThread1: TDataSource
    DataSet = CDSThread1
    Left = 552
    Top = 387
  end
  object SDSThread2: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlConexao
    Left = 168
    Top = 443
  end
  object DSPThread2: TDataSetProvider
    DataSet = SDSThread2
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 443
  end
  object CDSThread2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPThread2'
    Left = 424
    Top = 443
  end
  object DSThread2: TDataSource
    DataSet = CDSThread2
    Left = 552
    Top = 443
  end
  object SDSThread3: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlConexao
    Left = 168
    Top = 499
  end
  object DSPThread3: TDataSetProvider
    DataSet = SDSThread3
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 499
  end
  object CDSThread3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPThread3'
    Left = 424
    Top = 499
  end
  object DSThread3: TDataSource
    DataSet = CDSThread3
    Left = 552
    Top = 499
  end
  object SDSThread4: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlConexao
    Left = 168
    Top = 555
  end
  object DSPThread4: TDataSetProvider
    DataSet = SDSThread4
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 555
  end
  object CDSThread4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPThread4'
    Left = 424
    Top = 555
  end
  object DSThread4: TDataSource
    DataSet = CDSThread4
    Left = 552
    Top = 555
  end
  object SDSThread5: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlConexao
    Left = 168
    Top = 603
  end
  object DSPThread5: TDataSetProvider
    DataSet = SDSThread5
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 603
  end
  object CDSThread5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPThread5'
    Left = 424
    Top = 603
  end
  object DSThread5: TDataSource
    DataSet = CDSThread5
    Left = 552
    Top = 603
  end
end
