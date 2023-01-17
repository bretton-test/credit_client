unit dmUnit;

interface

uses
  SysUtils, Classes, DB, mySQLDbTables,unit1,controls,dialogs, MySQLMonitor;
 type
  TUpdateApp=class(TThread)
  protected
     procedure Execute; override;
     procedure dbcon;
     procedure notdbcon;

  end;
type
  TDM = class(TDataModule)
    MyBase: TmySQLDatabase;
    InstPlat: TmySQLQuery;
    InstKred: TmySQLQuery;
    FindQ: TmySQLQuery;
    FindDS: TDataSource;
    FindQdata: TDateField;
    FindQname: TStringField;
    FindQndogovor: TStringField;
    FindQnschet: TStringField;
    FindQbank: TStringField;
    FindQmag: TStringField;
    FindQadres: TStringField;
    ownquery: TmySQLQuery;
    DataSource1: TDataSource;
    ownqueryowner: TStringField;
    DayQuery: TmySQLQuery;
    DayQueryid: TAutoIncField;
    DayQuerydata: TDateField;
    DayQueryname: TStringField;
    DayQueryndogovor: TStringField;
    DayQuerynschet: TStringField;
    DayQuerysum: TFloatField;
    DayQueryreg: TIntegerField;
    DayQueryadres: TStringField;
    DayQueryowner: TStringField;
    DayQuerybank: TStringField;
    DayQuerymag: TStringField;
    DayQuerytime: TTimeField;
    delinput: TmySQLQuery;
    selInput: TmySQLQuery;
    selInputid: TAutoIncField;
    DayQueryktodal: TIntegerField;
    magTable: TmySQLTable;
    FindQuery: TmySQLQuery;
    DataSource2: TDataSource;
    DayQuerytel: TStringField;
    FindQtel: TStringField;
    finddog: TmySQLQuery;
    finddogdata: TDateField;
    qfam: TmySQLQuery;
    qname: TmySQLQuery;
    qotch: TmySQLQuery;
    qinsname: TmySQLQuery;
    qinsfam: TmySQLQuery;
    qinsotch: TmySQLQuery;
    selInputreg: TIntegerField;
    selnew: TmySQLQuery;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    delinput1: TmySQLQuery;
    AutoIncField2: TAutoIncField;
    IntegerField2: TIntegerField;
    ancQuery: TmySQLQuery;
    ancQueryid: TAutoIncField;
    ancQuerybank: TStringField;
    ancQueryndogovor: TStringField;
    ancQueryfio: TStringField;
    ancQuerydr: TDateField;
    ancQuerymr: TStringField;
    ancQuerygr: TStringField;
    ancQuerydoc: TStringField;
    ancQueryrecdoc: TStringField;
    ancQueryprop: TStringField;
    ancQueryinn: TStringField;
    ancQuerytel: TStringField;
    ancQuerydovname: TStringField;
    ancQueryankdate: TDateField;
    saveAncQ: TmySQLQuery;
    updateAnc: TmySQLQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure MyBaseConnectionFailure(Connection: TmySQLDatabase;
      Error: String);
  
  private
    { Private declarations }

  public
    { Public declarations }
    connect:boolean;
    myOwner:string;
    firstconnect:boolean;
   procedure connectDB;
   function SendPlat(const mdata,mtime:Tdatetime;
                      const nkred,dog,schet,adr,own,bank,mag,tel:string;
                      const sum:currency;
                      const kto:integer;
                      const new:boolean):boolean;
    function SendKred(const data:Tdatetime;
                      const nkred,dog,schet,bank,mag:string):boolean;

    procedure FindKredDog(const dname,dog:string);
    procedure GetMyOwner;
    procedure Sync(const Mydata:TDateTime;const Mymag:string);
    procedure  InsertPlat;
    function deleteInput(const id:integer;const mdata,mtime:Tdatetime;const dog:string):boolean;
    procedure oncreate;
    function DataDogovora(dog:string):TDateTime;
    function chekname(const myname:string):boolean;
    function chekfam(const myfam:string):boolean;
    function chekotch(const myotch:string):boolean;
    procedure insertname(const myname,mowner:string);
    procedure insertFAM(const myname,mowner:string);
    procedure insertotch(const myname,mowner:string);
    procedure saveAnketa(const bank,dog,fio,mr,gr,doc,recdoc,adr,inn,tel,dovname:string;dr,da:TDateTime);

  end;

