object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 338
  Top = 301
  Height = 418
  Width = 622
  object MyBase: TmySQLDatabase
    DatabaseName = 'port'
    UserName = 'kredit'
    UserPassword = '11111111'
    Port = 3333
    Host = '127.0.0.1'
    ConnectOptions = []
    ConnectionTimeout = 20
    Params.Strings = (
      'Port=3333'
      'TIMEOUT=20'
      'DatabaseName=port'
      'Host=127.0.0.1'
      'UID=kredit'
      'PWD=11111111')
    OnConnectionFailure = MyBaseConnectionFailure
    Left = 32
    Top = 32
  end
  object InstPlat: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      'insert into input'
      '(data,'
      'time,'
      'name,'
      'ndogovor,'
      'nschet,'
      'sum,adres,'
      'owner,'
      'bank,mag,ktodal,tel)'
      'values '
      '(:data,'
      ':time,'
      ':name,'
      ':ndogovor,'
      ':nschet,'
      ':sum,:adres,'
      ':owner,'
      ':bank,:mag,:kto,:tel)')
    Left = 112
    Top = 32
    ParamData = <
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftTime
        Name = 'time'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ndogovor'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'nschet'
        ParamType = ptUnknown
      end
      item
        DataType = ftCurrency
        Name = 'sum'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'adres'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'owner'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'bank'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'mag'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'kto'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'tel'
        ParamType = ptUnknown
      end>
  end
  object InstKred: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      'insert into dogovor'
      '(data,'
      'name,'
      'ndogovor,'
      'nschet,'
      'bank,mag)'
      'values '
      '(:data,'
      ':name,'
      ':ndogovor,'
      ':nschet,'
      ':bank,:mag)')
    Left = 176
    Top = 32
    ParamData = <
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ndogovor'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'nschet'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'bank'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'mag'
        ParamType = ptUnknown
      end>
  end
  object FindQ: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      'SELECT data,name,adres,ndogovor,nschet,bank,mag,tel'
      'FROM port.client where bank like :name'
      'and upper(ndogovor) like :dog'
      'order by data desc')
    Left = 56
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'dog'
        ParamType = ptUnknown
      end>
    object FindQdata: TDateField
      FieldName = 'data'
    end
    object FindQname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object FindQadres: TStringField
      FieldName = 'adres'
      Size = 50
    end
    object FindQndogovor: TStringField
      FieldName = 'ndogovor'
      Size = 10
    end
    object FindQnschet: TStringField
      FieldName = 'nschet'
    end
    object FindQbank: TStringField
      FieldName = 'bank'
      Size = 2
    end
    object FindQmag: TStringField
      FieldName = 'mag'
      Size = 5
    end
    object FindQtel: TStringField
      FieldName = 'tel'
      Size = 50
    end
  end
  object FindDS: TDataSource
    DataSet = FindQ
    Left = 104
    Top = 128
  end
  object ownquery: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      'SELECT distinct  trim(owner) owner FROM  input '
      'where data>DATE_SUB(curdate(),INTERVAL 14 DAY)'
      'order by owner')
    Left = 256
    Top = 136
    object ownqueryowner: TStringField
      FieldName = 'owner'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ownquery
    Left = 320
    Top = 128
  end
  object DayQuery: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      'select * from input where data=:data and mag=:mag and reg=0')
    Left = 64
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'mag'
        ParamType = ptUnknown
      end>
    object DayQueryid: TAutoIncField
      FieldName = 'id'
    end
    object DayQuerydata: TDateField
      FieldName = 'data'
    end
    object DayQueryname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object DayQueryndogovor: TStringField
      FieldName = 'ndogovor'
      Size = 10
    end
    object DayQuerynschet: TStringField
      FieldName = 'nschet'
    end
    object DayQuerysum: TFloatField
      FieldName = 'sum'
    end
    object DayQueryreg: TIntegerField
      FieldName = 'reg'
    end
    object DayQueryadres: TStringField
      FieldName = 'adres'
      Size = 50
    end
    object DayQueryowner: TStringField
      FieldName = 'owner'
      Size = 50
    end
    object DayQuerybank: TStringField
      FieldName = 'bank'
      Size = 2
    end
    object DayQuerymag: TStringField
      FieldName = 'mag'
      Size = 5
    end
    object DayQuerytime: TTimeField
      FieldName = 'time'
    end
    object DayQueryktodal: TIntegerField
      FieldName = 'ktodal'
    end
    object DayQuerytel: TStringField
      FieldName = 'tel'
      Size = 50
    end
  end
  object delinput: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      
        'update input set reg=2,tel=concat(tel,'#39'-'#39',now())  where id=:id a' +
        'nd reg=0')
    Left = 240
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object selInput: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      
        'select id,reg from input where ndogovor=:dog and data=:data and ' +
        'time=:time')
    Left = 272
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'dog'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftTime
        Name = 'time'
        ParamType = ptUnknown
      end>
    object selInputid: TAutoIncField
      FieldName = 'id'
    end
    object selInputreg: TIntegerField
      FieldName = 'reg'
    end
  end
  object magTable: TmySQLTable
    Database = MyBase
    TableName = 'mag'
    Left = 136
    Top = 208
  end
  object FindQuery: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      
        'SELECT data,name,concat_ws('#39' '#1090#1077#1083':'#39',adres,tel)   adres,ndogovor,n' +
        'schet,bank,mag,sum'
      'FROM port.client where  name like :name'
      'and upper(ndogovor) like :dog'
      'and mag like :mag'
      'order by data desc')
    Left = 312
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'dog'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'mag'
        ParamType = ptUnknown
      end>
  end
  object DataSource2: TDataSource
    DataSet = FindQuery
    Left = 368
    Top = 216
  end
  object finddog: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      'SELECT data'
      'FROM client where  upper(ndogovor) = :dog'
      'order by data desc')
    Left = 168
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'dog'
        ParamType = ptUnknown
      end>
    object finddogdata: TDateField
      FieldName = 'data'
    end
  end
  object qfam: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      'select 1 from tfamily where family=:fam')
    Left = 352
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'fam'
        ParamType = ptUnknown
      end>
  end
  object qname: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      'select 1 from tname where name=:name')
    Left = 392
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end>
  end
  object qotch: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      'select 1 from totchestvo where otchestvo=:otch')
    Left = 432
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'otch'
        ParamType = ptUnknown
      end>
  end
  object qinsname: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      'insert into tname (name,owner) values  (:name,:owner)')
    Left = 384
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'owner'
        ParamType = ptUnknown
      end>
  end
  object qinsfam: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      'insert into tfamily (family,owner) values (:name,:owner)')
    Left = 336
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'owner'
        ParamType = ptUnknown
      end>
  end
  object qinsotch: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      'insert into totchestvo (otchestvo,owner) values  (:name,:owner)')
    Left = 440
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'owner'
        ParamType = ptUnknown
      end>
  end
  object selnew: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      
        'select id,reg from input where ndogovor=:dog and data=:data and ' +
        'time=:time and reg=0')
    Left = 392
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'dog'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftTime
        Name = 'time'
        ParamType = ptUnknown
      end>
    object AutoIncField1: TAutoIncField
      FieldName = 'id'
    end
    object IntegerField1: TIntegerField
      FieldName = 'reg'
    end
  end
  object delinput1: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      
        'delete from input where ndogovor=:dog and data=:data and time=:t' +
        'ime and reg=2')
    Left = 240
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'dog'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftTime
        Name = 'time'
        ParamType = ptUnknown
      end>
    object AutoIncField2: TAutoIncField
      FieldName = 'id'
    end
    object IntegerField2: TIntegerField
      FieldName = 'reg'
    end
  end
  object ancQuery: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      'select * from anketa where bank=:bank and ndogovor=:dog')
    Left = 440
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'bank'
        ParamType = ptUnknown
        Value = 'RS'
      end
      item
        DataType = ftString
        Name = 'dog'
        ParamType = ptUnknown
        Value = '69587572'
      end>
    object ancQueryid: TAutoIncField
      FieldName = 'id'
    end
    object ancQuerybank: TStringField
      FieldName = 'bank'
      Size = 2
    end
    object ancQueryndogovor: TStringField
      FieldName = 'ndogovor'
      Size = 16
    end
    object ancQueryfio: TStringField
      FieldName = 'fio'
      Size = 100
    end
    object ancQuerydr: TDateField
      FieldName = 'dr'
    end
    object ancQuerymr: TStringField
      FieldName = 'mr'
      Size = 100
    end
    object ancQuerygr: TStringField
      FieldName = 'gr'
      Size = 100
    end
    object ancQuerydoc: TStringField
      FieldName = 'doc'
      Size = 45
    end
    object ancQueryrecdoc: TStringField
      FieldName = 'recdoc'
      Size = 200
    end
    object ancQueryprop: TStringField
      FieldName = 'prop'
      Size = 100
    end
    object ancQueryinn: TStringField
      FieldName = 'inn'
      Size = 50
    end
    object ancQuerytel: TStringField
      FieldName = 'tel'
      Size = 100
    end
    object ancQuerydovname: TStringField
      FieldName = 'dovname'
      Size = 100
    end
    object ancQueryankdate: TDateField
      FieldName = 'ankdate'
    end
  end
  object saveAncQ: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      
        'insert into anketa (bank,ndogovor,fio,dr,mr,gr,doc,recdoc,prop,i' +
        'nn,tel,dovname,ankdate)'
      
        'values (:bank,:ndogovor,:fio,:dr,:mr,:gr,:doc,:recdoc,:prop,:inn' +
        ',:tel,:dovname,:ankdate)')
    Left = 440
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'bank'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ndogovor'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fio'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'dr'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'mr'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'gr'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'recdoc'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'prop'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'inn'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tel'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'dovname'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'ankdate'
        ParamType = ptUnknown
      end>
  end
  object updateAnc: TmySQLQuery
    Database = MyBase
    SQL.Strings = (
      
        'update anketa  set fio=:fio,dr=:dr,mr=:mr,gr=:gr,doc=:doc,recdoc' +
        '=:recdoc,'
      'prop=:prop,inn=:inn,tel=:tel,dovname=:dovname,ankdate=:ankdate'
      'where id=:id')
    Left = 440
    Top = 304
    ParamData = <
      item
        DataType = ftString
        Name = 'fio'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'dr'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'mr'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'gr'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'recdoc'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'prop'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'inn'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tel'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'dovname'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'ankdate'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
end
