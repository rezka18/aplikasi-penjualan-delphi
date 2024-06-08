object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 221
  Top = 162
  Height = 278
  Width = 334
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Kuliah\2B\Visual 1\libmysql (4)\libmysql.dll'
    Left = 24
    Top = 24
  end
  object Zkategori: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * from kategori')
    Params = <>
    Left = 88
    Top = 32
  end
  object ds1: TDataSource
    DataSet = Zkategori
    Left = 56
    Top = 88
  end
end