var
  DM: TDM;

implementation

uses Math;

{$R *.dfm}
//--------------------------------------------------------------------------
procedure tdm.saveAnketa(const bank,dog,fio,mr,gr,doc,recdoc,adr,inn,tel,dovname:string;dr,da:TDateTime);
 begin
     ancQuery.Close;
     ancQuery.ParamByName('bank').AsString:=AnsiUpperCase(trim(bank));
     ancQuery.ParamByName('dog').AsString:=AnsiUpperCase(trim(dog));
     ancQuery.Open;
     if ancQuery.RecordCount=0 then
     begin
       with saveAncQ do
        begin
          ParamByName('bank').AsString:=AnsiUpperCase(trim(bank));
          ParamByName('ndogovor').AsString:=AnsiUpperCase(trim(dog));
          ParamByName('fio').AsString:=AnsiUpperCase(trim(fio));
          ParamByName('dr').AsDate:=dr;
          ParamByName('mr').AsString:=trim(mr);
          ParamByName('gr').AsString:=trim(gr);
          ParamByName('doc').AsString:=trim(doc);
          ParamByName('recdoc').AsString:=trim(recdoc);
          ParamByName('prop').AsString:=trim(adr);
          ParamByName('inn').AsString:=AnsiUpperCase(trim(inn));
          ParamByName('tel').AsString:=AnsiUpperCase(trim(tel));
          ParamByName('dovname').AsString:=AnsiUpperCase(trim(dovname));
          ParamByName('ankdate').AsDate:=Date;
          ExecSQL;

        end;

     end else
      begin
       with updateAnc do
        begin
          ParamByName('id').AsInteger:=ancQueryid.Value;
          ParamByName('fio').AsString:=AnsiUpperCase(trim(fio));
          ParamByName('dr').AsDate:=dr;
          ParamByName('mr').AsString:=trim(mr);
          ParamByName('gr').AsString:=trim(gr);
          ParamByName('doc').AsString:=trim(doc);
          ParamByName('recdoc').AsString:=trim(recdoc);
          ParamByName('prop').AsString:=trim(adr);
          ParamByName('inn').AsString:=AnsiUpperCase(trim(inn));
          ParamByName('tel').AsString:=AnsiUpperCase(trim(tel));
          ParamByName('dovname').AsString:=AnsiUpperCase(trim(dovname));
          ParamByName('ankdate').AsDate:=Date;
          ExecSQL;

        end;

     end;
     ancQuery.Close;
 end;
//--------------------------------------------------------------------------
  procedure tdm.insertname(const myname,mowner:string);
    begin
     with qinsname do
      begin
        ParamByName('name').AsString:=myname;
        ParamByName('owner').AsString:=mowner;
        ExecSQL;
      end;
    end;
//-----------------------------------------------------------------------------
  procedure tdm.insertfam(const myname,mowner:string);
    begin
     with qinsfam do
      begin
        ParamByName('name').AsString:=myname;
        ParamByName('owner').AsString:=mowner;
        ExecSQL;
      end;
    end;
//-----------------------------------------------------------------------------
 procedure tdm.insertotch(const myname,mowner:string);
    begin
     with qinsotch do
      begin
        ParamByName('name').AsString:=myname;
        ParamByName('owner').AsString:=mowner;
        ExecSQL;
      end;
    end;
//-----------------------------------------------------------------------------



function tdm.chekname(const myname:string):boolean;

 begin
 result:=false;
 with qname do
  begin
   close;
   ParamByName('name').AsString:=myname;
   open;
   result:=RecordCount>0;
   close;
  end;
