unit ItemEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, Buttons, DBCtrls,
  ExtCtrls, DB, inifiles, DBGridEh, Math,
  GridsEh, int_const, DBGridEhGrouping, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, Vcl.Menus, cxButtons, cxGroupBox, Vcl.Grids,
  dxSkinsCore, dxSkinDarkSide, Vcl.ComCtrls, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, StrUtils, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, dxSkinSilver, EhLibVCL, DBAxisGridsEh, dxSkinDevExpressStyle,
  cxHyperLinkEdit, cxLabel;

type
  TItemEditorForm = class(TForm)
    Edit_FullName: TDBEditEh;
    Edit_Type: TDBLookupComboboxEh;
    Edit_Firm: TDBLookupComboboxEh;
    Edit_PriceShop: TDBNumberEditEh;
    Edit_Price2: TDBNumberEditEh;
    Edit_Price1: TDBNumberEditEh;
    Label17: TLabel;
    Bevel9: TBevel;
    edit_OldPrice1: TDBNumberEditEh;
    edit_OldPrice2: TDBNumberEditEh;
    edit_OldPriceShop: TDBNumberEditEh;
    Bevel1: TBevel;
    edit_PriceShop2: TDBNumberEditEh;
    edit_OldPriceShop2: TDBNumberEditEh;
    edit_PriceCategory: TDBLookupComboboxEh;
    btn_ok: TcxButton;
    btn_apply: TcxButton;
    btn_cancel: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    Label24: TLabel;
    lbl_totalcount: TLabel;
    Label18: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    DateLabel: TDBText;
    Label11: TLabel;
    PriceChangedText: TDBText;
    Label16: TLabel;
    LastSaleText: TDBText;
    Label12: TLabel;
    lbl_allarrived: TLabel;
    Label13: TLabel;
    lbl_allsaled: TLabel;
    Label25: TLabel;
    DBText2: TDBText;
    item_date_to_check: TDateTimePicker;
    editDepot: TcxLookupComboBox;
    cxButton1: TcxButton;
    DBGridEh1: TDBGridEh;
    cxGroupBox4: TcxGroupBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    DBComboBoxEh1: TDBComboBoxEh;
    edit_weight: TDBNumberEditEh;
    Label2: TLabel;
    lbl_total_weight: TLabel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    btn_recalculate: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure TB_SupplPrices1Columns0GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices1Columns1GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices1Columns2GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices1Columns3GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices1Columns4GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices1Columns5GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices1Columns6GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices1Columns7GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices1Columns8GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices1Columns9GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices2Columns0GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices2Columns1GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices2Columns2GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices2Columns3GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices2Columns4GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices2Columns5GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices2Columns6GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices2Columns7GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices2Columns8GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_SupplPrices2Columns9GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_applyClick(Sender: TObject);
    procedure LPgridDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure cxButton1Click(Sender: TObject);
    procedure btn_recalculateClick(Sender: TObject);
  private
    min_ext_price: real;
    procedure UpdateLabels;
  public
    EnControl: Boolean;
    isFromArrival: Boolean;
  end;

var
  ItemEditorForm: TItemEditorForm;

implementation

uses DataConteiner, HistoryUnit, MainUnit, QueryDataContainer,
  ShopProduct, Settings;

{$R *.dfm}

procedure TItemEditorForm.FormShow(Sender: TObject);
begin
  UpdateLabels;
  Edit_Firm.Enabled := EnControl;
  Edit_FullName.Enabled := EnControl;
  Edit_Price1.Enabled := EnControl;
  Edit_Price2.Enabled := EnControl;
  Edit_PriceShop.Enabled := EnControl;
  edit_PriceShop2.Enabled := EnControl;
  edit_OldPrice1.Enabled := EnControl;
  edit_OldPrice2.Enabled := EnControl;
  edit_OldPriceShop.Enabled := EnControl;
  edit_OldPriceShop2.Enabled := EnControl;
  Edit_Type.Enabled := EnControl;
  edit_PriceCategory.Enabled := EnControl;
  btn_recalculate.Visible := Data.DS_Goods.State <> dsInsert;
  if EnControl then
    begin
      Edit_Price1.SetFocus;
      Edit_Price1.SelectAll;
    end
end;

procedure TItemEditorForm.UpdateLabels;
var
  good_id: Integer;
  all_saled: real;
  all_arrived: real;
  s: string;
  last_arrival_price: real;
begin
  good_id := Data.DS_Goods.fbn('ID').AsInteger;
  Data.DS_EXT_PRICE.Locate('GOOD_ID', inttostr(good_id), []);
  min_ext_price := Data.DS_EXT_PRICE.fbn('EXT_PRICE').AsFloat;
  all_saled := Data.AllSaled(Data.DS_Goods.fbn('ID').AsInteger);
  all_arrived := Data.AllArrived(Data.DS_Goods.fbn('ID').AsInteger);
  lbl_allsaled.caption := floattostr(all_saled);
  lbl_allarrived.caption := floattostr(all_arrived);
  lbl_totalcount.caption := floattostr(all_arrived - all_saled);
  lbl_total_weight.Caption := FloatToStrF(Data.DS_Goods.FBN('WEIGHT_ALL').AsFloat, ffFixed, 20, 2) + ' ��.';
