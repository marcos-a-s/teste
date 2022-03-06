unit UDM;

interface

uses
  System.SysUtils, System.Classes, IBX.IBDatabase, Data.DB, IniFiles, Windows, Messages, Variants, Graphics, Controls, Forms,
  VCL.Dialogs, ImgList, ActnList, Menus, ToolWin, ComCtrls, AppEvnts, jpeg, StdCtrls, ShellApi,
  IBX.IBDatabaseINI, frxClass, frxDBSet, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TDM = class(TDataModule)
    DataBasePrincipal: TIBDatabase;
    TransPrincipal: TIBTransaction;
    IB_REDE: TIBDatabaseINI;
    qry_cadProd_produtos: TIBQuery;
    qry_cadProd_produtosID: TIntegerField;
    qry_cadProd_produtosSTATUS: TIBStringField;
    qry_cadProd_produtosMARCA: TIBStringField;
    qry_cadProd_produtosDATA_INC: TDateField;
    qry_cadProd_produtosDATA_ALT: TDateField;
    qry_cadProd_produtosDATA_HAB: TDateField;
    qry_cadProd_produtosTITULO: TIBStringField;
    qry_cadProd_produtosID_CATEG: TIBStringField;
    qry_cadProd_produtosP_VENDA: TIBBCDField;
    qry_cadProd_produtosP_CUSTO: TIBBCDField;
    qry_cadProd_produtosBASE_CALC: TIBBCDField;
    qry_cadProd_produtosFORMATO: TIBStringField;
    qry_cadProd_produtosNPAGINAS: TSmallintField;
    qry_cadProd_produtosEDICAO: TSmallintField;
    qry_cadProd_produtosANO: TSmallintField;
    qry_cadProd_produtosPESO: TIBBCDField;
    qry_cadProd_produtosLOC: TIBStringField;
    qry_cadProd_produtosRESENHA: TWideMemoField;
    qry_cadProd_produtosCAPA: TBlobField;
    qry_cadProd_produtosPROMO: TIBStringField;
    qry_cadProd_produtosEST_MIN: TSmallintField;
    qry_cadProd_produtosEST_DISP: TSmallintField;
    qry_cadProd_produtosQTDOAC: TSmallintField;
    qry_cadProd_produtosQTCONS: TSmallintField;
    qry_cadProd_produtosQTVEND: TSmallintField;
    qry_cadProd_produtosCODIGO_BARRA: TIBStringField;
    qry_cadProd_produtosREF: TIBStringField;
    qry_cadProd_produtosLUCRO: TIBBCDField;
    qry_cadProd_produtosDATALOC: TDateField;
    qry_cadProd_produtosDATAENT: TDateField;
    qry_cadProd_produtosAPLICACAO: TIBStringField;
    qry_cadProd_produtosCOMENTARIO: TIBStringField;
    qry_cadProd_produtosP_FINAL: TIBBCDField;
    qry_cadProd_produtosSERV: TIBStringField;
    qry_cadProd_produtosPORCENT: TIBStringField;
    qry_cadProd_produtosNCM: TIBStringField;
    qry_cadProd_produtosVALIDADE: TDateField;
    qry_cadProd_produtosNUMXML: TIntegerField;
    qry_cadProd_produtosEST_FISCAL: TSmallintField;
    qry_cadProd_produtosESTFISCAL: TIBBCDField;
    qry_cadProd_produtosESTFISICO: TIBBCDField;
    qry_cadProd_produtosCST: TIBStringField;
    qry_cadProd_produtosCSOSN: TIBStringField;
    qry_cadProd_produtosCFOP: TIBStringField;
    qry_cadProd_produtosICMS: TIBStringField;
    qry_cadProd_produtosICMSNF: TIBBCDField;
    qry_cadProd_produtosPISNF: TIBBCDField;
    qry_cadProd_produtosCOFINSNF: TIBBCDField;
    qry_cadProd_produtosVLRSEM: TIBBCDField;
    qry_cadProd_produtosVLRCOM: TIBBCDField;
    qry_cadProd_produtosNUMNF: TIntegerField;
    qry_cadProd_produtosDTENT: TDateField;
    qry_cadProd_produtosCHAVENF: TIBStringField;
    qry_cadProd_produtosVLRNF: TIBBCDField;
    qry_cadProd_produtosCEST: TIBStringField;
    qry_cadProd_produtosINVENT: TIBStringField;
    qry_cadProd_produtosPORCETAGEM: TIBBCDField;
    qry_cadProd_produtosLIMIT_DESC: TIBBCDField;
    ds_cadProd_produtos: TDataSource;
    rept_produtos: TfrxReport;
    rept_ds_produtos: TfrxDBDataset;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var Arquivo : TIniFile;
Opção : string;
begin
  //C:\SerieDelphi\SCI\DBSCI.FDB
  try
    try
      {Verfica se tem a cópia do banco}
      if FileExists(Pchar(ExtractFilePath(Application.ExeName)+'Banco_de_Dados_Salvo.FDB')) then
        begin
          {Deleta o Banco modificado}
          DeleteFile(Pchar(ExtractFilePath(Application.ExeName)+'DBSCI.FDB'));

          {Se ele não conseguiu apagar o banco de dados}
          if FileExists(Pchar(ExtractFilePath(Application.ExeName)+'DBSCI.FDB')) then
            Abort; // Chama o erro

          {Renomeia o banco salvo e colocar como normal}
          RenameFile(ExtractFilePath(Application.ExeName) + 'Banco_de_Dados_Salvo.FDB',
            ExtractFilePath(Application.ExeName) + 'DBSCI.FDB');

          Application.MessageBox('Banco Renomeado com susseso!','Configuração',
          MB_OK+mb_DefButton2+MB_ICONEXCLAMATION);

        {Coloca o arquivo em uma variável}
        Arquivo := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Config.ini');

        {Ler a seção, e se não ela não exitir coloca como '0'}
        Opção := Arquivo.ReadString('Utilidades','SalvarBanco','0');

        {Se a a variável for '1' ele coloca o check como true}
        if Opção = '1' then
          begin
            {Grava como "0" para indicar que o banco voltou ao normal}
            Arquivo.WriteString('Utilidades','SalvarBanco','0');
          end;
          Arquivo.Free;
        end;
    except
      on E:Exception do
        begin
          if trim(E.Message) = 'Operation aborted' then
            begin
              MessageDlg('Erro ao a renomear banco de dados: O banco está aberto em outro programa.', mtError, [mbOK], 0);
            end
              else
                MessageDlg('Erro ao a renomear banco de dados: '+E.Message, mtError, [mbOK], 0);
        end;
    end;

    IB_REDE.FileName := ExtractFilePath(Application.ExeName) +'DB.INI';
    DataBasePrincipal.DatabaseName := IB_REDE.DatabaseName;
    DataBasePrincipal.Connected:=true;
  except
    on E:Exception do
      begin
        MessageDlg('Erro ao fazer a conexão com o Banco de Dados: '+E.Message, mtError, [mbOK], 0);
        Application.Terminate;
      end;
  end;
end;


end.
