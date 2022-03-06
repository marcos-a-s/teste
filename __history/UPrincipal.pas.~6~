unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, frxClass, Vcl.WinXPanels, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ComCtrls;

type
  TFrm_principal = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    frxReport1: TfrxReport;
    CardPanel1: TCardPanel;
    Button3: TButton;
    Button4: TButton;
    c_analise: TCard;
    Label1: TLabel;
    c_vendas: TCard;
    Label2: TLabel;
    StackPanel1: TStackPanel;
    Label3: TLabel;
    Button5: TButton;
    ToolBar1: TToolBar;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_principal: TFrm_principal;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_principal.Button1Click(Sender: TObject);
begin
  if DM.qry_cadProd_produtos.Active = True then
    DM.qry_cadProd_produtos.Close;

  DM.qry_cadProd_produtos.SQL.Clear;
  DM.qry_cadProd_produtos.SQL.Add('SELECT * FROM PRODUTOS ORDER BY TITULO');
  DM.qry_cadProd_produtos.Prepare;
  DM.qry_cadProd_produtos.Open;

end;

procedure TFrm_principal.Button3Click(Sender: TObject);
begin
  CardPanel1.ActiveCard :=  c_analise;
end;

procedure TFrm_principal.Button4Click(Sender: TObject);
begin
  CardPanel1.ActiveCard :=  c_vendas;
end;

end.