end;


procedure TItemEditorForm.LPgridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  SavedAlign: Word;
  s: string;
begin
  with (Sender as TStringGrid) do
  begin
    if ARow = 0 then
      Canvas.Brush.Color := RootLookAndFeel.Painter.DefaultHeaderBackgroundColor
    else
      Canvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentColor;
    Canvas.FillRect(Rect);
    s := Cells[ACol, ARow];
    SavedAlign := SetTextAlign(Canvas.Handle, TA_CENTER);
    Canvas.TextRect(Rect, Rect.Left + (Rect.Right - Rect.Left) div 2,
      Rect.Top + 1, s);
    SetTextAlign(Canvas.Handle, SavedAlign);
  end;
end;

procedure TItemEditorForm.FormCreate(Sender: TObject);
var
  i: TIniFile;
begin
  i := TIniFile.Create(ExtractFilePath(Application.ExeName) + inifile);
  Top := i.ReadInteger('ItemEditorForm', 'Top', 200);
  Left := i.ReadInteger('ItemEditorForm', 'Left', 200);
  i.Free;
  isFromArrival := false;
end;

procedure TItemEditorForm.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
var
  price: real;
  sp_price: real;
  gen_price: real;
begin
  if (Msg.CharCode = VK_F4) and (HistoryForm.Visible = false) then
    HistoryForm.ShowEx(Data.DS_Goods.FieldByName('ID').AsInteger, default);
end;

procedure TItemEditorForm.cxButton1Click(Sender: TObject);
var
  saled, arrived, moved: real;
begin
  saled := Data.AllSaledOnDate(Data.DS_Goods.fbn('ID').AsInteger,
    item_date_to_check.Date, editDepot.EditValue);
  arrived := Data.AllArrivedOnDate(Data.DS_Goods.fbn('ID').AsInteger,
    item_date_to_check.Date, editDepot.EditValue);
  moved := Data.AllMovedOnDate(Data.DS_Goods.fbn('ID').AsInteger,
    item_date_to_check.Date, editDepot.EditValue);
  ShowMessage('������� �� ''' + editDepot.Text + ''' �� ' +
    datetostr(item_date_to_check.Date) + ' : ' + floattostr(arrived + moved
    - saled));
end;

procedure TItemEditorForm.btn_recalculateClick(Sender: TObject);
begin
  Data.RecalculateCounts(Data.DS_Goods.fbn('ID').AsInteger);
  UpdateLabels;
end;

procedure TItemEditorForm.TB_SupplPrices1Columns0GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_1'] <> null then
    if Data.DS_Goods['AVAILABLE_1'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices1Columns1GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_2'] <> null then
    if Data.DS_Goods['AVAILABLE_2'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices1Columns2GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_3'] <> null then
    if Data.DS_Goods['AVAILABLE_3'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices1Columns3GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_4'] <> null then
    if Data.DS_Goods['AVAILABLE_4'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices1Columns4GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_5'] <> null then
    if Data.DS_Goods['AVAILABLE_5'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices1Columns5GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_6'] <> null then
    if Data.DS_Goods['AVAILABLE_6'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices1Columns6GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_7'] <> null then
    if Data.DS_Goods['AVAILABLE_7'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices1Columns7GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_8'] <> null then
    if Data.DS_Goods['AVAILABLE_8'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices1Columns8GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_9'] <> null then
    if Data.DS_Goods['AVAILABLE_9'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices1Columns9GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_10'] <> null then
    if Data.DS_Goods['AVAILABLE_10'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices2Columns0GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_11'] <> null then
    if Data.DS_Goods['AVAILABLE_11'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices2Columns1GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_12'] <> null then
    if Data.DS_Goods['AVAILABLE_12'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices2Columns2GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_13'] <> null then
    if Data.DS_Goods['AVAILABLE_13'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices2Columns3GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_14'] <> null then
    if Data.DS_Goods['AVAILABLE_14'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices2Columns4GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_15'] <> null then
    if Data.DS_Goods['AVAILABLE_15'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices2Columns5GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_16'] <> null then
    if Data.DS_Goods['AVAILABLE_16'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices2Columns6GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_17'] <> null then
    if Data.DS_Goods['AVAILABLE_17'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices2Columns7GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_18'] <> null then
    if Data.DS_Goods['AVAILABLE_18'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices2Columns8GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_19'] <> null then
    if Data.DS_Goods['AVAILABLE_19'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.TB_SupplPrices2Columns9GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_Goods['AVAILABLE_20'] <> null then
    if Data.DS_Goods['AVAILABLE_20'] > 0 then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TItemEditorForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOK then
    exit;

  if Data.DS_Defaults.State = dsEdit then
    Data.DS_Defaults.Post;
end;

procedure TItemEditorForm.btn_applyClick(Sender: TObject);
begin
  if (Data.DS_Goods.State = dsEdit) or (Data.DS_Goods.State = dsInsert) then
    Data.DS_Goods.Post;
end;

end.
