object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 867
  Width = 1331
  object DataBasePrincipal: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=MasteR')
    LoginPrompt = False
    DefaultTransaction = TransPrincipal
    ServerType = 'IBServer'
    Left = 40
    Top = 40
  end
  object TransPrincipal: TIBTransaction
    DefaultDatabase = DataBasePrincipal
    Left = 104
    Top = 40
  end
  object IB_REDE: TIBDatabaseINI
    Database = DataBasePrincipal
    Username = 'SYSDBA'
    Password = 'MasteR'
    UseAppPath = ipoPathToServer
    Section = 'Database Settings'
    Left = 176
    Top = 40
  end
  object qry_cadProd_produtos: TIBQuery
    Database = DataBasePrincipal
    Transaction = TransPrincipal
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM PRODUTOS'
      'ORDER BY ID_CATEG, TITULO')
    Left = 48
    Top = 224
    object qry_cadProd_produtosID: TIntegerField
      FieldName = 'ID'
      Origin = 'PRODUTOS.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_cadProd_produtosSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'PRODUTOS.STATUS'
      Size = 1
    end
    object qry_cadProd_produtosMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = 'PRODUTOS.MARCA'
      Size = 1
    end
    object qry_cadProd_produtosDATA_INC: TDateField
      FieldName = 'DATA_INC'
      Origin = 'PRODUTOS.DATA_INC'
    end
    object qry_cadProd_produtosDATA_ALT: TDateField
      FieldName = 'DATA_ALT'
      Origin = 'PRODUTOS.DATA_ALT'
    end
    object qry_cadProd_produtosDATA_HAB: TDateField
      FieldName = 'DATA_HAB'
      Origin = 'PRODUTOS.DATA_HAB'
    end
    object qry_cadProd_produtosTITULO: TIBStringField
      FieldName = 'TITULO'
      Origin = 'PRODUTOS.TITULO'
      Size = 120
    end
    object qry_cadProd_produtosID_CATEG: TIBStringField
      FieldName = 'ID_CATEG'
      Origin = 'PRODUTOS.ID_CATEG'
      Size = 2
    end
    object qry_cadProd_produtosP_VENDA: TIBBCDField
      FieldName = 'P_VENDA'
      Origin = 'PRODUTOS.P_VENDA'
      Precision = 9
      Size = 2
    end
    object qry_cadProd_produtosP_CUSTO: TIBBCDField
      FieldName = 'P_CUSTO'
      Origin = 'PRODUTOS.P_CUSTO'
      Precision = 9
      Size = 2
    end
    object qry_cadProd_produtosBASE_CALC: TIBBCDField
      FieldName = 'BASE_CALC'
      Origin = 'PRODUTOS.BASE_CALC'
      Precision = 9
      Size = 2
    end
    object qry_cadProd_produtosFORMATO: TIBStringField
      FieldName = 'FORMATO'
      Origin = 'PRODUTOS.FORMATO'
      Size = 15
    end
    object qry_cadProd_produtosNPAGINAS: TSmallintField
      FieldName = 'NPAGINAS'
      Origin = 'PRODUTOS.NPAGINAS'
    end
    object qry_cadProd_produtosEDICAO: TSmallintField
      FieldName = 'EDICAO'
      Origin = 'PRODUTOS.EDICAO'
    end
    object qry_cadProd_produtosANO: TSmallintField
      FieldName = 'ANO'
      Origin = 'PRODUTOS.ANO'
    end
    object qry_cadProd_produtosPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = 'PRODUTOS.PESO'
      Precision = 9
      Size = 3
    end
    object qry_cadProd_produtosLOC: TIBStringField
      FieldName = 'LOC'
      Origin = 'PRODUTOS.LOC'
      Size = 10
    end
    object qry_cadProd_produtosRESENHA: TWideMemoField
      FieldName = 'RESENHA'
      Origin = 'PRODUTOS.RESENHA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object qry_cadProd_produtosCAPA: TBlobField
      FieldName = 'CAPA'
      Origin = 'PRODUTOS.CAPA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qry_cadProd_produtosPROMO: TIBStringField
      FieldName = 'PROMO'
      Origin = 'PRODUTOS.PROMO'
      FixedChar = True
      Size = 1
    end
    object qry_cadProd_produtosEST_MIN: TSmallintField
      FieldName = 'EST_MIN'
      Origin = 'PRODUTOS.EST_MIN'
    end
    object qry_cadProd_produtosEST_DISP: TSmallintField
      FieldName = 'EST_DISP'
      Origin = 'PRODUTOS.EST_DISP'
    end
    object qry_cadProd_produtosQTDOAC: TSmallintField
      FieldName = 'QTDOAC'
      Origin = 'PRODUTOS.QTDOAC'
    end
    object qry_cadProd_produtosQTCONS: TSmallintField
      FieldName = 'QTCONS'
      Origin = 'PRODUTOS.QTCONS'
    end
    object qry_cadProd_produtosQTVEND: TSmallintField
      FieldName = 'QTVEND'
      Origin = 'PRODUTOS.QTVEND'
    end
    object qry_cadProd_produtosCODIGO_BARRA: TIBStringField
      FieldName = 'CODIGO_BARRA'
      Origin = 'PRODUTOS.CODIGO_BARRA'
      FixedChar = True
      Size = 13
    end
    object qry_cadProd_produtosREF: TIBStringField
      FieldName = 'REF'
      Origin = 'PRODUTOS.REF'
      Size = 2
    end
    object qry_cadProd_produtosLUCRO: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'LUCRO'
      Origin = 'PRODUTOS.LUCRO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qry_cadProd_produtosDATALOC: TDateField
      FieldName = 'DATALOC'
      Origin = 'PRODUTOS.DATALOC'
    end
    object qry_cadProd_produtosDATAENT: TDateField
      FieldName = 'DATAENT'
      Origin = 'PRODUTOS.DATAENT'
    end
    object qry_cadProd_produtosAPLICACAO: TIBStringField
      FieldName = 'APLICACAO'
      Origin = 'PRODUTOS.APLICACAO'
      Size = 60
    end
    object qry_cadProd_produtosCOMENTARIO: TIBStringField
      FieldName = 'COMENTARIO'
      Origin = 'PRODUTOS.COMENTARIO'
      Size = 40
    end
    object qry_cadProd_produtosP_FINAL: TIBBCDField
      FieldName = 'P_FINAL'
      Origin = 'PRODUTOS.P_FINAL'
      Precision = 9
      Size = 2
    end
    object qry_cadProd_produtosSERV: TIBStringField
      FieldName = 'SERV'
      Origin = 'PRODUTOS.SERV'
      FixedChar = True
      Size = 1
    end
    object qry_cadProd_produtosPORCENT: TIBStringField
      FieldName = 'PORCENT'
      Origin = 'PRODUTOS.PORCENT'
      Size = 2
    end
    object qry_cadProd_produtosNCM: TIBStringField
      FieldName = 'NCM'
      Origin = 'PRODUTOS.NCM'
      FixedChar = True
      Size = 8
    end
    object qry_cadProd_produtosVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'PRODUTOS.VALIDADE'
    end
    object qry_cadProd_produtosNUMXML: TIntegerField
      FieldName = 'NUMXML'
      Origin = 'PRODUTOS.NUMXML'
    end
    object qry_cadProd_produtosEST_FISCAL: TSmallintField
      FieldName = 'EST_FISCAL'
      Origin = 'PRODUTOS.EST_FISCAL'
    end
    object qry_cadProd_produtosESTFISCAL: TIBBCDField
      FieldName = 'ESTFISCAL'
      Origin = 'PRODUTOS.ESTFISCAL'
      Precision = 18
      Size = 2
    end
    object qry_cadProd_produtosESTFISICO: TIBBCDField
      FieldName = 'ESTFISICO'
      Origin = 'PRODUTOS.ESTFISICO'
      Precision = 18
      Size = 2
    end
    object qry_cadProd_produtosCST: TIBStringField
      FieldName = 'CST'
      Origin = 'PRODUTOS.CST'
      FixedChar = True
      Size = 2
    end
    object qry_cadProd_produtosCSOSN: TIBStringField
      FieldName = 'CSOSN'
      Origin = 'PRODUTOS.CSOSN'
      FixedChar = True
      Size = 3
    end
    object qry_cadProd_produtosCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = 'PRODUTOS.CFOP'
      FixedChar = True
      Size = 4
    end
    object qry_cadProd_produtosICMS: TIBStringField
      FieldName = 'ICMS'
      Origin = 'PRODUTOS.ICMS'
      FixedChar = True
      Size = 2
    end
    object qry_cadProd_produtosICMSNF: TIBBCDField
      FieldName = 'ICMSNF'
      Origin = 'PRODUTOS.ICMSNF'
      Precision = 9
      Size = 2
    end
    object qry_cadProd_produtosPISNF: TIBBCDField
      FieldName = 'PISNF'
      Origin = 'PRODUTOS.PISNF'
      Precision = 9
      Size = 2
    end
    object qry_cadProd_produtosCOFINSNF: TIBBCDField
      FieldName = 'COFINSNF'
      Origin = 'PRODUTOS.COFINSNF'
      Precision = 9
      Size = 2
    end
    object qry_cadProd_produtosVLRSEM: TIBBCDField
      FieldName = 'VLRSEM'
      Origin = 'PRODUTOS.VLRSEM'
      Precision = 9
      Size = 2
    end
    object qry_cadProd_produtosVLRCOM: TIBBCDField
      FieldName = 'VLRCOM'
      Origin = 'PRODUTOS.VLRCOM'
      Precision = 9
      Size = 2
    end
    object qry_cadProd_produtosNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Origin = 'PRODUTOS.NUMNF'
    end
    object qry_cadProd_produtosDTENT: TDateField
      FieldName = 'DTENT'
      Origin = 'PRODUTOS.DTENT'
    end
    object qry_cadProd_produtosCHAVENF: TIBStringField
      FieldName = 'CHAVENF'
      Origin = 'PRODUTOS.CHAVENF'
      Size = 44
    end
    object qry_cadProd_produtosVLRNF: TIBBCDField
      FieldName = 'VLRNF'
      Origin = 'PRODUTOS.VLRNF'
      Precision = 9
      Size = 2
    end
    object qry_cadProd_produtosCEST: TIBStringField
      FieldName = 'CEST'
      Origin = 'PRODUTOS.CEST'
      FixedChar = True
      Size = 7
    end
    object qry_cadProd_produtosINVENT: TIBStringField
      FieldName = 'INVENT'
      Origin = 'PRODUTOS.INVENT'
      FixedChar = True
      Size = 1
    end
    object qry_cadProd_produtosPORCETAGEM: TIBBCDField
      FieldName = 'PORCETAGEM'
      Origin = 'PRODUTOS.PORCETAGEM'
      Precision = 18
      Size = 2
    end
    object qry_cadProd_produtosLIMIT_DESC: TIBBCDField
      FieldName = 'LIMIT_DESC'
      Origin = 'PRODUTOS.LIMIT_DESC'
      Precision = 18
      Size = 2
    end
  end
  object ds_cadProd_produtos: TDataSource
    DataSet = qry_cadProd_produtos
    Left = 48
    Top = 280
  end
  object rept_produtos: TfrxReport
    Version = '6.6.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44547.350583958330000000
    ReportOptions.LastChange = 44547.395432152780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 160
    Top = 280
    Datasets = <
      item
        DataSet = rept_ds_produtos
        DataSetName = 'dsProdutos'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Picture1: TfrxPictureView
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 7.559060000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
    end
  end
  object rept_ds_produtos: TfrxDBDataset
    UserName = 'dsProdutos'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 160
    Top = 224
  end
end
