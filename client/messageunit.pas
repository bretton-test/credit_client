unit messageunit;

interface
 uses Math, SysUtils;
const
        Edinizi  : array [ 1..19 ] of ShortString =
        ( 'один','два','три','четыре','пять','шесть','семь','восемь','девять',
          'десять','одиннадцать','двенадцать','тринадцать','четырнадцать',
          'пятнадцать','шестнадцать','семнадцать','восемнадцать','девятнадцать');
        Desjatki : array [ 1..8 ] of ShortString =
         ( 'двадцать','тридцать','сорок','пятьдесят','шестьдесят',
           'семьдесят','восемьдесят','девяносто' );
        Sotni    : array [ 1..9 ] of ShortString =
         ( 'сто','двести','триста','четыреста','пятьсот','шестьсот',
           'семьсот','восемьсот','девятьсот' );
        Mess1    : array [ 1..9 ] of ShortString =
         ( 'тысяча','тысячи','тысяч','миллион','миллиона','миллионов',
           'миллиард','миллиарда','миллиардов' );
        Rubli    : array [ 1..7 ] of ShortString =
         ( '','рубль','рубля','рублей',' копейка',' копейки',' копеек' );
        Finansy  : array [ 1..7 ] of ShortString =
         ('', '','','','','','' );
  VAR     iEdinizi          : array [ 1..2 ] of ShortString;
        function  Perevod ( Tshislo : LongInt; var Wybor_Ediniz : Word ):string;
        function  SummaPropis ( cN : Real; Val : ShortString ): string;
         function  RusUpperCase  (ch : Char): Char;

  implementation




    function Perevod ( Tshislo : LongInt; var Wybor_Ediniz : Word  ):String;
var     Dlina_Stroki : SmallInt;
        Rabota       : Boolean;
begin
        Result :=  '';  Rabota := TRUE;  Wybor_Ediniz := 3;
 while  Rabota   do  begin
        Dlina_Stroki := Length( IntToStr(Tshislo)); {Определить длину строки}
  case  Dlina_Stroki of
        1,2 : begin
               if ( Tshislo >= 1 ) and ( Tshislo <= 19 ) then begin  {Числа от 1 до 19 }
                       if  ( Tshislo = 1 )or ( Tshislo = 2 ) then begin
                         if iEdinizi[1] <> '' then
                          Result := Result + ' ' + iEdinizi[ Tshislo ] {+ ' '}
                         else
                          Result := Result + ' ' + Edinizi[ Tshislo ] {+ ' '};
                       end
                       else
                          Result := Result + ' ' + Edinizi[ Tshislo ] {+ ' '};
                  case Tshislo of
                      1     : Wybor_Ediniz := 1;
                      2,3,4 : Wybor_Ediniz := 2;
                  else        Wybor_Ediniz := 3;
                  end;{case}

                Rabota := FALSE;
               end   //if
               else  begin                                       { Числа от 20 до 99}
                  Result  := Result + ' ' + Desjatki[ (Tshislo div 10) - 1 ] {+ ' '};
                  Tshislo := Tshislo - ( Tshislo div 10 )*10;
                    if Tshislo = 0 then Rabota := FALSE;
               end; {Tshislo}
              end;
        3:    begin                                        {Числа от 100 до 999}
                Result  := Result + ' ' + Sotni[ (Tshislo div 100) ] {+ ' '};
                Tshislo := Tshislo - ( Tshislo div 100 )*100;
                if Tshislo = 0 then  Rabota := FALSE;
              end;
        else  Rabota := FALSE;
  end;{case}
 end;{while}
end;
{------------------------------------------------------------------------------}


   function  {GetSummaOfString}SummaPropis( cN : Real; Val : ShortString ): string;
var     Dlina_Stroki    : SmallInt;    {длина строки}
        Ostatok_Tshisla : Real;        {остаток числа cN}
        Wypolnenie      : Boolean;
        Tshislo         : Longint;     {целая часть числа cN}
        kop             : integer;
        Ostatok,ost_kop : string;
        Wybor_Ediniz    : Word;
        Valuta          : array[1..6] of ShortString;
