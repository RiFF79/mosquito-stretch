unit int_const;

interface

uses Graphics;

const

  // �����
  inifile = 'mosquito35.ini';
  req_report_file = '����������.fr3';

  // ����������� ��������
  default_depotrowcount = 8;

  // ���� ���������
  default = -10;
  ALL = -1; // ���
  SL = 0; // ���������
  AR = 1; // ���������
  MV = 2; // ����������
  RC = 3; // ������� �� ����������
  RS = 4; // ������� ����������
  KS = 5; // �������� ��������
  DL = 6; // ���� �� ������ �������
  PR = 7; // ������������
  SP = 8; // ������������

  Curs_NoviyVek = 33;
  proc_NV_kosm = 1.25;
  // proc_mag_kosm = 1.25;
  proc_NV_parf = 1.15;
  proc_mag_parf = 1.15;
  none = -123456;

  // �������� ���������
  pExec = '-1';
  pReturn = '1';

  // �����
  color_Defect = clNavy;
  color_Minus = clRed;
  color_Wait = $009F9F9F;
  color_CheckProgress = $00F4F2DD;

  // ���������
  tr_Arrival = 0;
  tr_Arr_Exec = 1;
  tr_Arr_Wait = 2;
  tr_Sale = 3;
  tr_Sale_Exec = 4;
  tr_Sale_Wait = 5;
  tr_Production = 6;
  tr_Production_Exec = 7;
  tr_Production_Wait = 8;
  tr_Moves = 9;
  tr_Moves_Exec = 10;
  tr_Moves_Wait = 11;
  tr_Return_Suppl = 12;
  tr_Ret_Suppl_Exec = 13;
  tr_Ret_Suppl_Wait = 14;
  tr_Return_Cust = 15;
  tr_Ret_Cust_Exec = 16;
  tr_Ret_Cust_Wait = 17;
  tr_KASSA = 18;

  // ��������������
  tr_GoodTypes = 0;
  tr_Depots = 1;
  tr_Firms = 2;
  tr_Currency = 3;
  tr_Suppliers = 4;
  tr_Customers = 5;
  tr_ImportPrices = 6;
  tr_Prices = 7;
  tr_GenPrice = 8;
  tr_PriceTrash = 9;

  // ������
  tr_Reports = 0;
  tr_GoodsOnDepots = 1;
  tr_AccReport = 2;
  tr_DayReport = 3;
  tr_DolgiKlienta = 4;
  tr_GenReports = 5;
  tr_GenReport_Parf = 6;
  tr_GenReport_Kosm = 7;
  tr_SpecReports = 8;
  tr_SpecReport_Parf = 9;
  tr_SpecReport_Kosm = 10;
  tr_RetReports = 11;
  tr_RetReport_Parf = 12;
  tr_RetReport_Kosm = 13;
  tr_SupplReports = 14;
  tr_SupplReport_Parf = 15;
  tr_SupplReport_Kosm = 16;
  tr_Count_Reports = 17;
  tr_CountReport_Depots = 18;
  tr_CountReport_Depots_Parf = 19;
  tr_CountReport_Depots_Kosm = 20;
  tr_OtherReports = 21;
  tr_LastArrPrices = 22;
  tr_Articuls = 23;
  tr_GenaReport = 24;
  tr_DneprReport = 25;
  tr_ParfexReport = 26;

  // ���������
  tr_ReportsSettings = 0;
  tr_DefaultSettings = 1;
  tr_Colors = 2;
  tr_GoodsFullEdit = 3;

implementation

end.