end;
//-----------------------------------------------------------------------------

function tdm.chekfam(const myfam:string):boolean;

 begin
 result:=false;
 with qfam do
  begin
   close;
   ParamByName('fam').AsString:=myfam;
   open;
   result:=RecordCount>0;
   close;
  end;
end;
//-----------------------------------------------------------------------------
 function tdm.chekotch(const myotch:string):boolean;

 begin
 result:=false;
 with qotch do
  begin
   close;
   ParamByName('otch').AsString:=myotch;
   open;
   result:=RecordCount>0;
   close;
  end;
end;


//------------------------------------------------------------------------------
procedure TUpdateApp.Execute;
var mydm:TmySQLDatabase;

begin
FreeOnTerminate:=true;
Priority:=tpLowest;
mydm:=TmySQLDatabase.Create(nil);
mydm.Host:=DM.MyBase.Host;
mydm.DatabaseName:=DM.MyBase.DatabaseName;
mydm.Port:=DM.MyBase.Port;
mydm.UserName:=dm.MyBase.UserName;
mydm.UserPassword:=dm.MyBase.UserPassword;
mydm.ConnectionTimeout:=6;
try
mydm.Connected:=true;
except
Synchronize(notdbcon);
end;
//beep;
if mydm.Connected then
begin
 mydm.Connected:=false;
 Synchronize(dbcon);

end;
 //DM.MyBase.Connected:=false;
//DM.MyBase.Connected:=true;
end;
procedure TUpdateApp.dbcon;
begin
mainForm.Timer1.Enabled:=false;
mainform.ProgressBar1.Visible:=false;
mainForm.Caption:=dm.MyBase.DatabaseName+'@'+dm.MyBase.Host+':'+DM.myOwner;
DM.MyBase.Connected:=true;
dm.connect:=true;
dm.oncreate;
mainForm.mailTimer.Enabled:=true;
end;

procedure TUpdateApp.notdbcon;
begin
dm.connect:=false;
mainForm.Timer1.Enabled:=false;
mainform.ProgressBar1.Visible:=false;
dm.MyBase.Connected:=false;
 mainForm.Caption:='Приём платежей@локальная работа'+':'+DM.myOwner;
 mainForm.mailTimer.Enabled:=true;
 end;

procedure tdm.oncreate;
begin
  if firstconnect and  connect then
   begin
    firstconnect:=false;

     Sync(mainForm.datepick.Date,mainForm.magn.Text);
    GetMyOwner;

   end;

end;
procedure TDM.DataModuleCreate(Sender: TObject);
begin
firstconnect:=true;
//connect:=true;
  connectDB;
{  if connect then
   begin
    GetMyOwner;
     Sync(mainForm.datepick.Date,mainForm.magn.Text);
   end;   }
 end;
//------------------------------------------------------------------
procedure tdm.connectDB;
 begin
   //mainForm.waitform.Show;
   mainForm.ProgressBar1.Position:=0;
   mainForm.ProgressBar1.Visible:=true;
   mainForm.Timer1.Enabled:=true;
   MyBase.DatabaseName:=mainForm.FINIFile.ReadString('sql', 'base', 'port');
   MyBase.Host :=mainForm.FINIFile.ReadString('sql', 'ip', '');
   MyBase.UserPassword:=inttostr(20735947-9624836);//  '11111111';
   MyBase.UserName:='mag';
        if   MyBase.Host <>'' then
        begin
            try
            TUpdateApp.Create(false);
               // MyBase.Connected:=true;
              // magTable.Open;
              // magTable.Close;


            //     connect:=true;
           except

           end;
        end else
                begin
                  mainForm.Caption:='Приём платежей@локальная работа';
                connect:=false;

                end;


 end;