begin
       cn:=roundto( cn,-2);
        Valuta[1] := ''; Valuta[2] := ''; Valuta[3] := ''; Valuta[4] := '';
        Valuta[5] := ''; Valuta[6] := '';
        if Val = 'RU' then begin
          Valuta[1] :='рубль'; Valuta[2] := 'рубля'; Valuta[3] :='рублей';
          Valuta[4] :=' копейка';   Valuta[5] := ' копейки'; Valuta[6] :=' копеек';
        end;
        Tshislo         := Trunc( cN );               {  Целая часть }
        Ostatok_Tshisla :=  cN - Tshislo;             { Остаток от введенного числа}
        Result          := ' ';
        Wypolnenie      := TRUE;
        iEdinizi [ 1 ]  := '';
        iEdinizi [ 2 ]  := '';
    if  Tshislo < 0 then Exit;

 if   Tshislo > 0   then   begin
   while  Wypolnenie  do  begin
                Dlina_Stroki := Length( IntToStr( Tshislo ) );
    case  Dlina_Stroki of
     1,2,3: begin                                          { Числа от 1 до 999}
                Result := Result + Perevod(Tshislo,Wybor_Ediniz) + ' ' +  Valuta[ Wybor_Ediniz ];
                Wypolnenie := FALSE;
            end;
     4,5,6: begin                                     { Числа от 1000 до 999999}
                iEdinizi[ 1 ] := 'одна';
                iEdinizi[ 2 ] := 'две';
                Result := Result + Perevod( (Tshislo div 1000 ), Wybor_Ediniz ) + ' '
                                                     + Mess1 [ Wybor_Ediniz ];
                iEdinizi[ 1 ] := 'один';
                iEdinizi[ 2 ] := 'два';
                Tshislo       := Tshislo - ( Tshislo div 1000 )*1000;
             if Tshislo = 0 then begin
                Wybor_Ediniz  := 3;
                Result        := Result + ' ' + Valuta[ Wybor_Ediniz ];
                Wypolnenie    := FALSE;
              end;//if
            end;
     7,8,9: begin
                Result := Result + Perevod( ( Tshislo div 1000000 ), Wybor_Ediniz ) + ' '
                                                  + Mess1 [ Wybor_Ediniz + 3 ];
               Tshislo := Tshislo - ( Tshislo div 1000000 )*1000000;
              if Tshislo = 0 then  begin
                Wybor_Ediniz := 3;
                Result := Result + ' ' + Valuta[ Wybor_Ediniz ];
                Wypolnenie := FALSE;
              end;//if
            end;
     10,11,13: begin
                Result := Result +
                      Perevod( (Tshislo div 1000000000 ), Wybor_Ediniz  ) + ' '
                                                  +  Mess1 [ Wybor_Ediniz + 6 ];
                Tshislo := Tshislo - ( Tshislo div 1000000000 )*1000000000;
               if Tshislo = 0 then begin
                 Wybor_Ediniz := 3;
                 Result := Result + ' ' + Valuta[ Wybor_Ediniz ];
                 Wypolnenie := FALSE
               end;//if
              end;
            else
                Wypolnenie := FALSE;
    end;//case
  end;//while
 end//if
 else   Result   := 'ноль' + ' ' +  Valuta[ 3 ];

        Ostatok  := format( '%0.2f',[ Ostatok_Tshisla ] );
        kop      := StrToInt( Ostatok[ 3 ] + Ostatok[ 4 ] );
    case kop of
        1,21,31,41,51,61,71,81,91 : ost_kop := Valuta[ 4 ];
        2..4,22..24,32..34,42..44,52..54,62..64,72..74,82..84,92..94
                                                       : ost_kop := Valuta[ 5 ];
    else   ost_kop  := Valuta[ 6 ];
    end;//case
     if Valuta[ 1 ] = '' then
     else
        Result   := Result + ' ' + Ostatok[ 3 ] + Ostatok[ 4 ] + ost_kop;
        Result   := Trim( Result );
        Result[1]:= RusUpperCase( Result[1] );
end;

 function  RusUpperCase  (ch : Char): Char;
begin
        case ch of
                'а' : Result := 'А';
                'б' : Result := 'Б';
                'в' : Result := 'В';
                'г' : Result := 'Г';
                'д' : Result := 'Д';
                'е' : Result := 'Е';
                'ж' : Result := 'Ж';
                'з' : Result := 'З';
                'и' : Result := 'И';
                'й' : Result := 'Й';
                'к' : Result := 'К';
                'л' : Result := 'Л';
                'м' : Result := 'М';
                'н' : Result := 'Н';
                'о' : Result := 'О';
                'п' : Result := 'П';
                'р' : Result := 'Р';
                'с' : Result := 'С';
                'т' : Result := 'Т';
                'у' : Result := 'У';
                'ф' : Result := 'Ф';
                'х' : Result := 'Х';
                'ц' : Result := 'Ц';
                'ч' : Result := 'Ч';
                'ш' : Result := 'Ш';
                'щ' : Result := 'Щ';
                'ъ' : Result := 'Ъ';
                'ы' : Result := 'Ы';
                'ь' : Result := 'Ь';
                'э' : Result := 'Э';
                'ю' : Result := 'Ю';
                'я' : Result := 'Я';
        else  Result:= ch;
        end;//case
end;









end.
