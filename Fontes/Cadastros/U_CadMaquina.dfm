inherited FrmCadMaquinas: TFrmCadMaquinas
  Left = 454
  Top = 182
  Caption = 'SOFTMETAL - Cadastro de Maquinas'
  ClientHeight = 270
  ClientWidth = 498
  Font.Name = 'Arial'
  PixelsPerInch = 96
  TextHeight = 14
  inherited PANBOTOES: TPanel
    Top = 213
    Width = 498
    TabOrder = 2
    inherited BtnBuscar: TRzButton
      OnClick = BtnBuscarClick
    end
    inherited BtnStatus: TRzButton
      OnClick = BtnStatusClick
    end
  end
  inherited PANTITULO: TRzPanel
    Width = 498
    Caption = 'Cadastro de Maquinas'
    TabOrder = 3
  end
  inherited PANDADOS: TRzPanel
    Width = 498
    Height = 172
    TabOrder = 1
    inherited LBLCOD: TRzLabel
      Width = 51
      Height = 16
      Font.Height = -13
    end
    object Label1: TLabel
      Left = 16
      Top = 120
      Width = 76
      Height = 16
      Caption = 'DESCRI'#199#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 124
      Height = 16
      Caption = 'NUMERO DE SERIE*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBDESCR: TRzDBEdit
      Left = 16
      Top = 136
      Width = 353
      Height = 24
      DataSource = DSMaquinas
      DataField = 'DESC_MAQ'
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      FrameHotTrack = True
      FrameVisible = True
      ParentFont = False
      TabOrder = 1
      OnEnter = DBDESCREnter
      OnExit = DBDESCRExit
    end
    object DBNUMERODESERIE: TRzDBEdit
      Left = 16
      Top = 88
      Width = 161
      Height = 24
      DataSource = DSMaquinas
      DataField = 'NUMSERIE_MAQ'
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      FrameHotTrack = True
      FrameVisible = True
      ParentFont = False
      TabOrder = 0
      OnEnter = DBNUMERODESERIEEnter
      OnExit = DBNUMERODESERIEExit
    end
  end
  inherited EdtBusca: TRzEdit
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyDown = EdtBuscaKeyDown
  end
  inherited BARRASTATUS: TStatusBar
    Top = 251
    Width = 498
  end
  object DSMaquinas: TDataSource
    DataSet = CDSMaquinas
    Left = 112
    Top = 8
  end
  object CDSMaquinas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 80
    Top = 8
    object CDSMaquinasIDMAQUINA: TIntegerField
      FieldName = 'IDMAQUINA'
      Required = True
    end
    object CDSMaquinasDESC_MAQ: TStringField
      FieldName = 'DESC_MAQ'
      Required = True
      Size = 300
    end
    object CDSMaquinasNUMSERIE_MAQ: TStringField
      FieldName = 'NUMSERIE_MAQ'
      Required = True
    end
    object CDSMaquinasSTATUS_MAQ: TStringField
      FieldName = 'STATUS_MAQ'
      Required = True
      Size = 1
    end
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLMaquinas
    Left = 48
    Top = 8
  end
  object SQLMaquinas: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10'MAQUINAS.IDMAQUINA,'#13#10'MAQUINAS.DESC_MAQ,'#13#10'MAQUINAS.NUMS' +
      'ERIE_MAQ,'#13#10'MAQUINAS.STATUS_MAQ'#13#10#13#10'FROM MAQUINAS'#13#10#13#10'WHERE MAQUINA' +
      'S.IDMAQUINA = :PARMAQ'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARMAQ'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.conexao
    Left = 16
    Top = 8
    object SQLMaquinasIDMAQUINA: TIntegerField
      FieldName = 'IDMAQUINA'
      Required = True
    end
    object SQLMaquinasDESC_MAQ: TStringField
      FieldName = 'DESC_MAQ'
      Required = True
      Size = 300
    end
    object SQLMaquinasNUMSERIE_MAQ: TStringField
      FieldName = 'NUMSERIE_MAQ'
      Required = True
    end
    object SQLMaquinasSTATUS_MAQ: TStringField
      FieldName = 'STATUS_MAQ'
      Required = True
      Size = 1
    end
  end
end