//---------------------------------------------------------------------------
  function Tdm.SendPlat(const mdata,mtime:Tdatetime;
                      const nkred,dog,schet,adr,own,bank,mag,tel:string;
                      const sum:currency;
                      const kto:integer;
                      const new:boolean):boolean;
  //var i:integer;
  begin
    result:=false;
    connectDB;

   if connect then
   begin
     try
    // MyBase.Connected:=true;

    selInput.Close;
    selInput.ParamByName('dog').AsString:=dog;
    selInput.ParamByName('data').Asdate:=mdata;
    selInput.ParamByName('time').Astime:=mtime;
    selinput.Open;
     selInput.First;
  //  if selInput.RecordCount>1 then
   // begin
    while not selInput.Eof do
    begin
     if selInputreg.AsInteger<>2 then
                                begin
                                if ( selInputreg.AsInteger=0) and ( new) then dm.deleteInput(selInputid.Value,mdata,mtime,dog);
                                if ( selInputreg.AsInteger=0) and (not new) then
                                  begin
                                    result:=true;
                                    exit;


                                  end;
                                if  selInputreg.AsInteger=1 then
                                   begin
                                    result:=true;
                                    exit;

                                   end;
                                end;
     selInput.Next;
    end;
 //   end;
//    if (selInput.RecordCount=1) and (selInputreg.AsInteger=0) then dm.deleteInput(selInputid.Value);
     selInput.Close;

      with InstPlat do
      begin
        ParamByName('data').AsDate:=mdata;
        ParamByName('name').AsString:=nkred;
        ParamByName('ndogovor').AsString:=dog;
        ParamByName('nschet').AsString:=schet;
        ParamByName('sum').AsCurrency:=sum;
        ParamByName('adres').AsString:=adr;
        ParamByName('owner').AsString:=own;
        ParamByName('bank').AsString:=bank;
        ParamByName('mag').AsString:=mag;
        ParamByName('time').AsTime:=mtime;
        ParamByName('kto').AsInteger:=kto;
        ParamByName('tel').AsString:=tel;
        ExecSQL;

      end;
      selInput.Close;

      selnew.ParamByName('dog').AsString:=dog;
      selnew.ParamByName('data').Asdate:=mdata;
      selnew.ParamByName('time').Astime:=mtime;
      selnew.Open;
      if selnew.RecordCount=1 then result:=true;
      selnew.Close;

     except

     end;
   end;
  end;
//-----------------------------------------------------------------------------
  function Tdm.SendKred(const data:Tdatetime;
                      const nkred,dog,schet,bank,mag:string):boolean;
  begin
    result:=false;
     try
      with InstKred do
      begin
        ParamByName('data').AsDate:=data;
        ParamByName('name').AsString:=nkred;
        ParamByName('ndogovor').AsString:=dog;
        ParamByName('nschet').AsString:=schet;
        ParamByName('bank').AsString:=bank;
        ParamByName('mag').AsString:=mag;

        ExecSQL;

      end;
     except
       abort;
     end;

  end;
 //-------------------------------------------------------------------------

  procedure tdm.FindKredDog(const dname,dog:string);
  begin
   If (trim(dname)<>'') or (trim(dog)<>'')
   then
       begin
          FindQ.Close;
          FindQ.ParamByName('name').AsString:=AnsiUpperCase(trim(dname));
          FindQ.ParamByName('dog').AsString:=AnsiUpperCase(  trim(dog));//+'%';
         // ShowMessage(FindQ.SQL.Text);
          FindQ.Open;
          ancQuery.Close;
          ancQuery.ParamByName('bank').AsString:=AnsiUpperCase(trim(dname));
          ancQuery.ParamByName('dog').AsString:=AnsiUpperCase(trim(dog));
          ancQuery.Open;

       end;
  end;

 //-----------------------------------------------------------------------------

   function tdm.DataDogovora(dog:string):TDateTime;
    begin
      result:=0;
      if dm.connect then
       begin
         try
         Finddog.Close;

          Finddog.ParamByName('dog').AsString:=AnsiUpperCase(trim(dog));
          Finddog.Open;
          if Finddog.RecordCount>0 then
            begin
              Finddog.Last;
              result:=finddogdata.AsDateTime
            end;
           Finddog.Close;
         except

         end;
       end;
    end;
 //-----------------------------------------------------------------------------
 procedure tdm.GetMyOwner;
  begin
    myOwner:='';

      ownquery.Open;
      if mainform.ownForm.ShowModal=mrok
                 then myOwner:=ownqueryowner.Value;
      ownquery.Close;
     mainForm.Caption:=mainForm.Caption+myOwner;

  end;
 //-----------------------------------------------------------------------------

 procedure Tdm.Sync(const Mydata:TDateTime;const Mymag:string);
   begin
     If dm.connect then
     begin
       DayQuery.Close;
       DayQuery.ParamByName('data').AsString:=FormatDateTime('yyyy-mm-dd',Mydata);
       DayQuery.ParamByName('mag').AsString:=Mymag;
       DayQuery.Open;
       mainForm.datepickChange(nil);

       if DayQuery.RecordCount=0  then
                               Begin
                               DayQuery.Close;
                               exit;
                               end;







       DayQuery.First;
       while not DayQuery.Eof do
        begin
          if not mainForm.clientTable.Locate('ndogovor',DayQueryndogovor.Value,[])
              then  InsertPlat;
              //else if not mainForm.clientTable.Locate('time',DayQuerytime.Value,[])
             // then InsertPlat;
           //   else begin
            //         if (roundto(mainForm.clientTableTime.Value,-4))<>
             //           (roundto(DayQuerytime.Value,-4))
              //       then  InsertPlat;

               //    end;

         DayQuery.Next;
        end;
      DayQuery.Close;
     end;
   end;
