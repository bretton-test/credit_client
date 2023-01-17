unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGridEh, ExtCtrls, DBTables, ImgList, DBCtrls,
  ComCtrls, StdCtrls, Menus, Mask, DBCtrlsEh, Buttons, SpeedForm, FR_Class,
  FR_Desgn,INIFiles, FR_DSet, FR_DBSet,messageunit,smtp1, PropStorageEh,
  FR_BarC,ehlibbde,DbUtilsEh, PropFilerEh, GridsEh, GIFImage, AppEvnts,
  DBSumLst, FR_Shape, DBClient, RxGIF, jpeg, LMDPNGImage, DBGridEhGrouping;




type
  TmainForm = class(TForm)
    clientTable: TTable;
    DataSource1: TDataSource;
    Panel1: TPanel;
    DBGrid: TDBGridEh;
    clientTableId: TAutoIncField;
    clientTableData: TDateField;
    clientTableName: TStringField;
    clientTableNdogovor: TStringField;
    clientTableNschet: TStringField;
    clientTableSum: TCurrencyField;
    clientTableReg: TIntegerField;
    ImageList1: TImageList;
    Panel2: TPanel;
    datepick: TDateTimePicker;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    rekform: TSpeedForm;
    ok: TBitBtn;
    no: TBitBtn;
    magname: TDBEditEh;
    adres: TDBEditEh;
    ntel: TDBEditEh;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    frDesigner1: TfrDesigner;
    frReport1: TfrReport;
    N3: TMenuItem;
    N4: TMenuItem;
    frDBDataSet1: TfrDBDataSet;
    clientTableAdres: TStringField;
    BitBtn1: TBitBtn;
    N5: TMenuItem;
    N7: TMenuItem;
    Panel3: TPanel;
    OkBut: TBitBtn;
    noBut: TBitBtn;
    N8: TMenuItem;
    N9: TMenuItem;
    BitBtn4: TBitBtn;
    mailform: TSpeedForm;
    boxname: TDBEditEh;
    smtpname: TDBEditEh;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    clientTableOwner: TStringField;
    clientTableBank: TStringField;
    BitBtn6: TBitBtn;
    magn: TDBEditEh;
    Label7: TLabel;
    mySql: TDBEditEh;
    Label8: TLabel;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    N6: TMenuItem;
    EMAIL1: TMenuItem;
    kredForm: TSpeedForm;
    nameedit: TDBEditEh;
    dogEdit: TDBEditEh;
    accEdit: TDBEditEh;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    okButton: TBitBtn;
    BitBtn7: TBitBtn;
    findButton: TBitBtn;
    FindForm: TSpeedForm;
    FinddbGrid: TDBGridEh;
    Nfind: TDBEditEh;
    Label12: TLabel;
    DogFind: TDBEditEh;
    Label13: TLabel;
    BitBtn2: TBitBtn;
    clientTableTime: TTimeField;
    frBarCodeObject1: TfrBarCodeObject;
    adrEdit: TDBEditEh;
    Label14: TLabel;
    bankedit: TDBEditEh;
    Label15: TLabel;
    sumedit: TDBEditEh;
    Label16: TLabel;
    owneredit: TDBEditEh;
    Label17: TLabel;
    ownForm: TSpeedForm;
    DBGridEh1: TDBGridEh;
    SpeedButton1: TSpeedButton;
    syncform: TSpeedForm;
    Memo1: TMemo;
    clientTableKtodal: TIntegerField;
    RadioGroup1: TRadioGroup;
    N13: TMenuItem;
    N14: TMenuItem;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    komform: TSpeedForm;
    kokBtn: TBitBtn;
    BitBtn12: TBitBtn;
    Label19: TLabel;
    kaccEdit: TDBEditEh;
    Label20: TLabel;
    Label21: TLabel;
    kadrEdit: TDBEditEh;
    knameEdit: TDBEditEh;
    Label22: TLabel;
    kownEdit: TDBEditEh;
    Label23: TLabel;
    Label24: TLabel;
    kenergyEdit: TDBNumberEditEh;
    Label25: TLabel;
    kpeniEdit: TDBNumberEditEh;
    itogedit: TDBNumberEditEh;
    Label26: TLabel;
    ksumedit: TDBNumberEditEh;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    logo: TImage;
    clientTableTel: TStringField;
    Label27: TLabel;
    teledit: TDBEditEh;
    Label28: TLabel;
    kteledit: TDBEditEh;
    finalform: TSpeedForm;
    BitBtn11: TBitBtn;
    famlabel: TLabel;
    accLabel: TLabel;
    dogLabel: TLabel;
    BitBtn13: TBitBtn;
    namelabel: TLabel;
    otchlabel: TLabel;
    mailTimer: TTimer;
    waitform: TSpeedForm;
    Label29: TLabel;
    pbar2: TProgressBar;
    ApplicationEvents1: TApplicationEvents;
    sumlabel: TLabel;
    rusmenu: TPopupMenu;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    ktosum: TDBSumList;
    Image2: TImage;
    ankform: TSpeedForm;
    ankname: TDBEditEh;
    Label18: TLabel;
    ankdr: TDBDateTimeEditEh;
    Label30: TLabel;
    Label31: TLabel;
    ankmr: TDBEditEh;
    ankgr: TDBEditEh;
    Label32: TLabel;
    ancdoc: TDBEditEh;
    Label33: TLabel;
    ancrecdok: TDBEditEh;
    Label34: TLabel;
    Label35: TLabel;
    ancprop: TDBEditEh;
    Label36: TLabel;
    ankinn: TDBEditEh;
    anctel: TDBEditEh;
    Label37: TLabel;
    Label38: TLabel;
    ancdovname: TDBEditEh;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    frShapeObject1: TfrShapeObject;
    N24: TMenuItem;
    newds: TClientDataSet;
    newds2: TClientDataSet;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    BitBtn16: TBitBtn;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    N25: TMenuItem;
    Image1: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    allmag: TCheckBox;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    kapAcc: TDBEditEh;
    Label39: TLabel;
    procedure clientTableAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure datepickChange(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure clientTableAfterPost(DataSet: TDataSet);
    procedure clientTableAfterCancel(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure clientTableAfterEdit(DataSet: TDataSet);
    procedure OkButClick(Sender: TObject);
    procedure noButClick(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure frReport1PrintReport;
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure EMAIL1Click(Sender: TObject);
    procedure NewKredClick(Sender: TObject);
    procedure okButtonClick(Sender: TObject);
    procedure findButtonClick(Sender: TObject);
    procedure NfindKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FinddbGridDblClick(Sender: TObject);
    procedure clientTableBeforePost(DataSet: TDataSet);
    procedure FindFormShow(Sender: TObject);
    procedure kredFormShow(Sender: TObject);
    procedure dogEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure accEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nameeditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure adrEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sumeditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ownereditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGridApplyFilter(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure kaccEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure knameEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kadrEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kenergyEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kpeniEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kownEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kokBtnClick(Sender: TObject);
    procedure ksumeditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure komformShow(Sender: TObject);
    procedure accEditEnter(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure waitformHide(Sender: TObject);
    procedure wn(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kteleditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function decodeName(const fullname:string;
                         var name:string;
                         var otchestvo:string;
                         var familya:string):boolean;
    procedure mailTimerTimer(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure clientTableFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ktosumSumListChanged(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure ankdrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ankgrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ancdocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ancrecdokKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ancpropKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ankinnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure anctelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ankmrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ankformShow(Sender: TObject);
    procedure allmagClick(Sender: TObject);
    procedure kapAccKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);


  private
    procedure printAnketa(const bank,dog:string);


   protected
    { Private declarations }
      tid:integer;
      errorid:integer;
      tableerror:boolean;
      timecount:integer;
      Function CreateMailForm:TForm1;
      function ChekC(const field:string):string;
     function  RusToENG( AnsiString: String ): String;
     function  engToRUS( AnsiString: String ): String;
      function calcbar(const summa:Currency;const bank:string;const kto:integer;
                                                       const dogovor:string):string;
      procedure loadLogo(const bank:string);
     procedure calckom;
     function oblast:boolean;
     procedure newdts;
    public
    { Public declarations }
   FINIFile: TINIFile;

  end;

var
  mainForm: TmainForm;

implementation

uses Math, dmUnit, mySQLDbTables, StrUtils;

{$R *.dfm}


procedure tmainform.newdts;
begin
        with newds do begin
      Close;
        FieldDefs.Clear;

     // with newds do begin
      { define indexes for the new table }
          with FieldDefs.AddFieldDef do begin
          Name := 'ind';
          DataType := ftInteger;
         // Visible:=false;
         // Size := 20;
          Required := True;
          end;

        with FieldDefs.AddFieldDef do begin
        Name := 'pic';
        DataType := ftBlob;
        // Visible:=false;
       // Size := 20;
        Required := True;
        end;


     IndexDefs.Clear;
      with IndexDefs.AddIndexDef do begin
        Name := '';
        Fields := 'ind';
        Options := [ixPrimary];
      end;
 CreateDataSet;
 open;

 end;

        with newds2 do begin
      Close;
        FieldDefs.Clear;

     // with newds do begin
      { define indexes for the new table }
          with FieldDefs.AddFieldDef do begin
          Name := 'ind';
          DataType := ftInteger;
         // Visible:=false;
         // Size := 20;
          Required := True;
          end;

        with FieldDefs.AddFieldDef do begin
        Name := 'pic';
        DataType := ftBlob;
        // Visible:=false;
       // Size := 20;
        Required := True;
        end;


     IndexDefs.Clear;
      with IndexDefs.AddIndexDef do begin
        Name := '';
        Fields := 'ind';
        Options := [ixPrimary];
      end;
 CreateDataSet;
 open;

 end;


  end;
//--------------------------------------------------------------------------





//-------------------------------------------------------------------------
   function tmainform.oblast:boolean;
   var temp:string;
   begin
   result:=false;
   temp:= copy(magn.Text,1,3);
   if (temp='log') or (temp='bag') or (temp='bog') or (temp='kml') or
   (temp='irb')   then result:=true;


  end;
//------------------------------------------------------------------------
  procedure tmainform.printAnketa(const bank,dog:string);
   begin
     try
      dm.ancQuery.Close;
      dm.ancQuery.ParamByName('bank').AsString:=AnsiUpperCase(trim(bank));
      dm.ancQuery.ParamByName('dog').AsString:=AnsiUpperCase(trim(dog));
      dm.ancQuery.Open;
     IF DM.ancQuery.RecordCount>0 then
     begin
     frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'anketa.frf');
     frReport1.ShowReport;
     end;
    except

    end;
   end;
  //---------------------------------------------------------------
   function tmainform.decodeName(const fullname:string;
                         var name:string;
                         var otchestvo:string;
                         var familya:string):boolean;

   var temp:string;
       i,j:integer;





   begin
   result:=false;
   temp:=trim(AnsiUpperCase (fullname));
   for i:=1 to length(temp) do
    begin
     if temp[i]=' ' then
                     begin
                     familya:= Copy(temp,1,i-1);
                     break;
                     end;
    end;
    if i= length(temp) then exit;

    while (temp[i+1]=' ') and (i<length(temp)) do inc(i);
    if i= length(temp) then exit;

    for j:=i+1 to length(temp) do
    begin
     if temp[j]=' ' then
                     begin
                     name:= Copy(temp,i+1,j-(i+1));
                     break;
                     end;
    end;
    i:=j;
     if i= length(temp) then exit;

    while (temp[i+1]=' ') and (i<length(temp)) do inc(i);
    if i= length(temp) then exit;
    otchestvo:=copy(temp,i+1,length(temp)-i);

    result:=true;


   end;
 //-----------------------------------------------------------------------------
  procedure tmainform.loadLogo(const bank:string);
   var path:string;
   begin
   try
    logo.Visible:=false;
    path:=ExtractFilePath(Application.ExeName);
    if bank='MB' then logo.Picture.LoadFromFile(path+'logomechel.gif');
    if bank='RS' then logo.Picture.LoadFromFile(path+'logors.gif');
    if bank='HK' then logo.Picture.LoadFromFile(path+'logo_hc.gif');
    if bank='RF' then logo.Picture.LoadFromFile(path+'logorf.gif');
    if bank='DU' then logo.Picture.LoadFromFile(path+'logokbdu.gif');
    if bank='RK' then logo.Picture.LoadFromFile(path+'logo_rk.gif');
    if bank='OT' then logo.Picture.LoadFromFile(path+'logoOTP.gif');
    if bank='TK' then logo.Picture.LoadFromFile(path+'tkslogo.bmp');
    if bank='US' then logo.Picture.LoadFromFile(path+'uralsib.gif');
    if bank='AB' then logo.Picture.LoadFromFile(path+'a1.jpg');
    if bank='GE' then logo.Picture.LoadFromFile(path+'gebank.gif');
    if bank='CT' then logo.Picture.LoadFromFile(path+'cet1.bmp');
    if bank='PS' then logo.Picture.LoadFromFile(path+'psa.gif');
    if bank='RR' then logo.Picture.LoadFromFile(path+'ubrrlogo.bmp');
    if bank='SK' then logo.Picture.LoadFromFile(path+'trustlogo.bmp');
    if bank='SB' then logo.Picture.LoadFromFile(path+'logoskb.bmp');
    if bank='EB' then logo.Picture.LoadFromFile(path+'europa.bmp');
    if bank='OB' then logo.Picture.LoadFromFile(path+'banklogoOTKR.png');
    if bank='LE' then logo.Picture.LoadFromFile(path+'letologo.bmp');
    if bank='UC' then logo.Picture.LoadFromFile(path+'unilogo.bmp');
     logo.Visible:=true;




   except

   end;
   end;
 //----------------------------------------------------------------------------
 function TmainForm.calcbar(const summa:Currency;const bank:string;const kto:integer;
                            const dogovor:string):string;
   var temp,tempsum:string;
       tempd:char;
      i,n:integer;
      komm:integer;

   begin
     result:='';
     tempd:=DecimalSeparator;

    try
     DecimalSeparator:='.';
    if date<StrToDate('01.01.2008')
   then
   begin

     temp:='290000000000';
         if kto<2 then komm:=0
         else komm:=round(kto/10)*10;


         if (AnsiLowerCase(bank)='mb') and (kto=1) then temp[3]:='1';
         if (AnsiLowerCase(bank)='mb') and (kto<>1) then temp[3]:='5';
         if AnsiLowerCase(bank)='rf' then temp[3]:='4';
         if (AnsiLowerCase(bank)='rs') and (kto=1) then  temp[3]:='2';
         if (AnsiLowerCase(bank)='rs') and (kto<>1) then  temp[3]:='3';

         if AnsiLowerCase(bank)='hk' then temp[3]:='6';
         if AnsiLowerCase(bank)='kp' then temp[3]:='7';
         if AnsiLowerCase(bank)='rk' then temp[3]:='8';
         if AnsiLowerCase(bank)='ot' then temp[3]:='9';

         //end;
    // if temp[3]='0'  then temp[3]:='3';
     tempsum:=CurrToStr(summa);
      if pos('.',tempsum)=0 then tempsum:=tempsum+'00'
     else if  pos('.',tempsum)=length(tempsum)-1 then tempsum:=tempsum+'0';
     while  pos('.',tempsum)>0 do Delete(tempsum,pos('.',tempsum),1);
     i:=length(tempsum);
     if i<10 then   for n:=1 to i do temp[12-i+n]:=tempsum[n];
     case komm of
       20: temp[4]:='2';
       30: temp[4]:='3';
       40: temp[4]:='4';
      end;
   end else
   begin

     temp:='210000000000';
          komm:=kto;


         if (AnsiLowerCase(bank)='rs')  then temp[3]:='1';
         if (AnsiLowerCase(bank)='rf')  then temp[3]:='2';
         if (AnsiLowerCase(bank)='hk')  then  temp[3]:='3';
         if AnsiLowerCase(bank)='du' then temp[3]:='4';
         if (AnsiLowerCase(bank)='rk')  then  temp[3]:='5';
         if AnsiLowerCase(bank)='ot' then temp[3]:='6';
         if AnsiLowerCase(bank)='tk' then temp[3]:='7';
         if AnsiLowerCase(bank)='us' then temp[3]:='8';
         if AnsiLowerCase(bank)='ab' then temp[3]:='9';
         if AnsiLowerCase(bank)='ge' then  begin temp[2]:='2';temp[3]:='0';end;
         if AnsiLowerCase(bank)='ct' then  begin temp[2]:='2';temp[3]:='1';end;
         if AnsiLowerCase(bank)='ps' then  begin temp[2]:='2';temp[3]:='2';end;
         if AnsiLowerCase(bank)='rr' then  begin temp[2]:='2';temp[3]:='3';end;
         if AnsiLowerCase(bank)='sk' then  begin temp[2]:='2';temp[3]:='4';end;
         if AnsiLowerCase(bank)='kp' then  begin temp[2]:='2';temp[3]:='5';end;
         if AnsiLowerCase(bank)='sb' then  begin temp[2]:='2';temp[3]:='6';end;
         if AnsiLowerCase(bank)='ob' then  begin temp[2]:='2';temp[3]:='7';end;
         if AnsiLowerCase(bank)='le' then  begin temp[2]:='2';temp[3]:='8';end;
         if AnsiLowerCase(bank)='uc' then  begin temp[2]:='2';temp[3]:='9';end;





         //end;
   //  if temp[2]='0'  then temp[2]:='3';
     tempsum:=CurrToStr(summa);
     // if pos('.',tempsum)=0 then tempsum:=tempsum+'00'
     //else
    if pos('.',tempsum)>0 then
    begin
      if  pos('.',tempsum)=length(tempsum)-1 then tempsum:=copy(tempsum,1,length(tempsum)-2);//tempsum+'0';
      if  pos('.',tempsum)=length(tempsum)-2 then tempsum:=copy(tempsum,1,length(tempsum)-3);//tempsum+'0';

      while  pos('.',tempsum)>0 do Delete(tempsum,pos('.',tempsum),1);
    end;

     i:=length(tempsum);
     if i<10 then   for n:=1 to i do temp[12-i+n]:=tempsum[n];
     {case komm of
       20: temp[4]:='2';
       30: temp[4]:='3';
       40: temp[4]:='4';
      end; }
     tempsum:=inttostr(komm);
     if komm>999 then
     for i:=4 to 6 do  temp[i]:=tempsum[i-3]
     else begin
           temp[5]:=tempsum[1];
           temp[6]:=tempsum[2];

          end;

   end;
      result:=temp;
    finally
    DecimalSeparator:=tempd;
    end;

   end;
//-----------------------------------------------------------------------------
function  TmainForm.RusToENG( AnsiString: String ): String;
var i : Word;
begin
  Result := '';
  for i := 1 to Length(AnsiString) do begin
   case Ord(AnsiString[i]) of
    32..57: Result := Result + AnsiString[i];
    65..122: Result := Result + AnsiString[i];
    Ord('А') : Result := Result + Chr(65);
    Ord('Б') : Result := Result + Chr(66);
    Ord('В') : Result := Result + Chr(86);
    Ord('Г') : Result := Result + Chr(71);
    Ord('Д') : Result := Result + Chr(68);
    Ord('Е') : Result := Result + Chr(69);
         168 : Result := Result + Chr(69);
    Ord('Ж') : Result := Result + Chr(88);
    Ord('З') : Result := Result + Chr(90);
    Ord('И') : Result := Result + Chr(73);
    Ord('Й') : Result := Result + Chr(89);
    Ord('К') : Result := Result + Chr(75);
    Ord('Л') : Result := Result + Chr(76);
    Ord('М') : Result := Result + Chr(77);
    Ord('Н') : Result := Result + Chr(78);
    Ord('О') : Result := Result + Chr(79);
    Ord('П') : Result := Result + Chr(80);
    Ord('Р') : Result := Result + Chr(82);
    Ord('С') : Result := Result + Chr(83);
    Ord('Т') : Result := Result + Chr(84);
    Ord('У') : Result := Result + Chr(85);
    Ord('Ф') : Result := Result + Chr(70);
    Ord('Х') : Result := Result + Chr(72);
    Ord('Ц') : Result := Result + Chr(67);
    Ord('Ч') : Result := Result + Chr(48);
    Ord('Ш') : Result := Result + Chr(49);
    Ord('Щ') : Result := Result + Chr(50);
    Ord('Ъ') : Result := Result + Chr(51);
    Ord('Ы') : Result := Result + Chr(52);
    Ord('Ь') : Result := Result + Chr(53);
    Ord('Э') : Result := Result + Chr(54);
    Ord('Ю') : Result := Result + Chr(55);
    Ord('Я') : Result := Result + Chr(56);

    Ord('а') : Result := Result + Chr(65);
    Ord('б') : Result := Result + Chr(66);
    Ord('в') : Result := Result + Chr(86);
    Ord('г') : Result := Result + Chr(71);
    Ord('д') : Result := Result + Chr(68);
    Ord('е') : Result := Result + Chr(69);
    Ord('ё') : Result := Result + Chr(69);
    Ord('ж') : Result := Result + Chr(88);
    Ord('з') : Result := Result + Chr(90);
    Ord('и') : Result := Result + Chr(73);
    Ord('й') : Result := Result + Chr(89);
    Ord('к') : Result := Result + Chr(75);
    Ord('л') : Result := Result + Chr(76);
    Ord('м') : Result := Result + Chr(77);
    Ord('н') : Result := Result + Chr(78);
    Ord('о') : Result := Result + Chr(79);
    Ord('п') : Result := Result + Chr(80);
    Ord('р') : Result := Result + Chr(82);
    Ord('с') : Result := Result + Chr(83);
    Ord('т') : Result := Result + Chr(84);
    Ord('у') : Result := Result + Chr(85);
    Ord('ф') : Result := Result + Chr(70);
    Ord('х') : Result := Result + Chr(72);
    Ord('ц') : Result := Result + Chr(67);
    Ord('ч') : Result := Result + Chr(48);
    Ord('ш') : Result := Result + Chr(49);
    Ord('щ') : Result := Result + Chr(50);
    Ord('ъ') : Result := Result + Chr(51);
    Ord('ы') : Result := Result + Chr(52);
    Ord('ь') : Result := Result + Chr(53);
    Ord('э') : Result := Result + Chr(54);
    Ord('ю') : Result := Result + Chr(55);
    Ord('я') : Result := Result + Chr(56);

    Ord('±') : Result := Result + Chr($B1);
   end;//case
  end;//for
end;
//-------------------------------------------------------------------------------

//-----------------------------------------------------------------------------
function  TmainForm.ENGTorus( AnsiString: String ): String;
var i : Word;
begin
  Result := '';
  for i := 1 to Length(AnsiString) do begin
   case Ord(AnsiString[i]) of
    32..47: Result := Result + AnsiString[i];

          65 : Result := Result + 'А';
    66 : Result := Result + 'Б';
    86 : Result := Result + 'В';
    71 : Result := Result + 'Г';
    68 : Result := Result + 'Д';
    69 : Result := Result + 'Е';
    88 : Result := Result + 'Ж';
    90 : Result := Result + 'З';
    73 : Result := Result + 'И';
    89 : Result := Result + 'Й';
    75 : Result := Result + 'К';
    76 : Result := Result + 'Л';
    77 : Result := Result + 'М';
    78 : Result := Result + 'Н';
    79 : Result := Result + 'О';
    80 : Result := Result + 'П';
    82 : Result := Result + 'Р';
    83 : Result := Result + 'С';
    84 : Result := Result + 'Т';
    85 : Result := Result + 'У';
    70 : Result := Result + 'Ф';
    72 : Result := Result + 'Х';
    67 : Result := Result + 'Ц';
    48 : Result := Result + 'Ч';
    49 : Result := Result + 'Ш';
    50 : Result := Result + 'Щ';
    51 : Result := Result + 'Ъ';
    52 : Result := Result + 'Ы';
    53 : Result := Result + 'Ь';
    54 : Result := Result + 'Э';
    55 : Result := Result + 'Ю';
    56 : Result := Result + 'Я';


   end;//case
  end;//for
end;
//-----------------------------------------------------------------------------------
procedure TmainForm.clientTableAfterInsert(DataSet: TDataSet);
begin
clientTableData.Value:=date;
clientTableTime.Value:=Time;
OkBut.Enabled:=true;
noBut.Enabled:=true;

end;

procedure TmainForm.FormCreate(Sender: TObject);
var temp:TStringList;
    tempdata:TDateTime;
begin
//clientTable.CloseIndexFile();
if FileExists(ExtractFilePath(Application.ExeName)+'adv.txt') then
  begin
   temp:=TStringList.Create;
 try
   temp.LoadFromFile(ExtractFilePath(Application.ExeName)+'adv.txt');
   if temp.Count>0 then
    begin
     tempdata:=StrToDate(temp.Strings[0]);
    // ShowMessage(DateToStr(tempdata));
     if Date>=tempdata then
       begin
          DeleteFile(ExtractFilePath(Application.ExeName)+'adv.jpg');
          DeleteFile(ExtractFilePath(Application.ExeName)+'adv1.jpg');


       end;
    end;
    finally
    temp.Free;
    end;



  end;
newdts;

if FileExists(ExtractFilePath(Application.ExeName)+'adv.jpg') then
begin


newds.Append;
newds.FieldValues['ind']:=1;
TBlobField( newds.FieldByName('pic')).LoadFromFile(ExtractFilePath(Application.ExeName)+'adv.jpg');
newds.Post;
end;

if FileExists(ExtractFilePath(Application.ExeName)+'adv1.jpg') then
begin
newds2.Append;
newds2.FieldValues['ind']:=2;
TBlobField( newds2.FieldByName('pic')).LoadFromFile(ExtractFilePath(Application.ExeName)+'adv1.jpg');
newds2.Post;
end;



timecount:=0;
clientTable.TableName:=ExtractFilePath(Application.ExeName)+'newclient.DB';
clientTable.Open;
datepick.Date:=date;
datepickChange(nil);
  FINIFile := TINIFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  with FINIFile do begin
    magname.Text := ReadString('Main', 'org', '');
    adres.Text := ReadString('Main', 'adr', '');
    ntel.Text := ReadString('Main', 'tel', '');
    boxname.Text:=ReadString('mail', 'box', '');
    smtpname.Text:=ReadString('mail', 'smtp', '');
    magn.Text:=ReadString('Main', 'mag', '');
    mySql.Text:=ReadString('sql', 'ip', '');
  end;
with mainform do
begin
Left:=0;
top:=0;
Width:=Screen.Width;
Height:=Screen.Height-30;

end;
if not Assigned(dm) then   dm:=TDM.Create(Application);
//dm.oncreate;
//DM.connectDB;
end;

procedure TmainForm.datepickChange(Sender: TObject);
begin
clientTable.Filter:='data ='+chr(39)+FormatDateTime('dd.mm.yy',datepick.DateTime)+chr(39);
//Label1.Caption:=clientTable.Filter;
clientTable.Filtered:=true;
end;

procedure TmainForm.N2Click(Sender: TObject);
begin

DBGrid.SetFocus;
if rekform.ShowModal=mrOk  then
begin
  with FINIFile do begin
    WriteString('Main', 'org', Trim(magname.Text));
    WriteString('Main', 'adr', Trim(adres.Text));
    WriteString('Main', 'tel', Trim(ntel.Text));
    WriteString('Main', 'mag', Trim(magn.Text));

  end;
  ShowMessage('Configuration saved.');

end
else
begin
     with FINIFile do begin
    magname.Text := ReadString('Main', 'org', '');
    adres.Text := ReadString('Main', 'adr', '');
    ntel.Text := ReadString('Main', 'tel', '');
    magn.Text:=ReadString('Main', 'mag', '');
  end;

end;
end;

procedure TmainForm.clientTableAfterPost(DataSet: TDataSet);
begin
If tableerror then
begin
 clientTable.Locate('id',errorid,[]);
 BitBtn2Click(nil);
 end
 else
begin
tid:=clientTableId.Value;
//clientTable.Close;
//clientTable.Database.Close;
//clientTable.Open;
//If tid<>null then clientTable.Locate('id',tid,[]);
DBGrid.ReadOnly:=true;
//datepickChange(nil);
OkBut.Enabled:=false;
noBut.Enabled:=false;

end;

end;

procedure TmainForm.clientTableAfterCancel(DataSet: TDataSet);
begin
DBGrid.ReadOnly:=true;
 datepickChange(nil);
 OkBut.Enabled:=false;
noBut.Enabled:=false;

 end;

procedure TmainForm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FINIFile);
end;

procedure TmainForm.N4Click(Sender: TObject);
begin
 if clientTableBank.Value='MB' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankMB.frf');
    if clientTableBank.Value='RS' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankRS.frf');
    if clientTableBank.Value='HK' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankHK.frf');
     if clientTableBank.Value='KP' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankKP.frf');

    //frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blank.frf');
frReport1.DesignReport;

end;

procedure TmainForm.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
if AnsiCompareText('SummaProp', Name) = 0 then
    val := SummaPropis(frParser.Calc(p1),frParser.Calc(p2));
end;

procedure TmainForm.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
 var n:integer;
    temp:string;
  begin

 if ParName='obl' then begin
                         if oblast
                         then ParValue:='1' else  ParValue:='0';


                       end;
 if ParName='org' then ParValue:=magname.Text;
if ParName='adr' then ParValue:=adres.Text;
if ParName='tel' then ParValue:=ntel.Text;
if ParName='name' then ParValue:='z'+copy(magn.Text+'    ',1,5) +RusToENG(trim(clientTableOwner.Value));
if ParName='adres' then ParValue:=RusToENG(trim(clientTableAdres.Value));
if ParName='dogovor' then ParValue:=RusToENG(trim(clientTableNdogovor.Value));
if ParName='schet' then ParValue:=clientTableNschet.Value;
if ParName='kom' then  begin
                       if date<StrToDate('01.01.2008')
            then
               begin

                         temp:=clientTableKtodal.AsString;
                        { if Length(temp)=1 then
                         parvalue:='0'
                         else }parvalue:=copy(temp,1,1)+'0';
                       //parvalue:=clientTableKtodal
               end else
               begin
                 temp:=clientTableKtodal.AsString;
                 if clientTableKtodal.AsInteger<=999 then
                  parvalue:=copy(temp,1,2) else parvalue:=copy(temp,1,3);

               end;
             end;
  if ParName='komk' then  begin
                       if date<StrToDate('01.01.2008')
            then
               begin


               parvalue:='00';

               end else
               begin
                  temp:=clientTableKtodal.AsString;

                  parvalue:='00';

               end;
             end;



  if ParName='kassa' then parvalue:=calcbar(clientTableSum.AsCurrency,clientTableBank.AsString,clientTableKtodal.AsInteger,clientTableNdogovor.AsString);   //AnsiLowerCase('$'+clientTableBank.AsString+
                                      //          clientTableKtodal.AsString +clientTableSum.AsString );

if ParName='nbklient' then  begin
                            n:=0;
                            clientTable.First;
                            while not clientTable.Eof do
                            begin
                            if (clientTableKtodal.AsInteger=1)
                              and (clientTableReg.AsInteger>0) then inc(n);
                            clientTable.Next;
                            end;
                            ParValue:=n;
                           end;
if ParName='npklient' then  begin
                            n:=0;
                            clientTable.First;
                            while not clientTable.Eof do
                            begin
                            if (clientTableKtodal.AsInteger=21) or (clientTableKtodal.AsInteger=20)
                              and (clientTableReg.AsInteger>0) then inc(n);
                            clientTable.Next;
                            end;
                            ParValue:=n;
                           end;






 if ParName='dklient' then  begin
                            n:=0;
                            clientTable.First;
                            while not clientTable.Eof do
                            begin
                            if (clientTableKtodal.AsInteger>=30)
                           and (clientTableReg.AsInteger>0) then inc(n);
                            clientTable.Next;
                            end;
                            ParValue:=n;
                           end;

  if ParName='dsum' then  begin
                            n:=0;
                            clientTable.First;
                            while not clientTable.Eof do
                            begin
                            if (clientTableKtodal.AsInteger>=30)
                             and (clientTableReg.AsInteger>0) then n:=n+clientTableKtodal.AsInteger;
                            clientTable.Next;
                            end;
                            ParValue:=n;
                           end;

end;

procedure TmainForm.BitBtn1Click(Sender: TObject);
var i:integer;
begin
if AnsiLowerCase(dm.MyBase.DatabaseName)='sela' then
  begin
    ShowMessage('Приём платежей по мечел-банку приостановлен.');
    exit;
  end;
mailTimer.Enabled:=false;
if clientTable.State=dsBrowse
then
begin
DM.connectDB;
DBGrid.ReadOnly:=false;
for i:=0 to DBGrid.Columns.Count-1 do
 begin
  if DBGrid.Columns[i].FieldName='Reg'   then DBGrid.Columns[i].ReadOnly:=true;
  if DBGrid.Columns[i].FieldName='Bank'   then DBGrid.Columns[i].ReadOnly:=true;

  end;
kredForm.Color:=$0060c6c6;
loadLogo('MB');
clientTable.Append;



clientTableBank.Value:='MB';
dogEdit.EditMask:='';
owneredit.Text:=dm.myOwner;
RadioGroup1.ItemIndex:=0;
if kredForm.ShowModal=mrOk then
begin
clientTable.Post;
clientTable.Locate('id',tid,[]);
BitBtn4Click(nil);

end else
begin
clientTable.Cancel;
mailTimer.Enabled:=true;

end;

end;
end;

procedure TmainForm.BitBtn2Click(Sender: TObject);
var i:integer;
begin
if (clientTable.State=dsBrowse) and (clientTable.RecordCount>0)
then
begin
DBGrid.ReadOnly:=false;
for i:=0 to DBGrid.Columns.Count-1 do
 begin
  if DBGrid.Columns[i].FieldName='Reg'   then DBGrid.Columns[i].ReadOnly:=true;
  if DBGrid.Columns[i].FieldName='Bank'   then DBGrid.Columns[i].ReadOnly:=true;
  if DBGrid.Columns[i].FieldName='Ktodal'   then DBGrid.Columns[i].ReadOnly:=true;

  end;
clientTable.edit;
dbgrid.SetFocus;


end;
end;

procedure TmainForm.clientTableAfterEdit(DataSet: TDataSet);
begin
OkBut.Enabled:=true;
noBut.Enabled:=true;
tid:=clientTableId.Value;

end;

procedure TmainForm.OkButClick(Sender: TObject);
begin
if clientTable.State in [dsedit,dsinsert]
then clientTable.Post;


end;

procedure TmainForm.noButClick(Sender: TObject);
begin
if clientTable.State in [dsedit,dsinsert]
then clientTable.Cancel;
end;

procedure TmainForm.N9Click(Sender: TObject);
begin
if (clientTable.State=dsBrowse) and (clientTable.RecordCount>0)
then
if MessageDlg('Удалить строку ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
       if dm.connect then
       begin
          dm.selInput.Close;
          dm.selInput.ParamByName('dog').AsString:=clientTableNdogovor.AsString;
           dm.selInput.ParamByName('data').Asdate:=clientTableData.AsDateTime;
           dm.selInput.ParamByName('time').Astime:=clientTableTime.AsDateTime;
           dm.selinput.Open;
   while not DM.selInput.Eof do
   begin

    if dm.selInputreg.AsInteger=1 then
                   begin
                     ShowMessage('Платёж зарегистрирован.Нельзя удалять !');
                     exit;
                   end;

       dm.selInput.Next;
    end;
   dm.selInput.First;
   while not DM.selInput.Eof do
   begin

    if dm.selInputreg.AsInteger=0 then dm.deleteInput(dm.selInputid.Value,
                                                      clientTableData.AsDateTime,
                                                      clientTableTime.AsDateTime,
                                                      clientTableNdogovor.AsString);


       dm.selInput.Next;
    end;



   // if dm.selInput.RecordCount=1 then dm.deleteInput(dm.selInputid.Value);
     dm.selInput.Close;
      clientTable.Delete;
       end else ShowMessage('нет связи с сервером');



     end;
end;

procedure TmainForm.BitBtn4Click(Sender: TObject);
begin
mailTimer.Enabled:=false;

 if (clientTable.State=dsBrowse) and (clientTable.RecordCount>0)
then begin
dm.connectDB;

  if clientTableBank.Value='MB' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankMB.frf');
    if clientTableBank.Value='RS' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankRS.frf');
  //  if (clientTableBank.Value='RF') and (copy(clientTableNdogovor.AsString,1,1)='0') then
     if (clientTableBank.Value='RF') and (copy(clientTableNschet.AsString,1,5)='40817') then

    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankRF.frf');
     if (clientTableBank.Value='RF') and (copy(clientTableNschet.AsString,1,5)='42301') then

    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankRF.frf');
     if (clientTableBank.Value='RF') and (copy(clientTableNschet.AsString,1,5)='44444') then

    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankRF.frf');



    //    if (clientTableBank.Value='RF') and (copy(clientTableNdogovor.AsString,7,2)='-Ф') then


  //  frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankRF.frf');


  //  if (clientTableBank.Value='RF') and (copy(clientTableNdogovor.AsString,1,1)='2') then
    if (clientTableBank.Value='RF') and (copy(clientTableNschet.AsString,1,4)='7600') then


    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankRFO.frf');

    if clientTableBank.Value='HK' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankHK.frf');
    if clientTableBank.Value='KP' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankKP.frf');

    if clientTableBank.Value='DU' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankDU.frf');

    if clientTableBank.Value='RK' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankRK.frf');
     if clientTableBank.Value='OT' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankOTP.frf');
     if clientTableBank.Value='TK' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankTKS.frf');
       if clientTableBank.Value='US' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankUS.frf');
          if clientTableBank.Value='AB' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankAB.frf');
          if clientTableBank.Value='GE' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankGE.frf');
          if clientTableBank.Value='CT' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankCT.frf');
             if clientTableBank.Value='PS' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankPS.frf');
    if clientTableBank.Value='RR' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankUBRR.frf');
    if clientTableBank.Value='SK' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blanktrust.frf');
    if clientTableBank.Value='SB' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankskb.frf');
    if clientTableBank.Value='EB' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blaneuropa.frf');
    if clientTableBank.Value='OB' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankOTKR.frf');
    if clientTableBank.Value='LE' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankLETO.frf');
    if clientTableBank.Value='UC' then
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'blankunic.frf');


    frReport1.ShowReport;



     end;

 if (dm.connect) and (clientTableBank.Value<>'KP') then printAnketa(clientTableBank.AsString,clientTableNdogovor.AsString);

end;

procedure TmainForm.frReport1PrintReport;
var i:integer;
begin
while  ProgressBar1.Visible do
begin
Application.ProcessMessages;
sleep(100);
end;
i:=1;
if DM.connect
then
begin
if  dm.SendPlat(clientTableData.AsDateTime,
                                clientTableTime.AsDateTime,
                                clientTableName.Value,
                                clientTableNdogovor.Value,
                                clientTableNschet.Value,
                                clientTableAdres.Value,
                                clientTableOwner.Value,
                                clientTableBank.Value,
                                magn.Text,
                                clientTableTel.Value,
                                clientTableSum.AsCurrency,
                                clientTableKtodal.Value,clientTableReg.AsInteger<2)
          then  i:=2 else i:=1;




end;
if clientTableReg.Value<>2 then
begin

clientTable.Edit;
clientTableReg.Value:=i;
clientTable.Post;
end;



mailTimer.Enabled:=true;

end;

procedure TmainForm.N10Click(Sender: TObject);
begin
if mailform.ShowModal=mrOk  then
begin
  with FINIFile do begin
    WriteString('mail', 'box', Trim(boxname.Text));
    WriteString('mail', 'smtp', Trim(smtpname.Text));
    WriteString('sql', 'ip', Trim(mySql.Text));


     end;
  ShowMessage('Configuration saved.');

end
else
begin
     with FINIFile do begin
    boxname.Text:=ReadString('mail', 'box', '');
    smtpname.Text:=ReadString('mail', 'smtp', '');
    mySql.Text:=ReadString('sql', 'ip', '');
  end;

end;
end;

procedure TmainForm.N12Click(Sender: TObject);
var i:integer;
begin
  if (clientTable.State=dsBrowse) and (clientTable.RecordCount>0)
then
begin
mailTimer.Enabled:=false;

DM.connectDB;
ProgressBar1.Visible:=true;
while  ProgressBar1.Visible do
begin
Application.ProcessMessages;
sleep(100);
end;

  form1:=nil;
//mailTimer.Enabled:=true;

if not dm.connect  then
begin
if sender=nil then exit;

ShowMessage('нет связи с сервером');
//CreateMailForm;
mailTimer.Enabled:=true;

exit;

end;

clientTable.First;

//for i:=1 to clientTable.RecordCount do
waitform.Show;
pbar2.Max:=clientTable.RecordCount;
//while not clientTable.Eof do
for i:=1 to clientTable.RecordCount
do   begin
   if clientTableReg.Value>=1
   then
   if not dm.connect then  form1.memMessage.Lines.Add(clientTableData.AsString+';'+trim(clientTableName.AsString)+';'
                  +clientTableNdogovor.AsString+';'+clientTableNschet.AsString+';'+clientTableSum.AsString+';'+clientTableAdres.AsString+';'+
                  clientTableOwner.AsString+' ;'+clientTableBank.Value+';'
                  +magn.Text+';'+clientTableTime.AsString+';')
                 else
                 begin
                  try
            if        dm.SendPlat(clientTableData.AsDateTime,
                                clientTableTime.AsDateTime,
                                clientTableName.Value,
                                clientTableNdogovor.Value,
                                clientTableNschet.Value,
                                clientTableAdres.Value,
                                clientTableOwner.Value,
                                clientTableBank.Value,
                                magn.Text,
                                clientTableTel.Value,
                                clientTableSum.AsCurrency,
                                clientTableKtodal.Value,clientTableReg.Value<2)
             then begin

               if clientTableReg.AsInteger<2 then
                  begin
                  clientTable.AfterEdit:=nil;
                  clientTable.AfterPOST:=nil;

                  //   ind:=clientTableId.AsInteger;
                    clientTable.Edit;
                    clientTableReg.AsInteger:=2;
                    clientTable.Post;
               //     clientTable.Locate('id',ind,[]);
                 clientTable.AfterEdit:=clientTableAfterEdit;
                  clientTable.AfterPOST:= clientTableAfterPOST;


                   end;

                  end;

                   except
                     ShowMessage('ошибка записи');
                    waitform.Close;
                    mailTimer.Enabled:=true;
                    abort;
                   end;
                 end;
   pbar2.Position:=pbar2.Position+1;
   Application.ProcessMessages;
   clientTable.Next;
  end;

  end;
waitform.Close;
//if Assigned(Form1) then Form1.Show;
mailTimer.Enabled:=true;

end;

procedure TmainForm.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//showmessage(inttostr(key));
if key=9 then key:=39;
end;

procedure TmainForm.FormResize(Sender: TObject);
begin
OkBut.Left:=mainForm.Width-200;
noBut.Left:=mainform.Width-100;
Label1.Left:=mainForm.Width-240;
datepick.Left:=mainForm.Width-120;
end;

procedure TmainForm.BitBtn6Click(Sender: TObject);
var i:integer;
begin
mailTimer.Enabled:=false;
DM.connectDB;
if clientTable.State=dsBrowse
then
begin
DBGrid.ReadOnly:=false;
for i:=0 to DBGrid.Columns.Count-1 do
 begin
  if DBGrid.Columns[i].FieldName='Reg'   then DBGrid.Columns[i].ReadOnly:=true;
  if DBGrid.Columns[i].FieldName='Bank'   then DBGrid.Columns[i].ReadOnly:=true;

  end;
dogEdit.EditMask:='';
clientTable.append;
owneredit.Text:=dm.myOwner;
case TBitBtn(sender).Tag of
 1: begin clientTableBank.Value:='RS';dogEdit.EditMask:='000000009';loadLogo('RS');kredForm.Color:=$00b36700;end;
 2: begin clientTableBank.Value:='RF';dogEdit.EditMask:='000000000009';loadLogo('RF');kredForm.Color:=$0037defe;end;
 3: begin clientTableBank.Value:='HK';dogEdit.EditMask:='0000000000';loadLogo('HK');kredForm.Color:=$001f17ed; end;
 4: begin clientTableBank.Value:='RF';dogEdit.EditMask:='9000000-Ф';loadLogo('RF');kredForm.Color:=$0037defe;end;
 5: begin clientTableBank.Value:='DU';dogEdit.EditMask:='0000Т-99999';loadLogo('DU');kredForm.Color:=$00ffffff;end;
 6: begin clientTableBank.Value:='RK';dogEdit.EditMask:='00000000000';loadLogo('RK');kredForm.Color:=$00ffffff;end;
 7: begin clientTableBank.Value:='OT';dogEdit.EditMask:='0000000000';loadLogo('OT');kredForm.Color:=$004bffc4;end;
 8: begin
    clientTableBank.Value:='TK';
    dogEdit.EditMask:='0000000000999999';
    loadLogo('TK');
    kredForm.Color:=clYellow;
   // accedit.Enabled:=false;
    end;
 9: begin clientTableBank.Value:='US';dogEdit.EditMask:='0000-000-00000';loadLogo('US');kredForm.Color:=$00743300;end;
 10: begin clientTableBank.Value:='AB';dogEdit.EditMask:='0000000';loadLogo('AB');kredForm.Color:=$002331ef;end;
 11: begin clientTableBank.Value:='GE';dogEdit.EditMask:='00000000';loadLogo('GE');kredForm.Color:=$00ffffff;end;
 12: begin clientTableBank.Value:='CT';dogEdit.EditMask:='00000000000';loadLogo('CT');kredForm.Color:=clMoneyGreen;end;
 13: begin clientTableBank.Value:='PS';dogEdit.EditMask:='0000000-Ф';loadLogo('PS');kredForm.Color:=$00ffffff;end;
 14: begin clientTableBank.Value:='RF';dogEdit.EditMask:='0000_00000000';loadLogo('RF');kredForm.Color:=$0037defe;end;
 15: begin clientTableBank.Value:='RR';dogEdit.EditMask:='';loadLogo('RR');kredForm.Color:=$00ffffff;end;
 16: begin clientTableBank.Value:='SK';dogEdit.EditMask:='';loadLogo('SK');kredForm.Color:=$00ffffff;end;
 17: begin clientTableBank.Value:='SB';dogEdit.EditMask:='';loadLogo('SB');kredForm.Color:=$00ffffff;end;
 18: begin clientTableBank.Value:='EB';dogEdit.EditMask:='0000-СЛ-000000000000';loadLogo('EB');kredForm.Color:=$00ffffff;end;
 19: begin clientTableBank.Value:='OB';dogEdit.EditMask:='0000000';loadLogo('OB');kredForm.Color:=$00ffffff;end;
 20: begin clientTableBank.Value:='LE';dogEdit.EditMask:='00000000';loadLogo('LE');kredForm.Color:=$00ffffff;end;
 21: begin clientTableBank.Value:='UC';dogEdit.EditMask:='00000000';loadLogo('UC');kredForm.Color:=$00ffffff;end;



 else exit;
end;

RadioGroup1.ItemIndex:=0;

if kredForm.ShowModal=mrOk then
begin
clientTable.Post;
accEdit.Enabled:=true;
clientTable.Locate('id',tid,[]);
BitBtn4Click(nil);

end else
begin
clientTable.Cancel;
mailTimer.Enabled:=true;
end;

end;
end;
//-------------------------------------------------------------------------------


 //-----------------------------------------------------------------------------
 function TmainForm.CreateMailForm:TForm1;

  begin

     if not Assigned(Form1) then   form1:=TForm1.Create(self);

        form1.Show;
        form1.edtSubject.Text:=adres.Text+' за '+FormatDateTime('dd.mm.yy',datepick.DateTime);
        form1.edtMailFrom.Text:='plat@kamensktel.ru';
        form1.cbxMailTo.Text:=boxname.Text;
        form1.edtSMTPAddress.Text:=smtpname.Text;
        form1.memMessage.Lines.Clear;
        result:=form1;




   end;
 //-----------------------------------------------------------------------------


procedure TmainForm.EMAIL1Click(Sender: TObject);
var temp:boolean;
begin
temp:=dm.connect;
dm.connect:=false;
N12Click(nil);
dm.connect:=temp;


end;
//-----------------------------------------------------------------------------




procedure TmainForm.NewKredClick(Sender: TObject);
//var temp:Currency;
begin
{if not dm.connect then exit;
 rsb.Checked:=false;
 mbb.Checked:=false;
 nameedit.Text:='';
 dogEdit.Text:='';
 accEdit.Text:='';

if kredForm.ShowModal=mrOk
then
    begin
     if rsb.Checked then temp:='RS' else temp:='MB';

       try
          dm.SendKred(date,
                      AnsiUpperCase(trim(nameedit.Text)),
                      AnsiUpperCase(trim(dogEdit.Text)),
                      accEdit.Text,
                      temp,
                      magn.Text);

        ShowMessage('Записано');
       except
        ShowMessage('Ошибка записи');

       end;
     end;         }

end;

procedure TmainForm.okButtonClick(Sender: TObject);
var
   i,f,o,magtemp:string;
  //  tempdata:tdatetime;
    kom:integer;
    temp,fr:Currency;
    begin

  if          copy(accEdit.Text,1,3)='423'
                 then begin
                   ShowMessage('по счету 423 платежи не принимаются ');
                   accEdit.SetFocus;
                   exit;
                 end;


  if trim(dogedit.Text)='' then
                 begin
                   ShowMessage('Введите № договора ');
                  dogEdit.SetFocus;
                 exit;
                 end;
  if (trim(accedit.Text)='') or (Length(accEdit.Text)<20) then
                 begin
                   ShowMessage('Введите № счёта ');
                 accEdit.SetFocus;
                 exit;
                 end;
 // test:=copy(accEdit.Text,1,8);



  if (bankedit.Text<>'TK')  and  (copy(accEdit.Text,1,5)<>'40817') and  (copy(accEdit.Text,1,5)<>'44444')
   and (copy(accEdit.Text,1,5)<>'42309') and (copy(accEdit.Text,1,5)<>'42301')
    and (copy(accEdit.Text,1,4)<>'7600')
                 then begin
                   ShowMessage('Неверный № счёта ');
                   accEdit.SetFocus;
                   exit;
                 end;

 if trim(nameedit.Text)='' then
                 begin
                   ShowMessage('Введите ФИО ');
                 nameedit.SetFocus;
                 exit;
                 end;



 if trim(adredit.Text)='' then
                 begin
                   ShowMessage('Введите адрес ');
                 adredit.SetFocus;
                 exit;
                 end;

    if (bankedit.Text='MB') and (pos('-',dogedit.Text)=0) then
                begin
                   ShowMessage(' в номере договора нет черточки');
                   dogEdit.SetFocus;
                   exit;

                 end;
   if (bankedit.Text='HK') and (Length(dogEdit.Text)<>10) then
                begin
                   ShowMessage(' в номере договора 10 цифр');
                   dogEdit.SetFocus;
                   exit;

                 end;
     if (bankedit.Text='RK') and (Length(dogEdit.Text)<>11) then
                begin
                   ShowMessage(' в номере договора 11 цифр');
                   dogEdit.SetFocus;
                   exit;

                 end;

     if bankedit.Text='TK'  then
                begin
                if  (Length(trim(dogEdit.Text))<>10) and (Length(trim(dogEdit.Text))<>16)
                 then begin

                      ShowMessage( inttostr(Length(trim(dogEdit.Text))));
                      ShowMessage(' в номере договора 10 или 16 цифр');
                      dogEdit.SetFocus;
                      exit;
                      end;

                 end;

    if (bankedit.Text='RF') and (copy(accEdit.Text,1,5)='44444')
    then begin
          if copy(accEdit.Text,14,7)<>copy(dogedit.Text,7,7) then
           begin
             ShowMessage('7 цифр договора и последние 7 цифр счета должны совпадать');
                     dogEdit.SetFocus;
                     exit;
           end;
         end;

 {  if (bankedit.Text='RF')

             then
                begin
               if (Length(dogEdit.Text)<>11) and
                   (copy(dogEdit.Text,7,2)<>'-Ф')
                    then
                    begin
                     ShowMessage(' в номере договора 11 цифр');
                     dogEdit.SetFocus;
                     exit;
                    end;
               if (Length(dogEdit.Text)<>8) and
                   (copy(dogEdit.Text,7,2)='-Ф')
                    then
                    begin
                     ShowMessage(' в номере договора 6 цифр и -Ф');
                     dogEdit.SetFocus;
                     exit;
                    end;


                 end;    }

   if dm.myOwner='' then dm.myOwner:=trim(AnsiUpperCase(owneredit.Text));


   clientTableKtodal.Value:=RadioGroup1.ItemIndex;

   if date<StrToDate('01.01.2008') then
   begin
      if clientTableKtodal.AsInteger=1 then

           begin

         {tempdata:=dm.DataDogovora(clientTableNdogovor.AsString);


           if (tempdata>0) and (tempdata<StrToDate('15.05.2007'))   then kom:=0
                                                                     else }kom:=20;


          end else
          begin
           if  clientTableSum.AsCurrency<=3000 then kom:=30
                          else kom:=40;

          end;
    end else
    begin
       if clientTableKtodal.AsInteger=1 then kom:=450
       else
         begin


          temp:=50+roundto((clientTableSum.AsCurrency)/100,-1);
          if temp<60 then temp:=60;



          if temp>350 then temp:=350;

         if not oblast then
         begin
          if clientTableSum.AsCurrency<=3000 then temp:=60 else
          temp:=roundto((clientTableSum.AsCurrency)/100,0)+60;
          magtemp:=copy(magn.Text,1,3);
           if magtemp='ant' then
           begin
             if clientTableSum.AsCurrency<=3000 then temp:=80 else
             temp:=roundto((clientTableSum.AsCurrency)/100,0)+80;

           end;

         end;

          fr:= frac(temp);
          if fr>0 then begin
                       if fr<=0.5 then temp:=int(temp)
                       else temp:=int(temp)+1;

                      end;
          kom:=round(temp*10);


        end;
    //if clientTableBank.AsString='US' then kom:=400;

    end;

         clientTableKtodal.Value:={clientTableKtodal.Value+}kom;

     if decodeName(clientTableName.AsString,i,o,f )
     then  begin
             namelabel.Caption:=i;
             famlabel.Caption:=f;
             otchlabel.Caption:=o;
            if dm.connect then
              begin
              if DM.chekname(i) then namelabel.Font.Color:=clBlack else namelabel.Font.Color:=clRed;
              if DM.chekfam(f) then famlabel.Font.Color:=clBlack else famlabel.Font.Color:=clRed;
              if DM.chekotch(o) then otchlabel.Font.Color:=clBlack else otchlabel.Font.Color:=clRed;
              end;
             end else
             begin
               ShowMessage('ошибка в имени клиента');
               exit;
             end;
   //namelabel.Caption:=clientTableName.AsString;


   accLabel.Caption:=clientTableNschet.AsString;
   dogLabel.Caption:=clientTableNdogovor.AsString;
  IF clientTableKtodal.AsInteger<=999  then sumlabel.Caption:=sumedit.Text+' +  '+copy(clientTableKtodal.AsString,1,2)+','
                                           +copy(clientTableKtodal.AsString,3,1)
                                      else sumlabel.Caption:=sumedit.Text+' +  '+copy(clientTableKtodal.AsString,1,3)+','
                                           +copy(clientTableKtodal.AsString,4,1);


   if finalform.Width<famlabel.Width+50 then  finalform.Width:=famlabel.Width+50;

   if finalform.ShowModal=mrok then
   begin
      if dm.connect then
      begin
       if namelabel.Font.Color=clRed then dm.insertname(namelabel.Caption,DM.myOwner);
       if famlabel.Font.Color=clRed then dm.insertfam(famlabel.Caption,DM.myOwner);
       if otchlabel.Font.Color=clRed then dm.insertotch(otchlabel.Caption,DM.myOwner);


      end;
     if dm.connect then
     begin
      if (dm.ancQuery.Active) and (dm.ancQuery.RecordCount=0)
       and (clientTableSum.AsCurrency>=15000)
       then begin
         ankname.Text:=nameedit.Text;
         ancdovname.Text:=nameedit.Text;
         ankdr.Value:=null;
         if oblast then  ankmr.Text:='РОССИЯ,СВЕРДЛОВСКАЯ ОБЛАСТЬ,'
         else ankmr.Text:='РОССИЯ,СВЕРДЛОВСКАЯ ОБЛАСТЬ,г.Каменск-Уральский,';
         ancrecdok.Text:='серия  №  выдан';
         if oblast then  ancprop.Text:=adredit.Text
          else ancprop.Text:='РОССИЯ,СВЕРДЛОВСКАЯ ОБЛАСТЬ,г.Каменск-Уральский,'
         +adrEdit.Text;
         ankinn.Text:='Нет';
         anctel.Text:='мобильный: ,рабочий: ,домашний:';
         if trim(teledit.Text)<>'' then begin
                                 if (copy(teledit.Text,1,2)='89') or
                                 (copy(teledit.Text,1,1)='9')
                                 or (copy(teledit.Text,1,3)='8-9')
                                 or (copy(teledit.Text,1,3)='8 9')
                                 then
                                 anctel.Text:='мобильный:'+teledit.Text+
                                 ' ,рабочий: ,домашний:'
                                 else anctel.Text:=anctel.Text+teledit.Text;

                              end;


         if ankform.ShowModal=mrOk
         then dm.saveAnketa(bankedit.Text,
                            dogEdit.Text,
                            ankname.Text,
                            ankmr.Text,
                            ankgr.Text,
                            ancdoc.Text,
                            ancrecdok.Text,
                            ancprop.Text,
                            ankinn.Text,
                            anctel.Text,
                            ancdovname.Text,
                            ankdr.Value,
                            date);


        end;


     end;
  // printAnketa(bankedit.Text,dogEdit.Text);
   kredForm.ModalResult:=mrok;

   end;
end;

procedure TmainForm.findButtonClick(Sender: TObject);
//var i:integer;
begin
//CreateMailForm;exit;
mailTimer.Enabled:=false;

if not dm.connect then exit;
Nfind.Text:='';
DogFind.Text:='';
DM.FindQuery.Close;
if (FindForm.ShowModal=mrOk) and (dm.FindQuery.Active) and (DM.FindQuery.RecordCount>0)
then
  begin
   {  if clientTable.State=dsBrowse
        then
           begin
                DBGrid.ReadOnly:=false;
                for i:=0 to DBGrid.Columns.Count-1 do
                 begin
                        if DBGrid.Columns[i].FieldName='Reg'   then DBGrid.Columns[i].ReadOnly:=true;
                        if DBGrid.Columns[i].FieldName='Bank'   then DBGrid.Columns[i].ReadOnly:=true;

                  end;

                        clientTable.Insert;
                        clientTableBank.Value:=dm.FindQuery.Fieldbyname('bank').AsString;//e;
                        clientTableName.Value:=dm.FindQuery.Fieldbyname('name').AsString;//DM.FindQname.Value;
                        clientTableNdogovor.Value:=dm.FindQuery.Fieldbyname('ndogovor').AsString;//DM.FindQndogovor.Value;
                        clientTableNschet.Value:=dm.FindQuery.Fieldbyname('nschet').AsString;//DM.FindQnschet.Value;
                        clientTableAdres.Value:=dm.FindQuery.Fieldbyname('adres').AsString;//dm.FindQadres.Value;

                        dbgrid.SetFocus;
             end;    }
  end ;
//else
mailTimer.Enabled:=true;

dm.FindQuery.Close;
end;

procedure TmainForm.NfindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 // var f,i,o:string;
  begin
 if key=13 then
  begin
   //dm.FindKredDog(Nfind.Text,DogFind.Text);
   with dm.FindQuery do
    begin
     close;
     ParamByName('name').AsString:=trim(Nfind.Text)+'%';
     ParamByName('dog').AsString:=trim(dogfind.Text)+'%';
     if allmag.Checked then
     ParamByName('mag').AsString:='%' else
     ParamByName('mag').AsString:=magn.Text;

     open;
    end;
   { while not dm.FindQuery.Eof do
     begin
      if decodeName(DM.FindQuery.FieldValues['name'],i,o,f)
        then memo2.Lines.Add(f+';'+i+';'+o);

      dm.FindQuery.Next;
     end;  }

  end;

end;

procedure TmainForm.FinddbGridDblClick(Sender: TObject);
begin
FindForm.ModalResult:=mrOk;

end;

procedure TmainForm.clientTableBeforePost(DataSet: TDataSet);
begin

 clientTableName.Value:=ChekC(clientTableName.Value);
 clientTableAdres.Value:=ChekC(clientTableAdres.Value);
 clientTableOwner.Value:=ChekC(clientTableOwner.Value);

 if Length(clientTableNschet.AsString)<20 then
 begin
  ShowMessage('№ счёта <20 цифр');
 errorid:=clientTableId.Value;
 tableerror:=true;
 end else tableerror:=false;
 {Try
    StrToInt64(clientTableNdogovor.Value);
     clientTableBank.Value:='RS';

 except
    clientTableBank.Value:='MB';

 end;  }
 // if Length(clientTableNdogovor.Value)=11 then clientTableBank.Value:='RF';
 // if Length(clientTableNdogovor.Value)=10 then clientTableBank.Value:='HK';
{ if clientTableBank.AsString<>'DU' then
  begin
  if pos('T',clientTableNdogovor.Value)>0 then clientTableBank.Value:='MB';
  if pos('t',clientTableNdogovor.Value)>0 then clientTableBank.Value:='MB';
  if pos('Т',clientTableNdogovor.Value)>0 then clientTableBank.Value:='MB';
  if pos('т',clientTableNdogovor.Value)>0 then clientTableBank.Value:='MB';
  if pos('K',clientTableNdogovor.Value)>0 then clientTableBank.Value:='MB';
  if pos('k',clientTableNdogovor.Value)>0 then clientTableBank.Value:='MB';
  if pos('К',clientTableNdogovor.Value)>0 then clientTableBank.Value:='MB';
  if pos('к',clientTableNdogovor.Value)>0 then clientTableBank.Value:='MB';
  end; }



  // clientTableKtodal.Value:=RadioGroup1.ItemIndex;

{  if (clientTableBank.AsString='RS') or (clientTableBank.AsString='RF')
      or (clientTableBank.AsString='HK')then
          clientTableKtodal.Value:=RadioGroup1.ItemIndex
          else  clientTableKtodal.Value:=1;     }


end;
//------------------------------------------------------------------------



procedure TmainForm.FindFormShow(Sender: TObject);
begin
DogFind.SetFocus;
end;
//-------------------------------------------------------------------------
function tmainform.ChekC(const field:string):string;
var i:integer;
 temp:string;
begin
result:='';
temp:=field;
if temp<>'' then
begin
 for i:=1 to length(temp) do
  begin
         if  temp[i]='c' then  temp[i]:='с';
         if  temp[i]='C' then  temp[i]:='С';

  end;
end;
result:=temp;

end;

procedure TmainForm.kredFormShow(Sender: TObject);
begin
dogEdit.SetFocus;
end;

procedure TmainForm.dogEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var temp,dogovor:string;
  begin

if key=13 then
        begin
         IF (bankedit.Text='MB') and (Length(dogEdit.Text)>0)
         then
          begin     ;
            try
            StrToInt64(dogEdit.Text);
            ShowMessage('В номере договора только цифры');
            exit;
            except

            end;
          end;
        if  (bankedit.Text='EB') then
        begin
        dogovor:=dogEdit.Text;
        dogEdit.EditMask:='';
        temp:=copy(dogovor,1,4)+copy(dogovor,9,12);
        dogEdit.Text:=temp;
        end;
        if  accEdit.Enabled then  accEdit.SetFocus else nameedit.SetFocus;

         {if not DM.connect then exit;
         if (nameedit.Text='') and (length(dogEdit.Text)>=6) then
           begin
           dm.FindKredDog('',dogedit.Text);
            if dm.FindQ.RecordCount>0
                then
                  begin
                    nameedit.Text:=DM.FindQname.Value;
                     accEdit.Text:=DM.FindQnschet.Value;
                     adrEdit.Text:=DM.FindQadres.Value;
                   sumedit.SetFocus;
                  end;
           end; }
        end;

end;

procedure TmainForm.accEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//ShowMessage(inttostr(key));
case key  of
 13:  nameedit.SetFocus;
   end;
end;
procedure TmainForm.nameeditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key    of
 13:  adredit.SetFocus;
   end;
end;

procedure TmainForm.adrEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key      of
13:  teledit.SetFocus;
   end;
end;

procedure TmainForm.sumeditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then ownerEdit.SetFocus;
end;

procedure TmainForm.ownereditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then okButton.SetFocus;
end;

procedure TmainForm.DBGridEh1DblClick(Sender: TObject);
begin
ownform.ModalResult:=mrOk;
end;

procedure TmainForm.SpeedButton1Click(Sender: TObject);
begin
ownform.ModalResult:=mrCancel;
end;

procedure TmainForm.DBGridApplyFilter(Sender: TObject);
var temp,old:string;
begin
 try
 old:='data ='+chr(39)+FormatDateTime('dd.mm.yy',datepick.DateTime)+chr(39);
 temp:=GetExpressionAsFilterString(TDBGridEh(Sender),
        GetOneExpressionAsLocalFilterString, nil);

    if trim(temp) <>'' then
    clientTable.Filter:='('+old+') and ('+temp+')'
    else   clientTable.Filter:=old;


 except

 end;
end;

procedure TmainForm.N14Click(Sender: TObject);
begin
       frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'kolvo.frf');
       frReport1.ShowReport;

end;

procedure TmainForm.BitBtn10Click(Sender: TObject);
var i:integer;
begin
mailTimer.Enabled:=false;
DM.connectDB;
if clientTable.State=dsBrowse
then
begin
DBGrid.ReadOnly:=false;
for i:=0 to DBGrid.Columns.Count-1 do
 begin
  if DBGrid.Columns[i].FieldName='Reg'   then DBGrid.Columns[i].ReadOnly:=true;
  if DBGrid.Columns[i].FieldName='Bank'   then DBGrid.Columns[i].ReadOnly:=true;

  end;


clientTable.Append;


clientTableBank.Value:='KP';
ksumedit.Value:=0;
kenergyEdit.Value:=0;
kpeniEdit.Value:=0;
kaccEdit.EditMask:='00000000';
kownedit.Text:=dm.myOwner;
//RadioGroup1.ItemIndex:=0;
if komForm.ShowModal=mrOk then
begin
clientTable.Post;
clientTable.Locate('id',tid,[]);
BitBtn4Click(nil);

end else
begin
clientTable.Cancel;
mailTimer.Enabled:=true;
end;



end;



end;

procedure TmainForm.kaccEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
        begin
           kapacc.SetFocus;
         if not DM.connect then exit;
         if (knameedit.Text='') and (length(kaccEdit.Text)>=5) then
           begin

           dm.FindKredDog('KP',kaccEdit.Text+'%');

            if dm.FindQ.RecordCount>0
                then
                  begin

                    if length(dm.FindQndogovor.AsString)=16
                    then kapacc.Value:=copy(dm.FindQndogovor.AsString,9,8);


                    knameedit.Text:=DM.FindQname.Value;
                    kadrEdit.Text:=DM.FindQadres.Value;
               if DM.FindQtel.Value<>'-' then  begin
                                       kteledit.Text:=DM.FindQtel.Value;
                                      ksumedit.SetFocus;
                                      end else kteledit.SetFocus;

                  end;
           end;
        end;
end;

procedure TmainForm.knameEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key  of
 13:  kadredit.SetFocus;
   end;
end;

procedure TmainForm.kadrEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key  of
 13:  kteledit.SetFocus;
   end;
end;

procedure TmainForm.kenergyEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
itogedit.Value:=ksumedit.Value+kenergyEdit.Value+kpeniEdit.Value;
case key  of
 13:   kownedit.SetFocus;
   end;
end;

procedure TmainForm.kpeniEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
itogedit.Value:=ksumedit.Value+kenergyEdit.Value+kpeniEdit.Value;
case key  of
 13:  kownedit.SetFocus;
   end;
end;

procedure TmainForm.kownEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key  of
 13:  kokBtn.SetFocus;
   end;
end;


procedure TmainForm.kokBtnClick(Sender: TObject);
var temp,tempsum:string;
       tempd:char;
      i,n:integer;
begin

  if (trim(kaccedit.Text)='') or (Length(kaccEdit.Text)<5) then
                 begin
                   ShowMessage('Введите № лицевого счёта ');
                 kaccEdit.SetFocus;
                 exit;
                 end;



 if trim(knameedit.Text)='' then
                 begin
                   ShowMessage('Введите ФИО ');
                 knameedit.SetFocus;
                 exit;
                 end;



 if trim(kadredit.Text)='' then
                 begin
                   ShowMessage('Введите адрес ');
                 kadredit.SetFocus;
                 exit;
                 end;
    itogedit.Value:=ksumedit.Value+kenergyEdit.Value+kpeniEdit.Value;
    if trim(kapacc.Value)<>''  then
      begin
      temp:=kaccEdit.Value+kapacc.Value;
      clientTableNdogovor.AsString:=temp;


      end;

    tempd:=DecimalSeparator;
    try
     DecimalSeparator:='.';
    temp:='00000000000000000000';
    tempsum:=CurrToStr(ksumEdit.Value);
      if pos('.',tempsum)=0 then tempsum:=tempsum+'00'
     else if  pos('.',tempsum)=length(tempsum)-1 then tempsum:=tempsum+'0';
     while  pos('.',tempsum)>0 do Delete(tempsum,pos('.',tempsum),1);
     i:=length(tempsum);
     if i<=7 then   for n:=1 to i do temp[7-i+n]:=tempsum[n];

     tempsum:=CurrToStr(kenergyEdit.Value);
      if pos('.',tempsum)=0 then tempsum:=tempsum+'00'
     else if  pos('.',tempsum)=length(tempsum)-1 then tempsum:=tempsum+'0';
     while  pos('.',tempsum)>0 do Delete(tempsum,pos('.',tempsum),1);
     i:=length(tempsum);
     if i<=7 then   for n:=1 to i do temp[14-i+n]:=tempsum[n];

     tempsum:=CurrToStr(kpeniEdit.Value);
     if pos('.',tempsum)=0 then tempsum:=tempsum+'00'
     else if  pos('.',tempsum)=length(tempsum)-1 then tempsum:=tempsum+'0';
     while  pos('.',tempsum)>0 do Delete(tempsum,pos('.',tempsum),1);
     i:=length(tempsum);
     if i<=6 then   for n:=1 to i do temp[20-i+n]:=tempsum[n];
      clientTableNschet.Value:=temp;



   clientTableKtodal.Value:=450;
   komForm.ModalResult:=mrOk;



    finally
    DecimalSeparator:=tempd;
    end;


end;



procedure TmainForm.ksumeditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
itogedit.Value:=ksumedit.Value+kenergyEdit.Value+kpeniEdit.Value;
case key  of
 13:  kenergyEdit.SetFocus;
   end;
end;

procedure TmainForm.komformShow(Sender: TObject);
begin
kaccEdit.SetFocus;
end;

procedure TmainForm.accEditEnter(Sender: TObject);
var key:Char;
begin
 if not DM.connect then exit;
         if (nameedit.Text='') and (length(trim(dogEdit.Text))>=6) then
           begin

           dm.FindKredDog(bankedit.Text,dogedit.Text);
            if (DM.FindQ.Active) and (  dm.FindQ.RecordCount>0 )
            and (bankedit.Text=dm.FindQbank.AsString)
                then
                  begin
                    nameedit.Text:=DM.FindQname.Value;
                     accEdit.Text:=DM.FindQnschet.Value;
                     adrEdit.Text:=DM.FindQadres.Value;
                     if DM.FindQtel.Value<>'-' then
                          begin
                          teledit.Text:=DM.FindQtel.Value;
                           sumedit.SetFocus;
                          end else teledit.SetFocus;

                  end else
                  begin
                    if bankedit.Text='TK' then
                    begin
                    accEdit.Text:='00000000000000000000';
                    accEdit.Enabled:=false;
                    nameedit.SetFocus;
                    end;
                    if bankedit.Text='EB' then
                    begin
                     dogEdit.Enabled:=false;


                    end;
                  end;


           end;


end;

procedure TmainForm.Timer1Timer(Sender: TObject);
begin
if ProgressBar1.Position<100 then ProgressBar1.Position:=ProgressBar1.Position+1
                             else ProgressBar1.Position:=0;
Application.ProcessMessages;
end;

procedure TmainForm.waitformHide(Sender: TObject);
begin
//waitform.Close;
end;

procedure TmainForm.wn(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key      of
13:  sumedit.SetFocus;
   end;
end;

procedure TmainForm.kteleditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key  of
 13:  ksumedit.SetFocus;
   end;
end;

procedure TmainForm.mailTimerTimer(Sender: TObject);
var temp:string;
    temptime:string;
begin
mailTimer.Enabled:=false;

//beep;
if timecount>=360
 then  begin
    temp:= FINIFile.ReadString('sql', 'lastdate', '');
    temptime:=FINIFile.ReadString('sql', 'lasttime', '');
   if (temptime='') or (StrToTime(temptime)<(time-0.3))
   then begin
     FINIFile.WriteString('sql','lasttime',TimeToStr(time));
    //waitform.Show;
     if (temp='') or (temp<>DateToStr(date)) then
       begin
         datepick.Date:=Date-1;
         datepickChange(datepick);
         N12Click(nil);
         FINIFile.WriteString('sql','lastdate',datetostr(date));
       end;
       datepick.Date:=Date;
       datepickChange(datepick);
        N12Click(nil);
     // waitform.Close;
      end else  mailTimer.Enabled:=true;
        timecount:=0;
        end else
        begin
        inc(timecount);
        mailTimer.Enabled:=true;

        end;
end;

procedure TmainForm.BitBtn8Click(Sender: TObject);

var xPoint:TPoint;
begin
  GetParentForm(TWinControl(Sender)).SendCancelMode(nil);
  rusmenu.PopupComponent:= TWinControl(Sender);
  xPoint:= Point(-1, TWinControl(Sender).Height);

  with TWinControl(Sender).ClientToScreen(xPoint)
  do rusmenu.Popup(x,y);

end;

procedure TmainForm.calckom;
 var temp:string;
 begin
  //
  //ktosum.SumCollection.Items[0].SumValue
  temp:=CurrToStr(ktosum.SumCollection.Items[0].SumValue/10);
  if pos(',',temp)=0 then temp:=temp+',00 р.'
   else temp:=temp+'0 р.';

  DBGrid.Columns[9].Footer.Value:=temp;
 end;

procedure TmainForm.clientTableFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin

//
end;

procedure TmainForm.ktosumSumListChanged(Sender: TObject);
begin
calckom;
end;

procedure TmainForm.BitBtn14Click(Sender: TObject);
begin
 if ankdr.Value=null then
  begin
    ankdr.SetFocus;
    ShowMessage('заполните день рождения');
    exit;

  end;
 if (trim(ankmr.Text)='РОССИЯ,СВЕРДЛОВСКАЯ ОБЛАСТЬ,') or (trim(ankmr.Text)='')
    then begin
          ankmr.SetFocus;
          ShowMessage('заполните адрес');
          exit;

         end;

 if (trim(ancrecdok.Text)='') or (trim(ancrecdok.Text)='серия  №  выдан')
     then begin
          ancrecdok.SetFocus;
          ShowMessage('заполните документ');
          exit;

         end;

 if trim(ancprop.Text)=''
     then begin
          ancprop.SetFocus;
          ShowMessage('заполните адрес регистрации');
          exit;

         end;
if trim(ankgr.Text)=''
     then begin
          ankgr.SetFocus;
          ShowMessage('заполните гражданство');
          exit;

         end;
if trim(ancdoc.Text)=''
     then begin
          ancdoc.SetFocus;
          ShowMessage('заполните название документа');

          exit;

         end;

if (trim(anctel.Text)='мобильный: ,рабочий: ,домашний:') or ( trim(anctel.Text)='')
       then begin
             anctel.SetFocus;
             ShowMessage('нужен номер телефона');
             exit;

            end;








ankform.ModalResult:=mrOk;
end;

procedure TmainForm.N24Click(Sender: TObject);
begin
//
    if not  dm.connect then exit;
    If clientTableNdogovor.AsString='' then exit;

      dm.ancQuery.Close;
      dm.ancQuery.ParamByName('bank').AsString:=AnsiUpperCase(trim(clientTableBank.AsString));
      dm.ancQuery.ParamByName('dog').AsString:=AnsiUpperCase(trim(clientTableNdogovor.AsString));
      dm.ancQuery.Open;
     if dm.ancQuery.RecordCount>0 then
     begin
       ankname.Text:=DM.ancQueryfio.AsString;
       ankdr.Value:=dm.ancQuerydr.AsDateTime;
       ankmr.Text:=dm.ancQuerymr.AsString;
       ankgr.Text:=dm.ancQuerygr.AsString;
       ancdoc.Text:=dm.ancQuerydoc.AsString;
       ancrecdok.Text:=dm.ancQueryrecdoc.AsString;
       ancprop.Text:=dm.ancQueryprop.AsString;
       ankinn.Text:=dm.ancQueryinn.AsString;
       anctel.Text:=dm.ancQuerytel.AsString;
       ancdovname.Text:=dm.ancQuerydovname.AsString;
     end else
      begin
       ankname.Text:=clientTableName.AsString;
       ancdovname.Text:= clientTableName.AsString;
       ankdr.Value:=null;
       ancrecdok.Text:='серия  №  выдан';
       ancprop.Text:='';
       ankinn.Text:='Нет';
       anctel.Text:='мобильный: ,рабочий: ,домашний:';

       if oblast then  ankmr.Text:='РОССИЯ,СВЕРДЛОВСКАЯ ОБЛАСТЬ,'
         else ankmr.Text:='РОССИЯ,СВЕРДЛОВСКАЯ ОБЛАСТЬ,г.Каменск-Уральский,';

         if oblast then  ancprop.Text:=clientTableAdres.AsString
          else ancprop.Text:='РОССИЯ,СВЕРДЛОВСКАЯ ОБЛАСТЬ,г.Каменск-Уральский,'
         +clientTableAdres.AsString;
        if trim(clientTableTel.AsString)<>'' then begin
                                 if (copy(clientTableTel.AsString,1,2)='89') or
                                 (copy(clientTableTel.AsString,1,1)='9')
                                 or (copy(clientTableTel.AsString,1,3)='8-9')
                                 or (copy(clientTableTel.AsString,1,3)='8 9')
                                    then
                                 anctel.Text:='мобильный:'+clientTableTel.AsString+
                                 ' ,рабочий: ,домашний:'
                                 else anctel.Text:=anctel.Text+clientTableTel.AsString;
                                 end;


      end;

      if  ankform.ShowModal=mrOk then
       dm.saveAnketa(clientTableBank.AsString,
                            clientTableNdogovor.AsString,
                            ankname.Text,
                            ankmr.Text,
                            ankgr.Text,
                            ancdoc.Text,
                            ancrecdok.Text,
                            ancprop.Text,
                            ankinn.Text,
                            anctel.Text,
                            ancdovname.Text,
                            ankdr.Value,
                            date);




     
    dm.ancQuery.Close;
end;

procedure TmainForm.ankdrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then ankmr.SetFocus;
end;

procedure TmainForm.ankgrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then ancdoc.SetFocus;
end;

procedure TmainForm.ancdocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then ancrecdok.SetFocus;
end;

procedure TmainForm.ancrecdokKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then ancprop.SetFocus;
end;

procedure TmainForm.ancpropKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then ankinn.SetFocus;
end;

procedure TmainForm.ankinnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then anctel.SetFocus;
end;

procedure TmainForm.anctelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then BitBtn14.SetFocus;
end;

procedure TmainForm.ankmrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then ankgr.SetFocus;
end;

procedure TmainForm.ankformShow(Sender: TObject);
begin
ankdr.SetFocus;
end;

procedure TmainForm.allmagClick(Sender: TObject);
var mkey:word;mshift:TShiftState;
begin
mkey:=13;
NfindKeyDown(nil,mkey,mshift);
end;

procedure TmainForm.kapAccKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
        begin
          knameEdit.SetFocus;

        end;
end;

end.
