object Frm_principal: TFrm_principal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 498
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 24
    Width = 706
    Height = 89
    DataSource = DM.ds_cadProd_produtos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 527
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Cilque'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 639
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
  end
  object CardPanel1: TCardPanel
    Left = 200
    Top = 152
    Width = 321
    Height = 217
    ActiveCard = c_analise
    Caption = 'CardPanel1'
    TabOrder = 3
    object c_analise: TCard
      Left = 1
      Top = 1
      Width = 319
      Height = 215
      Caption = 'c_analise'
      CardIndex = 0
      TabOrder = 0
      object Label1: TLabel
        Left = 96
        Top = 80
        Width = 84
        Height = 16
        Caption = 'Analise Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object c_vendas: TCard
      Left = 1
      Top = 1
      Width = 319
      Height = 215
      Caption = 'c_vendas'
      CardIndex = 1
      TabOrder = 1
      object Label2: TLabel
        Left = 168
        Top = 88
        Width = 35
        Height = 13
        Caption = 'Vendas'
      end
    end
  end
  object Button3: TButton
    Left = 24
    Top = 152
    Width = 113
    Height = 25
    Caption = 'Button3'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 24
    Top = 200
    Width = 113
    Height = 25
    Caption = 'Button4'
    TabOrder = 5
    OnClick = Button4Click
  end
  object StackPanel1: TStackPanel
    Left = 10
    Top = 231
    ControlCollection = <
      item
        Control = Label3
      end
      item
        Control = Button5
      end
      item
        Control = ToolBar1
        HorizontalPositioning = sphpFill
        VerticalPositioning = spvpTop
      end>
    TabOrder = 6
    object Label3: TLabel
      Left = 1
      Top = 1
      Width = 31
      Height = 13
      Caption = 'Label3'
    end
    object Button5: TButton
      Left = 1
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Button5'
      TabOrder = 0
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 43
      Width = 183
      Height = 29
      Caption = 'ToolBar1'
      TabOrder = 1
    end
  end
  object Button6: TButton
    Left = 288
    Top = 392
    Width = 153
    Height = 25
    Caption = 'Button6'
    TabOrder = 7
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '6.6.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44551.391337638900000000
    ReportOptions.LastChange = 44575.752782939800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure img_logoOnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  arquivo: string;'
      'begin'
      '  arquivo := report.Variables['#39'path_logo'#39'];'
      '  img_logo.Picture.LoadFromFile(arquivo);'
      '  logoPromissoria.Picture.LoadFromFile(arquivo);'
      'end;'
      ''
      'procedure img_logo2OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  arquivo: string;'
      'begin'
      '  arquivo := report.Variables['#39'path_logo'#39'];'
      '  img_logo2.Picture.LoadFromFile(arquivo);'
      'end;'
      ''
      'begin'
      '  Page1.Visible :=  <Configuracao.ViaAVista> = '#39'S'#39';'
      '  Page2.Visible :=  <Configuracao.ViaAPrazo> = '#39'S'#39';'
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 608
    Top = 136
    Datasets = <
      item
        DataSetName = 'DSProdutosNfe'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Visible = False
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 6.500000000000000000
      RightMargin = 6.500000000000000000
      TopMargin = 6.500000000000000000
      BottomMargin = 6.500000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 16.677180000000000000
        Top = 200.315090000000000000
        Width = 744.567410000000000000
        object Memo1: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 0.110665828031000000
          Top = 1.000000000000000000
          Width = 512.125984251969000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 512.236650080000000000
          Top = 1.000000000000000000
          Width = 77.480344250000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 695.543780630000000000
          Top = 1.000000000000000000
          Width = 49.133858270000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Total')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 665.307552830000000000
          Top = 1.000000000000000000
          Width = 30.236227800000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtd')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 616.173704330000000000
          Top = 1.000000000000000000
          Width = 49.133848500000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Unit')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 589.716994330000000000
          Top = 1.000000000000000000
          Width = 26.456710000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Un')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 16.677180000000000000
          Width = 744.566929130000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object mDataPrincipal: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.897650000000000000
        Top = 238.110390000000000000
        Width = 744.567410000000000000
        DataSetName = 'DSProdutosNfe'
        RowCount = 0
        object DSClienteCF: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 0.000441809999999987
          Top = 2.000000000000000000
          Width = 512.125984250000000000
          Height = 15.118110240000000000
          DataSetName = 'DSProdutosNfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSProdutosNfe."PRODXPROD"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 512.126426060000000000
          Top = 2.000000000000000000
          Width = 77.480344250000000000
          Height = 15.118110240000000000
          DataSetName = 'DSProdutosNfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSProdutosNfe."PRODCPROD"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 589.606770310000000000
          Top = 2.000000000000000000
          Width = 26.456700240000000000
          Height = 15.118110240000000000
          DataSetName = 'DSProdutosNfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSProdutosNfe."PRODUCOM"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 616.063470550000000000
          Top = 2.000000000000000000
          Width = 49.133860710000000000
          Height = 15.118110240000000000
          DataSetName = 'DSProdutosNfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSProdutosNfe."PRODVUNCOM"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 665.197331260000000000
          Top = 2.000000000000000000
          Width = 30.236220470000000000
          Height = 15.118110240000000000
          DataSetName = 'DSProdutosNfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSProdutosNfe."PRODQCOM"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 695.433551730000000000
          Top = 2.000000000000000000
          Width = 49.133858270000000000
          Height = 15.118110240000000000
          DataSetName = 'DSProdutosNfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSProdutosNfe."PRODVPROD"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 17.897650000000000000
          Width = 744.566929130000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object InforComercio: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 120.929190000000000000
        Top = 18.897650000000000000
        Width = 744.567410000000000000
        object img_logo: TfrxPictureView
          AllowVectorExport = True
          Top = 4.881880000000000000
          Width = 166.299212600000000000
          Height = 56.692950000000000000
          OnBeforePrint = 'img_logoOnBeforePrint'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 0.102350000000000000
          Width = 287.244160390000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ: [Emitente.CNPJ] [Emitente.Razao]'
            '[Emitente.XLgr], [Emitente.nro] - [Emitente.xBairro]'
            '[Emitente.XMun], [Emitente.UF]'
            '[IIF(<Emitente.Fone><>'#39#39','#39'Fone: '#39'+<Emitente.Fone>,'#39#39')]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 120.929190000000000000
          Width = 744.567290390000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 463.102660000000000000
          Top = 57.472480000000000000
          Width = 147.401670000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data: [Identifica'#231#227'o.DataEmissao] ')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 57.692950000000000000
          Width = 132.283430390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186': [Identifica'#231#227'o.CodPedido] ')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Top = 78.252010000000000000
          Width = 302.362280390000000000
          Height = 17.007874015748000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente: [Cliente.Fantasia]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 78.188976380000000000
          Width = 196.535440390000000000
          Height = 17.007874015748000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF/CNPJ: [Cliente.CPFCNPJ]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 499.677490000000000000
          Top = 78.188976380000000000
          Width = 245.669330390000000000
          Height = 17.007874015748000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Apelido: [Cliente.Apelido]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 463.102660000000000000
          Width = 279.685100390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor: [Identifica'#231#227'o.Vendedor]')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Top = 99.370130000000000000
          Width = 498.897840390000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o: [Cliente.Endere'#231'oCompleto]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 73.913420000000000000
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 463.102364650000000000
          Top = 19.157493330000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo Venda:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693201420000000000
          Top = 19.275590550000000000
          Width = 207.874086540000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Identifica'#231#227'o.TipoVenda]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 463.102660000000000000
          Top = 38.314986670000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma pagamento:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 570.622450000000000000
          Top = 38.173228350000000000
          Width = 174.236271730000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Identifica'#231#227'o.FormaPagamento]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 99.464554720000000000
          Width = 154.960610390000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade: [Cliente.Cidade]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 166.299212600000000000
          Top = 0.102350000000000000
          Height = 73.700792280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 456.323130000000000000
          Top = 0.102350000000000000
          Height = 73.700792280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Top = 99.464554720000000000
          Width = 90.708600390000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UF: [Cliente.UF]')
          ParentFont = False
        end
      end
      object FooterProdutos: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 177.756030000000000000
        Top = 279.685220000000000000
        Width = 744.567410000000000000
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 481.512177170000000000
          Top = 18.677180000000000000
          Width = 162.519790000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtd. total de itens')
          ParentFont = False
        end
        object COUNT: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 644.031967170000000000
          Top = 18.677180000000000000
          Width = 100.535442830000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(mDataPrincipal,1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 481.512177170000000000
          Top = 33.905526460000000000
          Width = 162.519790000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor total dos produtos R$')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 481.512177170000000000
          Top = 49.133872910000000000
          Width = 162.519790000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor descontos R$')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 481.512177170000000000
          Top = 64.362219370000000000
          Width = 162.519790000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Entrada R$')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 481.512277250000000000
          Top = 94.818912280000000000
          Width = 162.519689920000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor total da nota R$')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 644.031967170000000000
          Top = 49.133872910000000000
          Width = 100.535442830000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSProdutosNfe."DESC2"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 644.031967170000000000
          Top = 64.362219370000000000
          Width = 100.535442830000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSProdutosNfe."DESC1"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 644.031967170000000000
          Top = 94.818912280000000000
          Width = 100.535442830000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSProdutosNfe."TOTALNF"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 481.512277240000000000
          Top = 79.590565830000000000
          Width = 263.055132760000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Dinheiro R$: [Identifica'#231#227'o.Dinheiro] - Troco R$: [Identifica'#231#227'o' +
              '.Troco]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 115.385900000000000000
          Width = 744.566929130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Top = 116.063080000000000000
          Width = 744.567290390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Emitente.Fantasia]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Top = 131.181200000000000000
          Width = 744.567290390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'agradece a prefer'#234'ncia, volte sempre!')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 43.472480000000000000
          Width = 328.818990390000000000
          Height = 51.023646460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Obs.: [Identifica'#231#227'o.Observacao]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Top = 147.519790000000000000
          Width = 744.566929130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo37: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 644.031967170000000000
          Top = 33.905526460000000000
          Width = 100.535442830000000000
          Height = 15.118110240000000000
          DataSetName = 'DSProdutosNfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSProdutosNfe."TOTALPROD"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Width = 744.567290390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recibo de venda n'#227'o fiscal')
          ParentFont = False
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Width = 744.566929133858000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
    object Page2: TfrxReportPage
      Visible = False
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 6.500000000000000000
      RightMargin = 6.500000000000000000
      TopMargin = 6.500000000000000000
      BottomMargin = 6.500000000000000000
      Frame.Typ = []
      MirrorMode = []
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 120.929190000000000000
        Top = 18.897650000000000000
        Width = 744.567410000000000000
        object logoPromissoria: TfrxPictureView
          AllowVectorExport = True
          Top = 4.881880000000000000
          Width = 166.299212600000000000
          Height = 56.692950000000000000
          OnBeforePrint = 'img_logoOnBeforePrint'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 0.102350000000000000
          Width = 287.244160390000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ: [Emitente.CNPJ] [Emitente.Razao]'
            '[Emitente.XLgr], [Emitente.nro] - [Emitente.xBairro]'
            '[Emitente.XMun], [Emitente.UF]'
            '[IIF(<Emitente.Fone><>'#39#39','#39'Fone: '#39'+<Emitente.Fone>,'#39#39')]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 120.929190000000000000
          Width = 744.567290390000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 463.102660000000000000
          Top = 57.472480000000000000
          Width = 147.401670000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data: [Identifica'#231#227'o.DataEmissao] ')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 57.692950000000000000
          Width = 132.283430390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186': [Identifica'#231#227'o.CodPedido] ')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Top = 78.252010000000000000
          Width = 302.362280390000000000
          Height = 17.007874015748000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente: [Cliente.Fantasia]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 78.188976380000000000
          Width = 196.535440390000000000
          Height = 17.007874015748000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF/CNPJ: [Cliente.CPFCNPJ]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 499.677490000000000000
          Top = 78.188976380000000000
          Width = 245.669330390000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Apelido: [Cliente.Apelido]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 463.102660000000000000
          Width = 279.685100390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor: [Identifica'#231#227'o.Vendedor]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Top = 99.370130000000000000
          Width = 498.897840390000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o: [Cliente.Endere'#231'oCompleto]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Top = 73.913420000000000000
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 463.102364650000000000
          Top = 19.157493330000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo Venda:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693201420000000000
          Top = 19.275590550000000000
          Width = 207.874086540000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Identifica'#231#227'o.TipoVenda]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 463.102660000000000000
          Top = 38.314986670000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma pagamento:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 570.622450000000000000
          Top = 38.173228350000000000
          Width = 174.236271730000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Identifica'#231#227'o.FormaPagamento]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 99.464554720000000000
          Width = 154.960610390000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade: [Cliente.Cidade]')
          ParentFont = False
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 166.299212600000000000
          Top = 0.102350000000000000
          Height = 73.700792280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 456.323130000000000000
          Top = 0.102350000000000000
          Height = 73.700792280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Top = 99.464554720000000000
          Width = 90.708600390000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UF: [Cliente.UF]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 16.677180000000000000
        Top = 200.315090000000000000
        Width = 744.567410000000000000
        object Memo52: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 0.110665830000000000
          Top = 1.000000000000000000
          Width = 512.125984250000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 512.236650080000000000
          Top = 1.000000000000000000
          Width = 77.480344250000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 695.543780630000000000
          Top = 1.000000000000000000
          Width = 49.133858270000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Total')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 665.307552830000000000
          Top = 1.000000000000000000
          Width = 30.236227800000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtd')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 616.173704330000000000
          Top = 1.000000000000000000
          Width = 49.133848500000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Unit')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 589.716994330000000000
          Top = 1.000000000000000000
          Width = 26.456710000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Un')
          ParentFont = False
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Top = 16.677180000000000000
          Width = 744.566929130000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object mDataPrincipal2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.897650000000000000
        Top = 238.110390000000000000
        Width = 744.567410000000000000
        DataSetName = 'DSProdutosNfe'
        RowCount = 0
        object Memo58: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 0.000441809999999987
          Top = 2.000000000000000000
          Width = 512.125984250000000000
          Height = 15.118110240000000000
          DataSetName = 'DSProdutosNfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSProdutosNfe."PRODXPROD"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 512.126426060000000000
          Top = 2.000000000000000000
          Width = 77.480344250000000000
          Height = 15.118110240000000000
          DataSetName = 'DSProdutosNfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSProdutosNfe."PRODCPROD"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 589.606770310000000000
          Top = 2.000000000000000000
          Width = 26.456700240000000000
          Height = 15.118110240000000000
          DataSetName = 'DSProdutosNfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSProdutosNfe."PRODUCOM"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 616.063470550000000000
          Top = 2.000000000000000000
          Width = 49.133860710000000000
          Height = 15.118110240000000000
          DataSetName = 'DSProdutosNfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSProdutosNfe."PRODVUNCOM"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 665.197331260000000000
          Top = 2.000000000000000000
          Width = 30.236220470000000000
          Height = 15.118110240000000000
          DataSetName = 'DSProdutosNfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSProdutosNfe."PRODQCOM"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 695.433551730000000000
          Top = 2.000000000000000000
          Width = 49.133858270000000000
          Height = 15.118110240000000000
          DataSetName = 'DSProdutosNfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSProdutosNfe."PRODVPROD"]')
          ParentFont = False
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Top = 17.897650000000000000
          Width = 744.566929130000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 154.960730000000000000
        Top = 279.685220000000000000
        Width = 744.567410000000000000
        object Memo64: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 481.512177170000000000
          Top = 18.677180000000000000
          Width = 162.519790000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtd. total de itens')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 644.031967170000000000
          Top = 18.677180000000000000
          Width = 100.535442830000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(mDataPrincipal2,1)]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 481.512177170000000000
          Top = 33.905526460000000000
          Width = 162.519790000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor total dos produtos R$')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 481.512177170000000000
          Top = 49.133872910000000000
          Width = 162.519790000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor descontos R$')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 481.512177170000000000
          Top = 64.362219370000000000
          Width = 162.519790000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Entrada R$')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 481.512277250000000000
          Top = 94.818912280000000000
          Width = 162.519689920000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor total da nota R$')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 644.031967170000000000
          Top = 49.133872910000000000
          Width = 100.535442830000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSProdutosNfe."DESC2"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 644.031967170000000000
          Top = 64.362219370000000000
          Width = 100.535442830000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSProdutosNfe."DESC1"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 644.031967170000000000
          Top = 94.818912280000000000
          Width = 100.535442830000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSProdutosNfe."TOTALNF"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 481.512277240000000000
          Top = 79.590565830000000000
          Width = 263.055132760000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Dinheiro R$: [Identifica'#231#227'o.Dinheiro] - Troco R$: [Identifica'#231#227'o' +
              '.Troco]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 115.385900000000000000
          Width = 744.566929130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Top = 116.063080000000000000
          Width = 744.567290390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Emitente.Fantasia]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Top = 131.181200000000000000
          Width = 744.567290390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'agradece a prefer'#234'ncia, volte sempre!')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 43.472480000000000000
          Width = 328.818990390000000000
          Height = 51.023646460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Obs.: [Identifica'#231#227'o.Observacao]')
          ParentFont = False
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Top = 147.519790000000000000
          Width = 744.566929130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo77: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 644.031967170000000000
          Top = 33.905526460000000000
          Width = 100.535442830000000000
          Height = 15.118110240000000000
          DataSetName = 'DSProdutosNfe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSProdutosNfe."TOTALPROD"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Width = 744.567290390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recibo de venda n'#227'o fiscal')
          ParentFont = False
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Width = 744.566929133858000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Promissoria: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 269.094620000000000000
        Top = 457.323130000000000000
        Width = 744.567410000000000000
        RowCount = 1
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 39.307086610000000000
          Top = 209.598640000000000000
          Width = 702.992196770000000000
          Height = 18.897637800000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 39.307086610000000000
          Top = 167.244280000000000000
          Width = 702.992196770000000000
          Height = 18.897637800000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 670.197280000000000000
          Top = 8.504020000000000000
          Width = 71.811023620000000000
          Height = 18.897637800000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 636.961040000000000000
          Top = 36.519790000000000000
          Width = 105.070866141732000000
          Height = 18.897637800000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Top = 65.031540000000000000
          Width = 37.795275590000000000
          Height = 200.314963070000000000
          Frame.Typ = []
          Picture.Data = {
            07544269746D6170BE4E0000424DBE4E00000000000036040000280000003C00
            00003E0100000100080000000000884A0000232E0000232E0000000100000000
            0000000000000101010002020200030303000404040005050500060606000707
            070008080800090909000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F
            0F00101010001111110012121200131313001414140015151500161616001717
            170018181800191919001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F
            1F00202020002121210022222200232323002424240025252500262626002727
            270028282800292929002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F
            2F00303030003131310032323200333333003434340035353500363636003737
            370038383800393939003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F
            3F00404040004141410042424200434343004444440045454500464646004747
            470048484800494949004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F
            4F00505050005151510052525200535353005454540055555500565656005757
            570058585800595959005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F
            5F00606060006161610062626200636363006464640065656500666666006767
            670068686800696969006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F
            6F00707070007171710072727200737373007474740075757500767676007777
            770078787800797979007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F
            7F00808080008181810082828200838383008484840085858500868686008787
            870088888800898989008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F
            8F00909090009191910092929200939393009494940095959500969696009797
            970098989800999999009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F
            9F00A0A0A000A1A1A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7
            A700A8A8A800A9A9A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAF
            AF00B0B0B000B1B1B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7
            B700B8B8B800B9B9B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBF
            BF00C0C0C000C1C1C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7
            C700C8C8C800C9C9C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCF
            CF00D0D0D000D1D1D100D2D2D200D3D3D300D4D4D400D5D5D500D6D6D600D7D7
            D700D8D8D800D9D9D900DADADA00DBDBDB00DCDCDC00DDDDDD00DEDEDE00DFDF
            DF00E0E0E000E1E1E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E7E7
            E700E8E8E800E9E9E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00EFEF
            EF00F0F0F000F1F1F100F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7
            F700F8F8F800F9F9F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEFFFFFFEEFFFF
            FFFFF3FDFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE28DFFFFFF9ED2FFFFFFB1C8
            FFFFFF7DFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E40FFFFFF5B84FFFFFF6E84FFFFFE2C
            C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF5B1BD9FFF62338FFFFFE2D41FFFFCB1B84FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFF5222D8BFFB92E1CCFFFCC2920E2FF882D41FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA8A8A8A8A8A8A8A8A8A8A8A8A
            8A8A8A6F3A853EFF767E4F81FF886B559FFF45A020E2FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD71B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
            7DC91BD633C1A036FF45AE985CE51FEF54638A8A8A8A8A8A8A8A8A8A8A8A8A8A
            8ABBFFFFFFFFFFFFFFFFFFD71B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1BC0FD2B87
            26FAED1FCA1FEFDB2AA351FF981B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B7BFFFF
            FFFFFFFFFFFFFFD73E919191919191919191919191919192FAFF718563FFFF71
            A350FFFF7D5F94FFDB1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B7BFFFFFFFFFFFF
            FFFFFFD75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED4DA7FFFFF06093FFFF
            EB23D8FFFF9B9494949494949494949494949494707BFFFFFFFFFFFFFFFFFFD7
            5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC1EE9FFFFF824D7FFFFBD37FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7BFFFFFFFFFFFFFFFF8DA35FA98787
            8787878787878787878787A2FFFFAA49EDFFFFBE36EDFFFF797AEDFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFBC7BFFFFFFFFFFFFFFFF29745F5D1B1B1B1B1B1B
            1B1B1B1B1B1B1B24F8FF678C88ECFF7A7974FFFF36AA91FFE187878787878787
            8787878787878787997B9BD6FFFFFFFFFFFF29745F5D1B1B1B1B1B1B1B1B1B1B
            1B1B1B1BBDFC29D058AAFF37B71EECD824B04DFF931B1B1B1B1B1B1B1B1B1B1B
            1B1B1B1B7A7B44B0FFFFFFFFFFFF31A95FB49494949494949494949494949456
            79C530FF8D67D823F849AA9360E91EEC501B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
            7A7B44B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD368072FF
            D128905FFF8C6750A3FF49991F9298989898989898989898989898989E7B68B0
            FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82329B6FFFF3129A2
            FFD0261FE6FF8C2945FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7B88B0FFFFFFFF
            FFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6021F4FFFF721BE5FFFF3045
            FFFFD01B88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7B88B0FFFFFFFFFFFF37D7
            5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA358FFFFFFB645FFFFFF7288FFFFFF30
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7B89B0FFFFFFFFFFFF37D75FFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE69BFFFFFFF58DFFFFFFB6CCFFFFFF84FEFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFBC7B89B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF4FFFFFFFFF4FFFFFFF5FEFFFFFFF4FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFBC7B8AB0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFBC7B8BB0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            BC7B8CB0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7B8DB0
            FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7B8EB0FFFFFFFF
            FFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7B8FB0FFFFFFFFFFFF37D7
            5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7B8FB0FFFFFFFFFFFF37D75FFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFBC7B90B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFBC7B91B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFBC7B92B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFDBBC
            BCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCF3FFFFFFFFFFFFFFFFFFFF
            BC7B92B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFF740000000000
            0000000000000000000000000000000000CEFFFFFFFFFFFFFFFFFFFFBC7B93B0
            FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFF74000000000000000000
            00000000000000000000000000CEFFFFFFFFFFFFFFFFFFFFBC7B94B0FFFFFFFF
            FFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFF74000000005D6161614000000003
            606161616161616161E1FFFFFFFFFFFFFFFFFFFFBC7B95B0FFFFFFFFFFFF37D7
            5FFFFFFFFFFFFFFFFFFFFFFFFFFF7400000000F5FFFFFFA90000000079E4FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7B95B0FFFFFFFFFFFF37D75FFFFFFF
            FFFFFFFFFFFFFFFFFFFF7800000000BDFFFFFB540000000000022B659CD6FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFBC7B96B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFF
            FFFFFFFFFFFF9500000000021F3A170000000003000000000000124980EEFFFF
            FFFFFFFFFFFFFFFFBC7B97B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFF
            FFFFED1F0000000000000000000063C1280000000000000000CEFFFFFFFFFFFF
            FFFFFFFFBC7B98B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC
            803107000000061F5FC8FFFFFFCE864D1600000000CEFFFFFFFFFFFFFFFFFFFF
            BC7B99B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEA
            DEECFFFFFFFFFFFFFFFFFFFFFFDEA8713BD3FFFFFFFFFFFFFFFFFFFFBC7B9AB0
            FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFE8D4D4D4D4D4D4D4D4D4
            D4D4D4D4D4D4D4D4D4D4D4D4D4F7FFFFFFFFFFFFFFFFFFFFBC7B9BB0FFFFFFFF
            FFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFF7400000000000000000000000000
            000000000000000000CEFFFFFFFFFFFFFFFFFFFFBC7B9BB0FFFFFFFFFFFF37D7
            5FFFFFFFFFFFFFFFFFFFFFFFFFFF740000000000000000000000000000000000
            0000000000CEFFFFFFFFFFFFFFFFFFFFBC7B9BB0FFFFFFFFFFFF37D75FFFFFFF
            FFFFFFFFFFFFFFFFFFFF74000000003349494300000000204949494904000000
            00CEFFFFFFFFFFFFFFFFFFFFBC7B9CB0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFF
            FFFFFFFFFFFF7400000000B2FFFFED0000000071FFFFFFFF0C00000000CEFFFF
            FFFFFFFFFFFFFFFFBC7B9DB0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFF
            FFFF7400000000B2FFFFED0000000071FFFFFFFF0C00000000CEFFFFFFFFFFFF
            FFFFFFFFBC7B9EB0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFF7400
            000000B2FFFFED0000000071FFFFFFFF0C00000000CEFFFFFFFFFFFFFFFFFFFF
            BC7B9FB0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFF7400000000B2
            FFFFED0000000071FFFFFFFF0C00000000CEFFFFFFFFFFFFFFFFFFFFBC7BA0B0
            FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFB171717171D4FFFFFCCC
            CCCCCCE3FFFFFFFF544D4D4D4DDDFFFFFFFFFFFFFFFFFFFFBC7BA1B0FFFFFFFF
            FFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7BA1B0FFFFFFFFFFFF37D7
            5FFFFFFFFFFFFFFFFFFFFFFFFFFF974141414141414141414141414141414141
            4141414141DAFFFFFFFFFFFFFFFFFFFFBC7BA2B0FFFFFFFFFFFF37D75FFFFFFF
            FFFFFFFFFFFFFFFFFFFF74000000000000000000000000000000000000000000
            00CEFFFFFFFFFFFFFFFFFFFFBC7BA3B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFF
            FFFFFFFFFFFF7400000000000000000000000000000000000000000000CEFFFF
            FFFFFFFFFFFFFFFFBC7BA4B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFF
            FFFF7400000000C9D8D8D8D81F00000036D8D8D8D8D8D8D8D8F8FFFFFFFFFFFF
            FFFFFFFFBC7BA4B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFF7400
            000000B7FFFFFFE00700000041FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            BC7BA5B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFF9B0000000005
            2D5133070000000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7BA6B0
            FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFEE300000000000000000
            00000036E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7BA7B0FFFFFFFF
            FFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9914B0E000000000014559DFB
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7BA7B0FFFFFFFFFFFF37D7
            5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E4D9E8F9FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7BA8B0FFFFFFFFFFFF37D75FFFFFFF
            FFFFFFFFFFFFFFFFFFFFD4B0B0B0B0B0B0B0B0B0B0B0B0B0B8CADCEEFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFBC7BA9B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFF
            FFFFFFFFFFFF7400000000000000000000000000000000001B59A0FAFFFFFFFF
            FFFFFFFFFFFFFFFFBC7BAAB0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFF
            FFFF7400000000000000000000000000000000000000001FABFFFFFFFFFFFFFF
            FFFFFFFFBC7BABB0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFB171
            7171717171717171717171716D5D35040000000004D3FFFFFFFFFFFFFFFFFFFF
            BC7BACB0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFDA9E652BEEFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFD311000000008BFFFFFFFFFFFFFFFFFFFFBC7BADB0
            FFFFFFFFFFFF37D75FFFFFFFFFFFFFFF750000137BFBFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFB270000000072FFFFFFFFFFFFFFFFFFFFBC7BADB0FFFFFFFF
            FFFF37D75FFFFFFFFFFFFFFF702998F6FFFFDDC0C0C0C0C0C0C0C0C0C0C0C0C0
            BEB0872E0000000000A8FFFFFFFFFFFFFFFFFFFFBC7BADB0FFFFFFFFFFFF37D7
            5FFFFFFFFFFFFFFFE3FEFFFFFFFF740000000000000000000000000000000000
            0000000267FEFFFFFFFFFFFFFFFFFFFFBC7BAEB0FFFFFFFFFFFF37D75FFFFFFF
            FFFFFFFFFFFFFFFFFFFF74000000000000000000000000000000000000104EC2
            FFFFFFFFFFFFFFFFFFFFFFFFBC7BAFB0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFF
            FFFFFFFFFFFFA75D5D5D5D5D5D5D5D5D5D5D5D5D6577889BCCFDFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFBC7BB0B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFBC7BB1B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFC18C
            8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8CE9FFFFFFFFFFFFFFFFFFFF
            BC7BB2B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFF740000000000
            0000000000000000000000000000000000CEFFFFFFFFFFFFFFFFFFFFBC7BB3B0
            FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFF74000000000000000000
            00000000000000000000000000CEFFFFFFFFFFFFFFFFFFFFBC7BB3B0FFFFFFFF
            FFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFF740000000081888888340000002A
            888888882A00000000CEFFFFFFFFFFFFFFFFFFFFBC7BB4B0FFFFFFFFFFFF37D7
            5FFFFFFFFFFFFFFFFFFFFFFFFFFF7400000000F0FFFFFF5E0000004DFFFFFFFF
            4E00000000CEFFFFFFFFFFFFFFFFFFFFBC7BB5B0FFFFFFFFFFFF37D75FFFFFFF
            FFFFFFFFFFFFFFFFFFFF74000000007ACEDDB11B00000023F5FFFFF323000000
            00D5FFFFFFFFFFFFFFFFFFFFBC7BB6B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFF
            FFFFFFFFFFFFA4000000000000000000000000000C38330A0000000010FCFFFF
            FFFFFFFFFFFFFFFFBC7BB6B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFF
            FFFFF865000000000000000049570000000000000000000094FFFFFFFFFFFFFF
            FFFFFFFFBC7BB7B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            D88B634F485980C5FFFB9A3706000000041A63CFFFFFFFFFFFFFFFFFFFFFFFFF
            BC7BB8B0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFF9E4D6E4FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7BB9B0
            FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFD7B4B4B4B4B4B4B4B4B4
            B4B4B4B4B4B4B4B4B4B4B4B4B4F1FFFFFFFFFFFFFFFFFFFFBC7BB9B0FFFFFFFF
            FFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFF7400000000000000000000000000
            000000000000000000CEFFFFFFFFFFFFFFFFFFFFBC7BBAB0FFFFFFFFFFFF37D7
            5FFFFFFFFFFFFFFFFFFFFFFFFFFF740000000000000000000000000000000000
            0000000000CEFFFFFFFFFFFFFFFFFFFFBC7BBBB0FFFFFFFFFFFF37D75FFFFFFF
            FFFFFFFFFFFFFFFFFFFFAF6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D4100000000
            00CEFFFFFFFFFFFFFFFFFFFFBC7BBCB0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF980000000000CEFFFF
            FFFFFFFFFFFFFFFFBC7BBDB0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF980000000000CEFFFFFFFFFFFF
            FFFFFFFFBC7BBEB0FFFFFFFFFFFF37D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF980000000000CEFFFFFFFFFFFFFFFFFFFF
            BC7BBF97FFFFFFFFFFE32ED751FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF980000000000CEFFFFFFFFFFFFFFFFFFFF9B7BBF33
            FAFFFFFFFF682AD71BCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFF8ECECECECECFCFFFFFFFFFFFFFFFFFFFA349DE61FA1FFFFFF
            CA1C6BEA2254FFFFFFFFFFFFFFFFFFFFFFFFBC84848484848484848484848484
            848484848484848484E8FFFFFFFFFFFFFFFFFFA42FF7FF6A36FBFFFF4A29EAFF
            7E1BBFFFFFFFFFFFFFFFFFFFFFFF740000000000000000000000000000000000
            0000000000CEFFFFFFFFFFFFFFFFFC3896FFFFD01BA4FFAC1B9CFFFFEC2646FF
            FFFFFFFFFFFFFFFFFFFF74000000000000000000000000000000000000000000
            00CEFFFFFFFFFFFFFFFFA92CF5FFFFFF5038F63346FDFFFFFF8B1BB0FFFFFFFF
            FFFFFFFFFFFFC798989898989898989898989898989898989898989898ECFFFF
            FFFFFFFFFFFE3C91FFFFFFFFB21BD21B98FFFFFFFFE11B7BFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFB71BD8FFFFFFFF8C32FF4B42FFFFFFFF941DDCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFBC888695949392A2D37435177A0CCFEFFFFFFFFFFFFFFFFFFFFFFE72279
            FFFFFFF42A98FFAD1BC1FFFFFD3662FFFFFFFFFFFFFFFFFFFFFFFFFFAE480D00
            000000000000000000000000001B6FDCFFFFFFFFFFFFFFFFFFFF7822E8FFFF93
            2BF5FFFB325EFFFFB61BCBFFFFFFFFFFFFFFFFFFFFFFF54B0000000000000000
            00000000000000000000000991FFFFFFFFFFFFFFFFFFE4217FFFF72F8BFFFFFF
            8F1CDCFF544FFFFFFFFFFFFFFFFFFFFFFFFF720000000000419DC8E4ECF5F0E6
            DCBE92310000000003C8FFFFFFFFFFFFFFFFFF7524EC9B25EEFFFFFFEB2279D7
            1BB7FFFFFFFFFFFFFFFFFFFFFFFF230000000070FFFFFFFFFFFFFFFFFFFFFFFE
            2A0000000080FFFFFFFFFFFFFFFFFFE11F863A7FFFFFFFFFFF7025AC3CFFFFFF
            FFFFFFFFFFFFFFFFFFFF3E0000000055F8FFFFFFFFFFFFFFFFFFFFDB16000000
            0080FFFFFFFFFFFFFFFFFFFF70277CE6FFFFFFFFFFD31B95BDFFFFFFFFFFFFFF
            FFFFFFFFFFFFA403000000001965CEFFFFFFFFFE97653507000000000BD8FFFF
            FFFFFFFFFFFFFFFFDE1E8BFFFFFFFFFFFFFF5235FDFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFA71D000000000FEBFFFFFFFFFF800000000000002BC8FFFFFFFFFFFFFF
            FFFFFFFFE26D2AF4FFFFFFFFFFFAB01BB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FCB063310684FFFFFFFFFFFFFD3F001B4979BEFFFFFFFFFFFFFFFFFFFFFFFFFF
            69BB1D92FFFFFFFFFFACAA364FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            F8FAFFFFFFFFFFFFFFF0EBFFFFFFFFF3CCF1FFFFFFFFFFFFFFFFFFE61F91682E
            F6FFFFFFFF4B5F961BD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFEE0B89069411B0200CEFFFFFFFFFFFFFFFFFF861BBFD81C99FFFFFF
            CD1B9AF0246AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3CCA47D552F
            0A0000000000000000CEFFFFFFFFFFFFFFFFF62B41FFFF6531F8FFFF6B23EFFF
            7720E7FFFFFFFFFFFFFFFFFFFFFFFFFEE0B89069431D02000000000000000000
            00000E2D4BE0FFFFFFFFFFFFFFFFA21BA5FFFFD41C9FFFE9206EFFFFDA1C87FF
            FFFFFFFFFFFFFFFFFFFF890A000000000000000000000D2D25000000008AFFFF
            FFFFFFFFFFFFFFFFFFFF3F2FF9FFFFFF6035FF8B1BCBFFFFFF592CF7FFFFFFFF
            FFFFFFFFFFFF7400000000000E4985A8CAECFFFF880000000090FFFFFFFFFFFF
            FFFFFFFFFFBE1B8DFFFFFFFFC91BFA3043FFFFFFFFBC1BA4FFFFFFFFFFFFFFFF
            FFFF74000000000000000521436584A4640000000090FFFFFFFFFFFFFFFFFFFF
            FFA21BABFFFFFFFF9321ED225AFFFFFFFFD31B8CFFFFFFFFFFFFFFFFFFFFCB80
            59310B00000000000000000000000000003B80A0BEF7FFFFFFFFFFFFFFF52A48
            FFFFFFF62E76FF721CDAFFFFFF652AF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE0
            BA946D451D020000000000000000000000CEFFFFFFFFFFFFFFFF871BC6FFFF9B
            21E4FFD81C75FFFFD81D90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFF3CCA68059310B0000000000CEFFFFFFFFFFFFFFFFE82160FFFA3277FFFFFF
            5A23ECFF672DF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFEE0B8926D45D6FFFFFFFFFFFFFFFFFF6F1DDDA321E5FFFFFFBF1B8DD9
            1D96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD51B774B79FFFFFFFFFF422FAA30F6FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF57238AE6FFFFFFFFFFA71B9C9EFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFBD1B90FFFFFFFFFFFFF92F41FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF3F31FAFFFFFFFFFFFF8F1BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            B5A41BA9FFFFFFFFFFC8DB2358FFFFFFFFFFFFFFFFFFFFFFFFFF882525252525
            2525252525252525252525252525252525D5FFFFFFFFFFFFFFFFFFEA23D52E44
            FFFFFFFFFF5C8B761CD6FFFFFFFFFFFFFFFFFFFFFFFF74000000000000000000
            00000000000000000000000000CEFFFFFFFFFFFFFFFFFF8A1BC58C1BC1FFFFFF
            DA1C74DA1C70FFFFFFFFFFFFFFFFFFFFFFFF7400000000000000000000000000
            000000000000000000CEFFFFFFFFFFFFFFFFF72D45FFEB235BFFFFFF751CD8FF
            5E22EAFFFFFFFFFFFFFFFFFFFFFF7400000000A5F8F8F84E0000001AF8F8F8F8
            F8F8F8F8F8FEFFFFFFFFFFFFFFFFA31BABFFFF741CD9FFEC235AFFFFC31B88FF
            FFFFFFFFFFFFFFFFFFFF7400000000AAFFFFFF510000001BFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF3D32FBFFFFD91C73FF8D1BC0FFFFFF452CF7FFFFFFFF
            FFFFFFFFFFFF7400000000AAFFFFFF510000001BFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFBA1B92FFFFFFFF5C22F92F43FFFFFFFFAB1BA2FFFFFFFFFFFFFFFF
            FFFF7400000000AAFFFFFF8D5959596AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFA51BA7FFFFFFFF701CEF2357FFFFFFFFBF1B8CFFFFFFFFFFFFFFFFFFFFDBBC
            BCBCBCE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82D44
            FFFFFFEA225DFF771BD6FFFFFF5B22EBFFFFFFFFFFFFFFFFFFFFE6D0D0D0D0D0
            D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0F7FFFFFFFFFFFFFFFF8B1BC1FFFF8A
            1BC3FFDC1C70FFFFD91C73FFFFFFFFFFFFFFFFFFFFFF74000000000000000000
            00000000000000000000000000CEFFFFFFFFFFFFFFFFEB225BFFF72D45FFFFFF
            5F21E9FF731CD9FFFFFFFFFFFFFFFFFFFFFF7400000000000000000000000000
            000000000000000000CEFFFFFFFFFFFFFFFFFF731CD9A31BAAFFFFFFC51B88EB
            225BFFFFFFFFFFFFFFFFFFFFFFFF7400000000354D4D4700000000224D4D4D4D
            0400000000CEFFFFFFFFFFFFFFFFFFD91C739131FAFFFFFFFF462BD71DC1FFFF
            FFFFFFFFFFFFFFFFFFFF7400000000B2FFFFED0000000071FFFFFFFF0C000000
            00CEFFFFFFFFFFFFFFFFFFFF5B22DB99FFFFFFFFFFAD1BA18AFFFFFFFFFFFFFF
            FFFFFFFFFFFF7400000000B2FFFFED0000000071FFFFFFFF0C00000000CEFFFF
            FFFFFFFFFFFFFFFFC11B8BFFFFFFFFFFFFFB333BFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7400000000B2FFFFED0000000071FFFFFFFF0C00000000CEFFFFFFFFFFFF
            FFFFFFFFFF442DF8FFFFFFFFFFFF941BB9FFFFFFFFFFFFFFFFFFFFFFFFFF7400
            000000B2FFFFED0000000071FFFFFFFF0C00000000CEFFFFFFFFFFFFFFFFFFFF
            A9A91BA4FFFFFFFFFFC2DB2553FFFFFFFFFFFFFFFFFFFFFFFFFFB171717171D4
            FFFFFCCCCCCCCCE3FFFFFFFF5851515151DEFFFFFFFFFFFFFFFFFFE721D4313F
            FFFFFFFFFF58877C1BD2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF851BC9911BBCFFFFFF
            D51B77E01D6BFFFFFFFFFFFFFFFFFFFFFFFF9C49494949494949494949494949
            494949494949494949DCFFFFFFFFFFFFFFFFF52A4AFFEE2456FFFFFF6F1DDCFF
            631FE5FFFFFFFFFFFFFFFFFFFFFF740000000000000000000000000000000000
            0000000000CEFFFFFFFFFFFFFFFF9D1BAFFFFF781BD4FFE92160FFFFC91B83FF
            FFFFFFFFFFFFFFFFFFFF74000000000000000000000000000000000000000000
            00CEFFFFFFFFFFFFFFFE3A35FCFFFFDD1D6FFF881BC6FFFFFF4B29F5FFFFFFFF
            FFFFFFFFFFFF740000000054D4D4D4D4D4D4D4D4D4D4D4D40700000000CEFFFF
            FFFFFFFFFFB61B97FFFFFFFF6021F62B48FFFFFFFFB11B9BFFFFFFFFFFFFFFFF
            FFFF78000000002FFEFFFFFFFFFFFFFFFFFFFFE60000000000D2FFFFFFFFFFFF
            FFA91BA4FFFFFFFF6D1DF22651FFFFFFFFBA1B92FFFFFFFFFFFFFFFFFFFFA500
            000000003B9CCBE2EEF8F4E6D8C888280000000013F8FFFFFFFFFFFFFFFA313E
            FFFFFFE72061FF7E1BD1FFFFFF5524EFFFFFFFFFFFFFFFFFFFFFFC4600000000
            00000000000000000000000000000004A5FFFFFFFFFFFFFFFFFF911BBCFFFF85
            1BC8FFE11E6AFFFFD31B78FFFFFFFFFFFFFFFFFFFFFFFFFE9C31020000000000
            0000000000000000001257CEFFFFFFFFFFFFFFFFFFFFEE2456FFF52A4AFFFFFF
            651FE4FF6D1DDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDBA84594B3F31242D3D
            4D5D6B84C6FCFFFFFFFFFFFFFFFFFFFFFFFFFF781BD49C1BAFFFFFFFCB1B82E7
            2060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD1D6E9635FCFFFFFFFF4D29D91EC7FFFF
            FFFFFFFFFFFFFFFFFFFFAB656565656565656565656565656565656565656565
            65E1FFFFFFFFFFFFFFFFFFFF6020DBA2FFFFFFFFFFB21B9B93FFFFFFFFFFFFFF
            FFFFFFFFFFFF7400000000000000000000000000000000000000000000CEFFFF
            FFFFFFFFFFFFFFFFC71B86FFFFFFFFFFFFFD3738FDFFFFFFFFFFFFFFFFFFFFFF
            FFFF7400000000000000000000000000000000000000000000CEFFFFFFFFFFFF
            FFFFFFFFFF482AF5FFFFFFFFFFFF9A1BB3FFFFFFFFFFFFFFFFFFFFFFFFFF7400
            00000080B8B8AB0000000051B8B8B8B80900000000CEFFFFFFFFFFFFFFFFFFFF
            A0AF1B9EFFFFFFFFFFBCDA284DFFFFFFFFFFFFFFFFFFFFFFFFFF7400000000B2
            FFFFED0000000071FFFFFFFF0C00000000CEFFFFFFFFFFFFFFFFFFE31FD1343A
            FEFFFFFFFF5281811BCCFFFFFFFFFFFFFFFFFFFFFFFF7400000000B2FFFFED00
            00000071FFFFFFFF0C00000000CEFFFFFFFFFFFFFFFFFF7F1BCD971BB6FFFFFF
            D11B7CE31F66FFFFFFFFFFFFFFFFFFFFFFFF7400000000B2FFFFED0000000071
            FFFFFFFF0C00000000CEFFFFFFFFFFFFFFFFF3274FFFF22750FFFFFF6A1EE1FF
            681EE1FFFFFFFFFFFFFFFFFFFFFF7400000000B2FFFFF13D3D3D3D92FFFFFFFF
            0C00000000CEFFFFFFFFFFFFFFFF971BB6FFFF7F1BCFFFE51F64FFFFCF1B7EFF
            FFFFFFFFFFFFFFFFFFFFEFE0E0E0E0F6FFFFFFFFFFFFFFFFFFFFFFFFBFBCBCBC
            BCF3FFFFFFFFFFFFFFFC353AFEFFFFE21E68FF821BCBFFFFFF5026F2FFFFFFFF
            FFFFFFFFFFFFECDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCF9FFFF
            FFFFFFFFFFAF1B9DFFFFFFFF671FF5294DFFFFFFFFB61B96FFFFFFFFFFFFFFFF
            FFFF7400000000000000000000000000000000000000000000CEFFFFFFFFFFFF
            FFAF1B9DFFFFFFFF5B23F5294DFFFFFFFFA91B9FFFFFFFFFFFFFFFFFFFFF7400
            000000000000000000000000000000000000000000CEFFFFFFFFFFFFFFFC343A
            FEFFFFBF1B81FF821BCBFFFFF63337FAFFFFFFFFFFFFFFFFFFFF74000000003E
            4141412B00000003414141414141414141DAFFFFFFFFFFFFFFFF971BB6FFFE44
            27EDFFE41F65FFFF901BA8FFFFFFFFFFFFFFFFFFFFFF7400000000F5FFFFFFAA
            000000009AF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2274FFFA51B8AFFFFFF
            691EE1EA263EFDFFFFFFFFFFFFFFFFFFFFFF7600000000CFFFFFFF6A00000000
            000C4B84BCF2FFFFFFFFFFFFFFFFFFFFFFFFFF7F1BCF9A2BF2FFFFFFD01B7EE5
            1FB2FFFFFFFFFFFFFFFFFFFFFFFF8F000000000E3F5A32000000000000000000
            00043169A0F4FFFFFFFFFFFFFFFFFFE21E67F4A1FFFFFFFFFF5126F296FFFFFF
            FFFFFFFFFFFFFFFFFFFFE4100000000000000000000048A31000000000000000
            00CEFFFFFFFFFFFFFFFFFFFF671FE3FFFFFFFFFFFFB71B96FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFDB61120000000000043DA4F9FFF6AC662D0300000000CEFFFF
            FFFFFFFFFFFFFFFFCD1B80FFFFFFFFFFFFFE3A34FCFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE1CABECCE4FCFFFFFFFFFFFFFFFFF2BE88511ACEFFFFFFFFFFFF
            FFFFFFFFFF4F27F3FFFFFFFFFFFF9E1BAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4BE98714921CFFFFFFFFFFFFFFFFFFFFF
            96B51B99FFFFFFFFFFB6D92A48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF8D4AC845D350E000000000000CEFFFFFFFFFFFFFFFFFFE01DCC3936
            FDFFFFFFFF4E7C861BC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C098714923
            04000000000000000000000000CFFFFFFFFFFFFFFFFFFF7A1BD39C1BB1FFFFFF
            CC1B82E72060FFFFFFFFFFFFFFFFFFFFFFFFB961391100000000000000000000
            000000000058B4D4F3FFFFFFFFFFFFFFFFFFF02555FFF5294BFFFFFF661FE4FF
            6D1DDEFFFFFFFFFFFFFFFFFFFFFF740000000000001131517394B4D47D000000
            0090FFFFFFFFFFFFFFFFFFFFFFFF921BBBFFFF841BC9FFE11E6AFFFFD31B79FF
            FFFFFFFFFFFFFFFFFFFF7400000000000E3959799ABCDCF9880000000090FFFF
            FFFFFFFFFFFFFFFFFFFA323EFFFFFFE62063FF7E1BD0FFFFFF5524EFFFFFFFFF
            FFFFFFFFFFFF9B290600000000000000000000030C000000006CD8F7FFFFFFFF
            FFFFFFFFFFAB1BA2FFFFFFFF6B1DF22651FFFFFFFFBA1B92FFFFFFFFFFFFFFFF
            FFFFFFFFFBD8B088633D150000000000000000000000000217D6FFFFFFFFFFFF
            FFB41B99FFFFFFFF6220F62B48FFFFFFFFB11B9BFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFECC49C754F290600000000000000CEFFFFFFFFFFFFFFFE3836
            FDFFFFDF1D6DFF871BC7FFFFFF4B29F5FFFFFFFFFFFFFFFFFFFFC39090909090
            F8FFFFFFFFFFFFFFFFFBD8B088613B1400CEFFFFFFFFFFFFFFFF9B1BB1FFFF7A
            1BD3FFE82160FFFFC91B82FFFFFFFFFFFFFFFFFFFFFF740000000000EFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFECF7FFFFFFFFFFFFFFFFF5294BFFF02554FFFFFF
            6F1DDDFF641FE5FFFFFFFFFFFFFFFFFFFFFF740000000000EFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF831BC9931BBAFFFFFFD41B78E1
            1D6AFFFFFFFFFFFFFFFFFFFFFFFF740000000000788080808080808080808080
            8080808080E7FFFFFFFFFFFFFFFFFFE620639F3DFFFFFFFFFF5624DB21D1FFFF
            FFFFFFFFFFFFFFFFFFFF74000000000000000000000000000000000000000000
            00CEFFFFFFFFFFFFFFFFFFFF6B1DD8B0FFFFFFFFFFBC1B91A6FFFFFFFFFFFFFF
            FFFFFFFFFFFF7400000000000000000000000000000000000000000000CEFFFF
            FFFFFFFFFFFFFFFFD21B7BFFFFFFFFFFFFFF3E31FAFFFFFFFFFFFFFFFFFFFFFF
            FFFF740000000000929C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9CECFFFFFFFFFFFF
            FFFFFFFFFF5325F0FFFFFFFFFFFFA41BAAFFFFFFFFFFFFFFFFFFFFFFFFFF7400
            00000000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFB91B93FFFFFFFFFFAED52D44FFFFFFFFFFFFFFFFFFFFFFFFFF740000000000
            EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FE13C33
            FBFFFFFFFF48778A1BC2FFFFFFFFFFFFFFFFFFFFFFFFD2ACACACACACFAFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA1CCEA11BADFFFFFF
            C71B87EA225CFFFFFFFFFFFFFFFFFFFFFFFFDDC0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0F3FFFFFFFFFFFFFFFFFF753EFFF62B46FFFFFF6021E8FF
            721CDAFFFFFFFFFFFFFFFFFFFFFF740000000000000000000000000000000000
            0000000000CEFFFFFFFFFFFFFFFFEC2393FFFF881BC5FFDD1D6FFFFFD81C74FF
            FFFFFFFFFFFFFFFFFFFF74000000000000000000000000000000000000000000
            00CEFFFFFFFFFFFFFFFF8D1DE6FFFFE9215FFF781BD5FFFFFF5923ECFFFFFFFF
            FFFFFFFFFFFFA75D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5DE0FFFF
            FFFFFFFFFFF82E59FFFFFFFF6F1CF02456FFFFFFFFBF1B8EFFFFFFFFFFFFFFFF
            FFFFE9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFA61BADFFFFFFFF5E22F82E44FFFFFFFFAD1BA0FFFFFFFFFFFFFFFFFFFF7402
            1D456D94BCE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB81B93
            FFFFFFDA1C71FF8C1BC2FFFFFF462BF6FFFFFFFFFFFFFFFFFFFF740000000000
            00000E355D84ACD4F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B33FBFFFF76
            1CD8FFEB225CFFFFC51B88FFFFFFFFFFFFFFFFFFFFFF8A100000000000000000
            000000000423497198C0E8FFFFFFFFFFFFFFFFFFFFFFA01BADFFED2358FFFFFF
            731CD9FF5F21E9FFFFFFFFFFFFFFFFFFFFFFFFFFECCCAC8C6B49290A00000000
            000000000000001139DEFFFFFFFFFFFFFFFFF62B46FF8F1BBFFFFFFFD91C74DD
            1C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C6A48465451700
            0000000000CEFFFFFFFFFFFFFFFFFF881BC5A441FFFFFFFFFF5B23DC23D6FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D6B49475553515000000000000
            00CEFFFFFFFFFFFFFFFFFFE9215FF8B7FFFFFFFFFFC01B8CB1FFFFFFFFFFFFFF
            FFFFFFFFFFFFF9DAB89879593919020000000000000000000004254B71E8FFFF
            FFFFFFFFFFFFFFFF6F1CDBFFFFFFFFFFFFFF432EF8FFFFFFFFFFFFFFFFFFFFFF
            FFFF74000000000000000000000000153B6188B0D6F9FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFD61B76FFFFFFFFFFFFFFA81BA4FFFFFFFFFFFFFFFFFFFFFFFFFF7400
            00000000082B51799EC4ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF5823EDFFFFFFFFFFA9D43040FFFFFFFFFFFFFFFFFFFFFFFFFF8741698EB4DC
            FDFFFFFFFFFFFFFFFFFFFFFFE6C0987149D7FFFFFFFFFFFFFFFFFFFF81BE1B8F
            FFFFFFFFFF4473901BBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFF8D4AC845D350E0000000000CEFFFFFFFFFFFFFFFFFFD61BC54130F9FFFFFF
            C11B8BED2358FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C098714B25040000
            000000000000000000CEFFFFFFFFFFFFFFFFFF701CDBA51BA7FFFFFF5B22EBFF
            761BD6FFFFFFFFFFFFFFFFFFFFFFCF8861391100000000000000000000000000
            00428CACCAF9FFFFFFFFFFFFFFFFE9215FFFF82E42FFFFD91C73FFFFDB1C6FFF
            FFFFFFFFFFFFFFFFFFFF74000000000000000D2D4D6D8CAC680000000090FFFF
            FFFFFFFFFFFFFFFFFFFF881BC4FFFF8D1BBFFF741CD9FFFFFF5F21E9FFFFFFFF
            FFFFFFFFFFFF7400000000000E4B80A0C0E0FCFF880000000090FFFFFFFFFFFF
            FFFFFFFFFFF62B46FFFFFFEC2359EE2359FFFFFFFFC21B89FFFFFFFFFFFFFFFF
            FFFF8708000000000000000000000523210000000083FCFFFFFFFFFFFFFFFFFF
            FFA31BAAFFFFFFFF731CFA3140FFFFFFFFA71BA4FFFFFFFFFFFFFFFFFFFFFFFD
            DCB48C653D15000000000000000000000000051F3DDDFFFFFFFFFFFFFFBE1B8F
            FFFFFFFF5823FF911BBDFFFFFF422EF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFEDC6A0795129060000000000000000CEFFFFFFFFFFFFFFFF4030F9FFFFD7
            1C76FFEE2357FFFFC01B8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFBD8B088633D140000CEFFFFFFFFFFFFFFFFA51BA7FFFF701CDBFFFF
            771BD5FF5A23ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFECC4F0FFFFFFFFFFFFFFFFF82E42FFEA225FFFFFFFDD1D6FDA
            1C75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D1BBF8B1BC5FFFFFFFF6021DB26DAFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFEC2359AA46FFFFFFFFFFC61B88BAFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF751CD4BFFFFFFFFFFFFF472BF6FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFDA1C72FFFFFFFFFFFFFFAC1BA0FFFFFFFFFFFFFFFFFFFFFFFFFFD0A8
            A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8EFFFFFFFFFFFFFFFFFFFFF
            FF5D22EAFFFFFFFFFFED8E333BFFFFFFFFFFFFFFFFFFFFFFFFFF740000000000
            0000000000000000000000000000000000CEFFFFFFFFFFFFFFFFFFFFAE9A1B8A
            FFFFFFFFFF7D43941BB8FFFFFFFFFFFFFFFFFFFFFFFF74000000000000000000
            00000000000000000000000000CEFFFFFFFFFFFFFFFFFFFB3A7F452DF7FFFFFF
            DF2080F02552FFFFFFFFFFFFFFFFFFFFFFFF74000000002F7575757575757575
            757575750400000000CEFFFFFFFFFFFFFFFFFF9F1BCBAB1BA3FFFFFF662AEFFF
            7B1BD2FFFFFFFFFFFFFFFFFFFFFF74000000004EFFFFFFFFFFFFFFFFFFFFFFFA
            0300000000CEFFFFFFFFFFFFFFFFF5305EFFFA323EFFFFCC1C97FFFFE01D6BFF
            FFFFFFFFFFFFFFFFFFFF8E000000000795F6FFFFFFFFFFFFFFFFE47100000000
            03EAFFFFFFFFFFFFFFFF901CD4FFFF921BBBFF4F37F9FFFFFF631FE5FFFFFFFF
            FFFFFFFFFFFFE3110000000000042A434D555143372903000000000060FFFFFF
            FFFFFFFFFFEE2868FFFFFFEF2455B91BADFFFFFFFFC61B87FFFFFFFFFFFFFFFF
            FFFFFFD53D00000000000000000000000000000000000875FAFFFFFFFFFFFFFF
            FF8A1BDBFFFFFFFF761BD81CD3FFFFFFFFA31BAAFFFFFFFFFFFFFFFFFFFFFFFF
            FFCF8E5B270300000000000000000B2469B0F3FFFFFFFFFFFFFFFFFFFFBF1BB9
            FFFFFFFF5425FF6163FFFFFFFF3E32FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFBECDED2C5CCDCECFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B4CFFFFFFD2
            1B7BFFCF1CD4FFFFBB1B92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3AE9C8C
            7D6E6F7B8695BAE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFBA1BC2FFFF6C1DE0FFFF
            5863FFFF5624EFFFFFFFFFFFFFFFFFFFFFFFFFFFF29755150000000000000000
            000000001461B4FFFFFFFFFFFFFFFFFFFFFFFF4654FFE72063FFFFFFC51CD5D8
            1B79FFFFFFFFFFFFFFFFFFFFFFFFFFA514000000000000000000000000000000
            00000038D5FFFFFFFFFFFFFFFFFFFFB61BCA881BC9FFFFFFFF4E64F329DEFFFF
            FFFFFFFFFFFFFFFFFFFFAA02000000000F4F819AA6B3B2A699733F0300000000
            1EECFFFFFFFFFFFFFFFFFFFF435DAE4BFFFFFFFFFFBB1CD6C1FFFFFFFFFFFFFF
            FFFFFFFFFFFF33000000003CEBFFFFFFFFFFFFFFFFFFFFCD0D000000009AFFFF
            FFFFFFFFFFFFFFFFB11CD1C6FFFFFFFFFFFF4564FFFFFFFFFFFFFFFFFFFFFFFF
            FFFF200000000077FFFFFFFFFFFFFFFFFFFFFFFF2F000000007DFFFFFFFFFFFF
            FFFFFFFFFE3F65FFFFFFFFFFFFFFAF1CD6FFFFFFFFFFFFFFFFFFFFFFFFFF6200
            0000000776CEFAFFFFFFFFFFFFEDBC510000000000BAFFFFFFFFFFFFFFFFFFFF
            F5A01DDAFFFFFFFFFFEB8A3C65FFFFFFFFFFFFFFFFFFFFFFFFFFE92E00000000
            0000071B27322B1F130000000000000072FFFFFFFFFFFFFFFFFFFFFF94823B6E
            FFFFFFFFFF7941A71CD6FFFFFFFFFFFFFFFFFFFFFFFFFFF48016000000000000
            0000000000000000000034B6FFFFFFFFFFFFFFFFFFFFFFF62E60A91FE1FFFFFF
            DD1F80FB3565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED0905031211103000002
            09193B5F92DEFFFFFFFFFFFFFFFFFFFFFFFFFF981BC8FC3976FFFFFF6526ECFF
            9C1CD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF1F4FDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7304EFFFFA422E7FFCD1C89FFFFF72E65FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF9B1BB9FFFFFB357FFF522AF1FFFFFF921CD6FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFF93241FFFFFFFFA024C51B91FFFFFFFFF3226DFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFAC1BA4FFFFFFFFE61CF32C83FFFFFFFFC21BAAFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6226E
            FFFFFFFF6F37FF9923E4FFFFFF4C49FFFFFFFFFFFFFFFFFFFFFFFEFCFCFCFCFC
            FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFFFFFFFFFFFFFFFFFF7C1EDCFFFFC7
            1CADFFF9356EFFFFB91BC9FFFFFFFFFFFFFFFFFFFFFF74000000000000000000
            00000000000000000000000000CEFFFFFFFFFFFFFFFFE9236AFFFB4047FFFFFF
            A71DD5FF4466FFFFFFFFFFFFFFFFFFFFFFFF7400000000000000000000000000
            000000000000000000CEFFFFFFFFFFFFFFFFFF801DDC921BC2FFFFFFFD3F74B4
            22E1FFFFFFFFFFFFFFFFFFFFFFFF7400000000181919190A0000000819191919
            0800000000CEFFFFFFFFFFFFFFFFFFEB25BD445AFFFFFFFFFFAE6D947FFFFFFF
            FFFFFFFFFFFFFFFFFFFF7400000000F2FFFFFF610000004DFFFFFFFF4F000000
            00CEFFFFFFFFFFFFFFFFFFFF70BD44D2FFFFFFFFFFC96D95A3FFFFFFFFFFFFFF
            FFFFFFFFFFFF7400000000D4FFFFFF4300000041FFFFFFFF4200000000CEFFFF
            FFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96D96A3FFFFFFFFFFFFFFFFFFFFFF
            FFFF85000000000E3F4D2200000000046CA6A26A0300000002EDFFFFFFFFFFFF
            FFFFFFFF79BD44F5FFFFFFFFFFC96D97A3FFFFFFFFFFFFFFFFFFFFFFFFFFDB13
            00000000000000000F15000000000000000000004BFFFFFFFFFFFFFFFFFFFFFF
            79BD44F5FFFFFFFFFFC96D98A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3681C0000
            0000135AE2CE2C000000000000000A61E7FFFFFFFFFFFFFFFFFFFFFF79BD44F5
            FFFFFFFFFFC96D99A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2DED7E8FEFF
            FFFFFEC68F75667792AEEDFFFFFFFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFF
            FFC96D9AA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96D9B
            A3FFFFFFFFFFFFFFFFFFFFFFFFFF8C2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D
            2D2D2D2D2DD6FFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96D9BA3FFFFFF
            FFFFFFFFFFFFFFFFFFFF74000000000000000000000000000000000000000000
            00CEFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96D9CA3FFFFFFFFFFFFFF
            FFFFFFFFFFFF7400000000000000000000000000000000000000000000CEFFFF
            FFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96D9EA3FFFFFFFFFFFFFFFFFFFFFF
            FFFF7400000000E2ECECEC9D00000003C6ECECECECECECECECFCFFFFFFFFFFFF
            FFFFFFFF79BD44F5FFFFFFFFFFC96D9FA3FFFFFFFFFFFFFFFFFFFFFFFFFF7400
            000000E9FFFFFF91000000000F559BD4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            79BD44F5FFFFFFFFFFC96DA0A3FFFFFFFFFFFFFFFFFFFFFFFFFF840000000041
            8EAA811100000000000000000F4780B8EFFFFFFFFFFFFFFFFFFFFFFF79BD44F5
            FFFFFFFFFFC96DA1A3FFFFFFFFFFFFFFFFFFFFFFFFFFC3000000000000000000
            00001B55000000000000000002D1FFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFF
            FFC96DA2A3FFFFFFFFFFFFFFFFFFFFFFFFFFFF9616000000000000000655D6FF
            B65C17000000000000CEFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DA3
            A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC2927B6E7D94AEE8FFFFFFFFFFFFDC
            A46F390800CEFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DA4A3FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C296
            3FCFFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DA4A3FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D6B08861391200000000CEFFFF
            FFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DA5A3FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFEAC49C754D250400000000000000000000CEFFFFFFFFFFFF
            FFFFFFFF79BD44F5FFFFFFFFFFC96DA6A3FFFFFFFFFFFFFFFFFFFFFFFFFFE5B0
            88613912000000000000000000000000002C6584A2F1FFFFFFFFFFFFFFFFFFFF
            79BD44F5FFFFFFFFFFC96DA7A3FFFFFFFFFFFFFFFFFFFFFFFFFF740000000000
            0000000523456584530000000090FFFFFFFFFFFFFFFFFFFFFFFFFFFF79BD44F5
            FFFFFFFFFFC96DA8A3FFFFFFFFFFFFFFFFFFFFFFFFFF7400000000000E4988C5
            EAFFFFFF880000000090FFFFFFFFFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFF
            FFC96DA9A3FFFFFFFFFFFFFFFFFFFFFFFFFF74000000000000000000000C2D4D
            360000000090FFFFFFFFFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DAB
            A3FFFFFFFFFFFFFFFFFFFFFFFFFFFBD8B0886139120000000000000000000000
            000A294967E5FFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DACA3FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECC49C754D25050000000000000000
            00CEFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DADA3FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8B088613912000000CEFFFF
            FFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DADA3FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFFFFFFEAC49CE8FFFFFFFFFFFF
            FFFFFFFF79BD44F5FFFFFFFFFFC96DAEA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            F8B28C6D4E556B95E4FFFFFFFF95061F3A73BCF9FFFFFFFFFFFFFFFFFFFFFFFF
            79BD44F5FFFFFFFFFFC96DAFA3FFFFFFFFFFFFFFFFFFFFFFFFFFFF9412000000
            00000000025FF1FFFF6E00000000001AB4FFFFFFFFFFFFFFFFFFFFFF79BD44F5
            FFFFFFFFFFC96DB0A3FFFFFFFFFFFFFFFFFFFFFFFFFF96000000000203000000
            000029F3FF7D27060000000007DBFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFF
            FFC96DB1A3FFFFFFFFFFFFFFFFFFFFFFFFFF320000006FEDF45D00000000005A
            FFFFFFF8860000000087FFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DB2
            A3FFFFFFFFFFFFFFFFFFFFFFFFFF250000006BFCFFF9280000000000A4FFFFFF
            F8090000007BFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DB3A3FFFFFF
            FFFFFFFFFFFFFFFFFFFF66000000000B3BE2BF0300000000045588712A000000
            00B9FFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DB4A3FFFFFFFFFFFFFF
            FFFFFFFFFFFFF13D0000000000EFFF9803000000000000000000000274FFFFFF
            FFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DB5A3FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFDBC64311314FFFFFFC94D060000000000000C57C0FFFFFFFFFFFFFFFF
            FFFFFFFF79BD44F5FFFFFFFFFFC96DB6A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF7FFFFFFFFFFF7DABEA5A6B3D6FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            79BD44F5FFFFFFFFFFC96DB6A3FFFFFFFFFFFFFFFFFFFFFFFFFFFCF8F8F8F8F8
            F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FEFFFFFFFFFFFFFFFFFFFF79BD44F5
            FFFFFFFFFFC96DB8A3FFFFFFFFFFFFFFFFFFFFFFFFFF74000000000000000000
            00000000000000000000000000CEFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFF
            FFC96DB9A3FFFFFFFFFFFFFFFFFFFFFFFFFF7400000000000000000000000000
            000000000000000000CEFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DBA
            A3FFFFFFFFFFFFFFFFFFFFFFFFFF882525252525252525252525252525252525
            2525252525D5FFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DBBA3FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DBCA3FFFFFFFFFFFFFF
            FFFFFFFFFFFFF5ECECECECECECECECECECECECECECECECECECECECECECFCFFFF
            FFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DBDA3FFFFFFFFFFFFFFFFFFFFFF
            FFFF7400000000000000000000000000000000000000000000CEFFFFFFFFFFFF
            FFFFFFFF79BD44F5FFFFFFFFFFC96DBEA3FFFFFFFFFFFFFFFFFFFFFFFFFF7400
            000000000000000000000000000000000000000000CEFFFFFFFFFFFFFFFFFFFF
            79BD44F5FFFFFFFFFFC96DBFA3FFFFFFFFFFFFFFFFFFFFFFFFFF8E3131313131
            31313131313131313131311D0000000000CEFFFFFFFFFFFFFFFFFFFF79BD44F5
            FFFFFFFFFFC96DBFA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF980000000000CEFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFF
            FFC96DC0A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF980000000000CEFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DC1
            A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF98
            0000000000CEFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DC2A3FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9800000000
            00CEFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DC3A3FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0B0B0B0B0B0F0FFFF
            FFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DC5A3FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF79BD44F5FFFFFFFFFFC96DC6A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            79BD44F5FFFFFFFFFFC96DC7A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF79BD44F5
            FFFFFFFFFFC96DC8A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFF
            FFC96DC9A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DC9
            A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFF3FFFFFFFFF3FFFFFFF5
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DCAA3FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF78FFFFFFE493FFFFFFE19DFFFFFFB5CEFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DCBA3FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFE51DE6FFFFA146FFFFFF9959FFFFFF7089FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF79BD44F5FFFFFFFFFFC96DCCA3FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFA21B9AFFFF5E1BDDFFFF5122F5FFFF2F46FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF79BD44F5FFFFFFFFFFC96DCDA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            60294DFFF7232A90FFEC1E2AB6FFCF271EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            79BD44F5FFFFFFFFFFC948BCA3989898989898989898989898989898249C1CE3
            BC388C43FFA63B7F73FF8B684FA4FFFFFFFFFFFFFFFFFFFFFFFFFFFF79BD44F5
            FFFFFFFFFFC91BA6A31B1B1B1B1B1B1B1B1B1B1B1B1B1B1B37FB2897787BDD1B
            DA5F83C331FF48AC924A989898989898989898989898989875B532F5FFFFFFFF
            FFC91BA7A31B1B1B1B1B1B1B1B1B1B1B1B1B1B1B7AFF675D35BFFF4A9723CBFB
            28CC1EEDD71B1B1B1B1B1B1B1B1B1B1B1B1B1B1B6FAA1BF5FFFFFFFFFFE387BD
            A3878787878787878787878787878787D4FFAB8E25F9FF9B9230FFFF77A54EFF
            FF361B1B1B1B1B1B1B1B1B1B1B1B1B1B6FAA1BF5FFFFFFFFFFFFFFD2A3FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8F60FFFFED6C76FFFFED6291FFFFB08787
            87878787878787878787878774B487FAFFFFFFFFFFFFFFD3A3FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF4FA4FFFFFC2ABEFFFFF925D5FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF79BDFFFFFFFFFFFFFFFFFFD4619191919191919191919191
            91919192FAFFEE1EDAFFFFC227EBFFFFC034F0FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF79BDFFFFFFFFFFFFFFFFFFD51B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
            C0FFAD4682FAFF7A688DEFFF7D767CFFFF979191919191919191919191919191
            4CBDFFFFFFFFFFFFFFFFFFD61B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B7EFF6989
            44C1FF33B057AEFF3AB41FEFDA1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1BBDFFFF
            FFFFFFFFFFFFFFEA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A6F3AFD2ACD747FD021
            F3876BDA23F643AF961B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1BBDFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF522A42EFFB73B885AFFCB2B94
            5CFF876C53638A8A8A8A8A8A8A8A8A8A8A8A8A8A8ADEFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B2D6FFFF5222EA2FFFE2C2DA0FFCA2A
            1FE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF9E1BB3FFFF591CE9FFFF6D1BE2FFFE2C42FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFE120F2FFFF9D4DFFFFFFB042FFFFFF6C85FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF79FFFFFFE194FFFFFFF188FFFFFFB0C9FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 39.692950000000000000
          Top = 125.535560000000000000
          Width = 702.992196770000000000
          Height = 18.897637800000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object img_logo2: TfrxPictureView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 166.299212600000000000
          Height = 56.692913390000000000
          OnBeforePrint = 'img_logo2OnBeforePrint'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 39.472480000000000000
          Top = 69.149660000000000000
          Width = 41.574803150000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No dia')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 29.708720000000000000
          Width = 317.480314960000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186': [Identifica'#231#227'o.CodPedido] ')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 39.307086610000000000
          Top = 189.787570000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 637.740570000000000000
          Top = 37.858380000000000000
          Width = 102.047244090000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSProdutosNfe."TOTALNF"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 367.425196850000000000
          Top = 169.362400000000000000
          Width = 204.094488190000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Emitente.Cidade]')
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 82.826840000000000000
          Top = 68.504020000000000000
          Width = 659.527559055118000000
          Height = 18.897637800000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 39.417322830000000000
          Top = 89.929190000000000000
          Width = 699.212669210000000000
          Height = 34.015745590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'pagarei(emos) por essa '#250'nica via de NOTA PROMISS'#211'RIA a [Emitente' +
              '.Fantasia] CPF/CNPJ: [Emitente.CNPJ] ou '#225' sua ordem a quantia de')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 587.047620000000000000
          Top = 8.504020000000000000
          Width = 79.370078740000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vencimento:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 611.504330000000000000
          Top = 36.519790000000000000
          Width = 22.677165350000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'R$:')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 84.606370000000000000
          Top = 70.283550000000000000
          Width = 646.299288270000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Identifica'#231#227'o.dataExtenso]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 40.692950000000000000
          Top = 127.196970000000000000
          Width = 695.433144090000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Identifica'#231#227'o.valorExtenso] em moeda corrente desse pa'#237's.')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 39.307086610000000000
          Top = 147.433210000000000000
          Width = 181.417322830000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do Cliente:')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 367.252061260000000000
          Top = 147.590333940000000000
          Width = 109.606299210000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Local Pagamento:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 603.260101260000000000
          Top = 147.590333940000000000
          Width = 109.606299210000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data da Emiss'#227'o:')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 367.370078740000000000
          Top = 190.905553310000000000
          Width = 109.606299210000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 38.574830000000000000
          Top = 247.953000000000000000
          Width = 706.772007480000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Cliente')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 38.440859450000000000
          Top = 169.362400000000000000
          Width = 317.480363780000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Cliente.Fantasia]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 39.574830000000000000
          Top = 210.937230000000000000
          Width = 226.771653540000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Cliente.CPFCNPJ]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 669.976810000000000000
          Top = 9.622140000000000000
          Width = 71.811026060000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSProdutosNfe."VENCTO"]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 603.433070870000000000
          Top = 169.362400000000000000
          Width = 136.062992130000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSProdutosNfe."DATA_INC"]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614397800000000000
          Top = 210.937230000000000000
          Width = 370.393717870000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Cliente.Endere'#231'oCompleto]')
          ParentFont = False
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 39.574830000000000000
          Top = 246.141930000000000000
          Width = 702.992196770000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