//--------------------------------------------------------------------------------
  procedure  TDM.InsertPlat;
  begin
   mainForm.syncform.Show;
   try

     mainForm.clientTable.Insert;
     mainForm.clientTableData.Value:=DayQuerydata.Value;
     mainForm.clientTableTime.Value:=DayQuerytime.Value;
     mainForm.clientTableName.Value:=DayQueryname.Value;
     mainForm.clientTableNdogovor.Value:=DayQueryndogovor.Value;
     mainForm.clientTableNschet.Value:=DayQuerynschet.Value;
     mainForm.clientTableSum.Value:=DayQuerysum.Value;
     mainForm.clientTableReg.Value:=1;
     mainForm.clientTableAdres.Value:=DayQueryadres.Value;
     mainForm.clientTableOwner.Value:=DayQueryowner.Value;
     mainForm.clientTableBank.Value:=DayQuerybank.Value;
    mainForm.clientTableKtodal.Value:=DayQueryktodal.Value;
     mainform.clientTableTel.Value:=DayQuerytel.Value;
     mainForm.clientTable.Post;
     mainForm.Memo1.Lines.Add(DayQueryname.Value+';'+DayQueryndogovor.Value
     +';'+DayQuerynschet.Value+';'+DayQuerysum.AsString);

  except

  end;
  end;
//--------------------------------------------------------------------------

    function tdm.deleteInput(const id:integer;const mdata,mtime:Tdatetime;const dog:string):boolean;
    begin
     result:=false;
      try
       delInput1.ParamByName('dog').AsString:=dog;
       delinput1.ParamByName('data').AsDate:=mdata;
       delinput1.ParamByName('time').AsTime:=mtime;
       delInput1.ExecSQL;

       delInput.ParamByName('id').AsInteger:=id;
       delInput.ExecSQL;


      result:=true;
      except

      end;
    end;

 procedure TDM.MyBaseConnectionFailure(Connection: TmySQLDatabase;
  Error: String);
begin
//if mytread<>nil then mytread.Free;
  mainForm.Caption:='Приём платежей@локальная работа';
                 connect:=false;
//mainForm.ProgressBar1.Visible:=false;
                 //mainForm.waitform.Hide;
//mainForm.Timer1.Enabled:=false;
end;


end.
