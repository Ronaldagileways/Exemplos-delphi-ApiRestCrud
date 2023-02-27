object Wk_Data: TWk_Data
  OldCreateOrder = False
  Height = 358
  Width = 475
  object Wk_Connect: TFDConnection
    Params.Strings = (
      'Database=wk'
      'User_Name=postgres'
      'Password=1234'
      'DriverID=PG')
    TxOptions.AutoStop = False
    Transaction = Wk_Transaction
    Left = 40
    Top = 64
  end
  object Wk_PgDriverLink: TFDPhysPgDriverLink
    VendorLib = 'C:\Diario\Ronald\Wk\libpq.dll'
    Left = 40
    Top = 152
  end
  object Wk_Transaction: TFDTransaction
    Options.AutoStop = False
    Connection = Wk_Connect
    Left = 168
    Top = 64
  end
  object Wk_QryAux1: TFDQuery
    Connection = Wk_Connect
    Left = 168
    Top = 160
  end
  object Wk_DSP_aux1: TDataSetProvider
    DataSet = Wk_QryAux1
    Left = 168
    Top = 216
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = Wk_QryAux1
    FieldDefs = <>
    Left = 328
    Top = 112
  end
  object ParamsAdapter1: TParamsAdapter
    Active = False
    AutoPost = False
    Left = 320
    Top = 264
  end
  object RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter
    Dataset = Wk_QryAux1
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 336
    Top = 200
  end
  object RESTResponse1: TRESTResponse
    Left = 184
    Top = 288
  end
  object TmCeps: TTimer
    Interval = 432000
    OnTimer = TmCepsTimer
    Left = 304
    Top = 32
  end
end
