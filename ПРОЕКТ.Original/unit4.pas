unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, mysql55conn, mysql56conn, sqldb, FileUtil, Forms,
  Controls, Graphics, Dialogs, DBGrids, ComCtrls, ActnList, StdCtrls, Menus,
  ExtCtrls, CheckLst, DbCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    CheckListBox1: TCheckListBox;
    CheckListBox2: TCheckListBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MySQL56Connection1: TMySQL56Connection;
    PageControl1: TPageControl;
    RadioButton1: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLQuery3: TSQLQuery;
    SQLQuery4: TSQLQuery;
    SQLQuery5: TSQLQuery;
    SQLQuery6: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    procedure Bevel1ChangeBounds(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);

    procedure CheckGroup1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure ListBox1Click(Sender: TObject);
    procedure Memo13Change(Sender: TObject);
    procedure Memo15Change(Sender: TObject);
    procedure Memo29Change(Sender: TObject);
    procedure Memo50Change(Sender: TObject);
    procedure Memo53Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure RadioButton10Change(Sender: TObject);
    procedure RadioButton11Change(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
    procedure RadioButton5Change(Sender: TObject);
    procedure RadioButton6Change(Sender: TObject);
    procedure RadioButton7Change(Sender: TObject);
    procedure RadioButton8Change(Sender: TObject);
    procedure RadioButton9Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form4: TForm4;

implementation
uses unit1, unit5;
{$R *.lfm}

{ TForm4 }

procedure TForm4.CheckGroup1Click(Sender: TObject);
begin

end;

procedure TForm4.ComboBox1Change(Sender: TObject);
begin
    if ComboBox1.Text = '-'    then
      else Edit1.text:='Год';
  if (ComboBox1.Text = '-') then
  else ComboBox3.text:= '-';
end;

procedure TForm4.ComboBox2Change(Sender: TObject);
begin
    if ComboBox2.Text = '-'    then
   else Edit1.text:='Год';
  if (ComboBox2.Text = '-') then
  else ComboBox3.Text:= '-';
end;

procedure TForm4.ComboBox3Change(Sender: TObject);
begin
   if ComboBox3.Text = '-'    then
   else Edit1.text:='Год';
   if ComboBox3.Text = '-'    then
   else ComboBox1.Text:= '-';
   if ComboBox3.Text = '-'    then
   else ComboBox2.Text:= '-';
end;

procedure TForm4.ComboBox4Change(Sender: TObject);
begin
end;

procedure TForm4.Edit1Change(Sender: TObject);
begin
   if edit1.Text = 'Год' then
   else
   begin
   ComboBox1.Text:='-';
   ComboBox2.Text:='-';
   ComboBox3.Text:='-';
   end;
end;

procedure TForm4.Edit7Change(Sender: TObject);
begin
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
Button4.Visible:=False;
Button1.Visible:=False;
 Button3.Visible:=False;
 Button6.Visible:=False;
 Button2.Visible:=False;
 Button5.Visible:=False;
  RadioButton3.Enabled:=false;
  RadioButton4.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton7.Checked:=False;
  RadioButton7.Checked:=True;
  RadioButton1.Checked:=False;
  RadioButton1.Checked:=True;

end;

procedure TForm4.ListBox1Click(Sender: TObject);
begin

end;

procedure TForm4.Memo13Change(Sender: TObject);
begin
  end;

procedure TForm4.Memo15Change(Sender: TObject);
begin
  end;

procedure TForm4.Memo29Change(Sender: TObject);
begin
  end;

procedure TForm4.Memo50Change(Sender: TObject);
begin
  end;

procedure TForm4.Memo53Change(Sender: TObject);
begin
  end;

procedure TForm4.MenuItem1Click(Sender: TObject);
begin
  form1.Show;
  Form4.Close;
end;

procedure TForm4.RadioButton10Change(Sender: TObject);
begin
if  RadioButton10.Checked = True
then
begin
Button11.Enabled:=false;
RadioButton4.Checked:=True;
DBGrid1.Visible:=false;
DBGrid2.Visible:=false;
DBGrid3.Visible:=False;
DBGrid4.Visible:=True;
DBGrid5.Visible:=false;
end;
  If RadioButton10.Checked = True Then RadioButton1.Enabled:=false;
   If RadioButton10.Checked = True Then RadioButton2.Enabled:=false;
   If RadioButton10.Checked = True Then RadioButton3.Enabled:=false;
   If RadioButton10.Checked = True Then RadioButton4.Enabled:=True;
   If RadioButton10.Checked = True Then RadioButton5.Enabled:=false;
   If RadioButton10.Checked = True Then RadioButton6.Enabled:=false;
end;

procedure TForm4.RadioButton11Change(Sender: TObject);
begin
   If RadioButton11.Checked = True
   Then
   begin
   Button11.Enabled:=false;
   DBGrid1.Visible:=false;
DBGrid2.Visible:=false;
DBGrid3.Visible:=False;
DBGrid5.Visible:=True;
DBGrid4.Visible:=false;
    RadioButton6.Checked:=True;
   end;
   If RadioButton11.Checked = True Then RadioButton1.Enabled:=false;
   If RadioButton11.Checked = True Then RadioButton2.Enabled:=false;
   If RadioButton11.Checked = True Then RadioButton3.Enabled:=false;
   If RadioButton11.Checked = True Then RadioButton4.Enabled:=false;
   If RadioButton11.Checked = True Then RadioButton5.Enabled:=false;
   If RadioButton11.Checked = True Then RadioButton6.Enabled:=True;
end;

procedure TForm4.RadioButton1Change(Sender: TObject);
begin
  If radiobutton1.Checked = True then PageControl1.ActivePage:= TabSheet6;
  If RadioButton7.Checked = True Then RadioButton2.Enabled:=false;
  If RadioButton7.Checked = True Then RadioButton3.Enabled:=false;
  If RadioButton7.Checked = True Then RadioButton4.Enabled:=false;
  If RadioButton7.Checked = True Then RadioButton6.Enabled:=false;
end;

procedure TForm4.RadioButton2Change(Sender: TObject);
begin
  If radiobutton2.Checked = True then PageControl1.ActivePage:= TabSheet3;
end;

procedure TForm4.RadioButton3Change(Sender: TObject);
begin
  If radiobutton3.Checked = True then PageControl1.ActivePage:= TabSheet4;
end;

procedure TForm4.RadioButton4Change(Sender: TObject);
begin
  If radiobutton4.Checked = True then PageControl1.ActivePage:= TabSheet5;
end;

procedure TForm4.RadioButton5Change(Sender: TObject);
begin
  If radiobutton5.Checked = True then PageControl1.ActivePage:= TabSheet2;
end;

procedure TForm4.RadioButton6Change(Sender: TObject);
begin
  If radiobutton6.Checked = True then PageControl1.ActivePage:= TabSheet1;
end;

procedure TForm4.RadioButton7Change(Sender: TObject);
begin
  If RadioButton7.Checked = True
  Then
  begin
   Button11.Enabled:=true;
  DBGrid1.Visible:=True;
  DBGrid2.Visible:=false;
  DBGrid3.Visible:=false;
  DBGrid4.Visible:=false;
  DBGrid5.Visible:=false;
  end;
  If RadioButton7.Checked = True Then RadioButton1.Enabled:=True;
  If RadioButton7.Checked = True Then RadioButton1.Checked:=True;
  If RadioButton7.Checked = True Then RadioButton2.Enabled:=false;
  If RadioButton7.Checked = True Then RadioButton3.Enabled:=false;
  If RadioButton7.Checked = True Then RadioButton4.Enabled:=false;
  If RadioButton7.Checked = True Then RadioButton5.Enabled:=True;
  If RadioButton7.Checked = True Then RadioButton6.Enabled:=false;
end;

procedure TForm4.RadioButton8Change(Sender: TObject);
begin
  If RadioButton8.Checked = True
  Then
  begin
  Button11.Enabled:=false;
  DBGrid1.Visible:=false;
  DBGrid4.Visible:=false;
  DBGrid3.Visible:=False;
  DBGrid2.Visible:=True;
  DBGrid5.Visible:=false;
  RadioButton2.Checked:=True;
  end;
  If RadioButton8.Checked = True Then RadioButton1.Enabled:=false;
  If RadioButton8.Checked = True Then RadioButton2.Enabled:=True;
  If RadioButton8.Checked = True Then RadioButton3.Enabled:=false;
  If RadioButton8.Checked = True Then RadioButton4.Enabled:=false;
  If RadioButton8.Checked = True Then RadioButton5.Enabled:=false;
  If RadioButton8.Checked = True Then RadioButton6.Enabled:=false;
end;

procedure TForm4.RadioButton9Change(Sender: TObject);
begin
  If RadioButton9.Checked = True
  Then
  begin
  Button11.Enabled:=false;
  RadioButton3.Checked:=True;
 DBGrid1.Visible:=false;
DBGrid2.Visible:=false;
DBGrid4.Visible:=False;
DBGrid3.Visible:=True;
DBGrid5.Visible:=false;
  end;
  If RadioButton9.Checked = True Then RadioButton1.Enabled:=false;
  If RadioButton9.Checked = True Then RadioButton2.Enabled:=false;
  If RadioButton9.Checked = True Then RadioButton3.Enabled:=True;
  If RadioButton9.Checked = True Then RadioButton4.Enabled:=false;
  If RadioButton9.Checked = True Then RadioButton5.Enabled:=false;
  If RadioButton9.Checked = True Then RadioButton6.Enabled:=false;

end;

procedure TForm4.RadioGroup1Click(Sender: TObject);
begin

end;

procedure TForm4.Button1Click(Sender: TObject);
begin
SQLQuery1.Active:=False;
SQLQuery1.Close;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('SELECT * FROM disk1');
SQLQuery1.SQL.Add('where ID >= 1 ');
if Edit1.Text = 'Год' then
else SQLQuery1.SQL.Add('and god = '+Edit1.Text+'');
if ComboBox3.Text = '-' then
else SQLQuery1.SQL.Add('and god = '+ComboBox3.Text+'');
if  (ComboBox1.Text = '-') and (ComboBox2.Text = '-') then
else
begin
if (ComboBox1.text > ComboBox2.text) or (ComboBox1.Text = '-') or (ComboBox2.Text = '-')
then
MessageDLG('Заполните правильно интервал годов ', mtError, [mbOk],0);
end;
if (ComboBox1.Text = '-') and (ComboBox2.Text = '-') then
else SQLQuery1.SQL.Add('and god >= '+ComboBox1.Text+' and god <= '+ Combobox2.Text +'');
If  Edit2.text = ''then
else SQLQuery1.SQL.Add('and Name = '''+Edit2.Text+'''');
If  Edit3.text = ''then
else SQLQuery1.SQL.Add('and kolvo = '+Edit3.Text+'');
SQLQuery1.Open;
SQLQuery1.Active:=True;
end;


procedure TForm4.Button2Click(Sender: TObject);
begin
SQLQuery5.Active:=False;
SQLQuery5.Close;
SQLQuery5.SQL.Clear;
SQLQuery5.SQL.Add('SELECT * FROM filmjanr');
SQLQuery5.SQL.Add('join disk1 on  disk1.ID = filmjanr.film');
SQLQuery5.SQL.Add('where  filmjanr.ID < 1 ');
if CheckListBox1.Checked[0] = True  then SQLQuery5.SQL.Add('or janr = ''аниме''');
if CheckListBox1.Checked[1] = True  then SQLQuery5.SQL.Add('or janr = ''биография''');
if CheckListBox1.Checked[2] = True  then SQLQuery5.SQL.Add('or janr = ''боевик''');
if CheckListBox1.Checked[3] = True  then SQLQuery5.SQL.Add('or janr = ''вестерн''');
if CheckListBox1.Checked[4] = True  then SQLQuery5.SQL.Add('or janr = ''военный''');
if CheckListBox1.Checked[5] = True  then SQLQuery5.SQL.Add('or janr = ''детектив''');
if CheckListBox1.Checked[6] = True  then SQLQuery5.SQL.Add('or janr = ''детский''');
if CheckListBox1.Checked[7] = True  then SQLQuery5.SQL.Add('or janr = ''документальный''');
if CheckListBox1.Checked[8] = True  then SQLQuery5.SQL.Add('or janr = ''драма''');
if CheckListBox1.Checked[9] = True  then SQLQuery5.SQL.Add('or janr = ''другое''');
if CheckListBox1.Checked[10] = True  then SQLQuery5.SQL.Add('or janr = ''игра''');
if CheckListBox1.Checked[11] = True  then SQLQuery5.SQL.Add('or janr = ''история''');
if CheckListBox1.Checked[12] = True  then SQLQuery5.SQL.Add('or janr = ''комедия''');
if CheckListBox1.Checked[13] = True  then SQLQuery5.SQL.Add('or janr = ''короткометражка''');
if CheckListBox1.Checked[14] = True  then SQLQuery5.SQL.Add('or janr = ''криминал''');
if CheckListBox1.Checked[15] = True  then SQLQuery5.SQL.Add('or janr = ''мелодрама''');
if CheckListBox1.Checked[16] = True  then SQLQuery5.SQL.Add('or janr = ''музыка''');
if CheckListBox1.Checked[17] = True  then SQLQuery5.SQL.Add('or janr = ''мультфильм''');
if CheckListBox1.Checked[18] = True  then SQLQuery5.SQL.Add('or janr = ''мюзикл	''');
if CheckListBox1.Checked[19] = True  then SQLQuery5.SQL.Add('or janr = ''приключение''');
if CheckListBox1.Checked[20] = True  then SQLQuery5.SQL.Add('or janr = ''семейный''');
if CheckListBox1.Checked[21] = True  then SQLQuery5.SQL.Add('or janr = ''сериал''');
if CheckListBox1.Checked[22] = True  then SQLQuery5.SQL.Add('or janr = ''спорт''');
if CheckListBox1.Checked[23] = True  then SQLQuery5.SQL.Add('or janr = ''ток-шоу''');
if CheckListBox1.Checked[24] = True  then SQLQuery5.SQL.Add('or janr = ''триллер''');
if CheckListBox1.Checked[25] = True  then SQLQuery5.SQL.Add('or janr = ''ужасы''');
if CheckListBox1.Checked[26] = True  then SQLQuery5.SQL.Add('or janr = ''фантастика''');
if CheckListBox1.Checked[27] = True  then SQLQuery5.SQL.Add('or janr = ''фильм-нуар''');
if CheckListBox1.Checked[28] = True  then SQLQuery5.SQL.Add('or janr = ''фэнтези''');
SQLQuery5.Open;
SQLQuery5.Active:=True;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
SQLQuery2.Active:=False;
SQLQuery2.Close;
SQLQuery2.SQL.Clear;
SQLQuery2.SQL.Add('SELECT * FROM filmstrana');
SQLQuery2.SQL.Add('join  disk1  on filmstrana.IDfilma = disk1.ID ');
SQLQuery2.SQL.Add('where  filmstrana.ID < 1 ');
  if CheckListBox2.Checked[0] = True  then SQLQuery2.SQL.Add('or Idstrani = ''Австралия''');
  if CheckListBox2.Checked[1] = True  then SQLQuery2.SQL.Add('or Idstrani =''Австрия''');
  if CheckListBox2.Checked[2] = True  then SQLQuery2.SQL.Add('or Idstrani =''Азербайджан''');
  if CheckListBox2.Checked[3] = True  then SQLQuery2.SQL.Add('or Idstrani =''Албания''');
  if CheckListBox2.Checked[4] = True  then SQLQuery2.SQL.Add('or Idstrani =''Алжир''');
  if CheckListBox2.Checked[5] = True  then SQLQuery2.SQL.Add('or Idstrani =''Аргентина''');
  if CheckListBox2.Checked[6] = True  then SQLQuery2.SQL.Add('or Idstrani =''Армения''');
  if CheckListBox2.Checked[7] = True  then SQLQuery2.SQL.Add('or Idstrani =''Беларусь''');
  if CheckListBox2.Checked[8] = True  then SQLQuery2.SQL.Add('or Idstrani =''Бельгия''');
  if CheckListBox2.Checked[9] = True  then SQLQuery2.SQL.Add('or Idstrani =''Болгария''');
  if CheckListBox2.Checked[10] = True  then SQLQuery2.SQL.Add('or Idstrani =''Боливия''');
  if CheckListBox2.Checked[11] = True  then SQLQuery2.SQL.Add('or Idstrani =''Бразилия''');
  if CheckListBox2.Checked[12] = True  then SQLQuery2.SQL.Add('or Idstrani =''Великобритания''');
  if CheckListBox2.Checked[13] = True  then SQLQuery2.SQL.Add('or Idstrani =''Венгрия''');
  if CheckListBox2.Checked[14] = True  then SQLQuery2.SQL.Add('or Idstrani =''Вьетнам''');
  if CheckListBox2.Checked[15] = True  then SQLQuery2.SQL.Add('or Idstrani =''Габон''');
  if CheckListBox2.Checked[16] = True  then SQLQuery2.SQL.Add('or Idstrani =''Гаити''');
  if CheckListBox2.Checked[17] = True  then SQLQuery2.SQL.Add('or Idstrani =''Германия''');
  if CheckListBox2.Checked[18] = True  then SQLQuery2.SQL.Add('or Idstrani =''Германия(ГДР)''');
  if CheckListBox2.Checked[19] = True  then SQLQuery2.SQL.Add('or Idstrani =''Германия(ФРГ)''');
  if CheckListBox2.Checked[20] = True  then SQLQuery2.SQL.Add('or Idstrani =''Гонконг''');
  if CheckListBox2.Checked[21] = True  then SQLQuery2.SQL.Add('or Idstrani =''Греция''');
  if CheckListBox2.Checked[22] = True  then SQLQuery2.SQL.Add('or Idstrani =''Грузия''');
  if CheckListBox2.Checked[23] = True  then SQLQuery2.SQL.Add('or Idstrani =''Дания''');
  if CheckListBox2.Checked[24] = True  then SQLQuery2.SQL.Add('or Idstrani =''Другая...''');
  if CheckListBox2.Checked[25] = True  then SQLQuery2.SQL.Add('or Idstrani =''Египет''');
  if CheckListBox2.Checked[26] = True  then SQLQuery2.SQL.Add('or Idstrani =''Израиль''');
  if CheckListBox2.Checked[27] = True  then SQLQuery2.SQL.Add('or Idstrani =''Индия''');
  if CheckListBox2.Checked[28] = True  then SQLQuery2.SQL.Add('or Idstrani =''Ирак''');
  if CheckListBox2.Checked[29] = True  then SQLQuery2.SQL.Add('or Idstrani =''Иран''');
  if CheckListBox2.Checked[30] = True  then SQLQuery2.SQL.Add('or Idstrani =''Ирландия''');
  if CheckListBox2.Checked[31] = True  then SQLQuery2.SQL.Add('or Idstrani =''Исландия''');
  if CheckListBox2.Checked[32] = True  then SQLQuery2.SQL.Add('or Idstrani =''Испания''');
  if CheckListBox2.Checked[33] = True  then SQLQuery2.SQL.Add('or Idstrani =''Италия''');
  if CheckListBox2.Checked[34] = True  then SQLQuery2.SQL.Add('or Idstrani =''Казахстан''');
  if CheckListBox2.Checked[35] = True  then SQLQuery2.SQL.Add('or Idstrani =''Канада''');
  if CheckListBox2.Checked[36] = True  then SQLQuery2.SQL.Add('or Idstrani =''Колумбия''');
  if CheckListBox2.Checked[37] = True  then SQLQuery2.SQL.Add('or Idstrani =''Корея Северная''');
  if CheckListBox2.Checked[38] = True  then SQLQuery2.SQL.Add('or Idstrani =''Корея Южная''');
  if CheckListBox2.Checked[39] = True  then SQLQuery2.SQL.Add('or Idstrani =''Латвия''');
  if CheckListBox2.Checked[40] = True  then SQLQuery2.SQL.Add('or Idstrani =''Литва''');
  if CheckListBox2.Checked[41] = True  then SQLQuery2.SQL.Add('or Idstrani =''Лихтенштейн''');
  if CheckListBox2.Checked[42] = True  then SQLQuery2.SQL.Add('or Idstrani =''Люксембург''');
  if CheckListBox2.Checked[43] = True  then SQLQuery2.SQL.Add('or Idstrani =''Нидерланды''');
  if CheckListBox2.Checked[44] = True  then SQLQuery2.SQL.Add('or Idstrani =''Новая Зеландия''');
  if CheckListBox2.Checked[45] = True  then SQLQuery2.SQL.Add('or Idstrani =''Перу''');
  if CheckListBox2.Checked[46] = True  then SQLQuery2.SQL.Add('or Idstrani =''Россия''');
  if CheckListBox2.Checked[47] = True  then SQLQuery2.SQL.Add('or Idstrani =''СССР''');
  if CheckListBox2.Checked[48] = True  then SQLQuery2.SQL.Add('or Idstrani =''США''');
  if CheckListBox2.Checked[49] = True  then SQLQuery2.SQL.Add('or Idstrani =''Узбекистан''');
  if CheckListBox2.Checked[50] = True  then SQLQuery2.SQL.Add('or Idstrani =''Украина''');
  if CheckListBox2.Checked[51] = True  then SQLQuery2.SQL.Add('or Idstrani =''Финляндия''');
  if CheckListBox2.Checked[52] = True  then SQLQuery2.SQL.Add('or Idstrani =''Франция''');
  if CheckListBox2.Checked[53] = True  then SQLQuery2.SQL.Add('or Idstrani =''Хорватия''');
  if CheckListBox2.Checked[54] = True  then SQLQuery2.SQL.Add('or Idstrani =''Чехия''');
  if CheckListBox2.Checked[55] = True  then SQLQuery2.SQL.Add('or Idstrani =''Швейцария''');
  if CheckListBox2.Checked[56] = True  then SQLQuery2.SQL.Add('or Idstrani =''Швеция''');
  if CheckListBox2.Checked[57] = True  then SQLQuery2.SQL.Add('or Idstrani =''Эстония''');
  if CheckListBox2.Checked[58] = True  then SQLQuery2.SQL.Add('or Idstrani =''Япония''');

SQLQuery2.Open;
SQLQuery2.Active:=True;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
   If (edit2.Text = '') and (edit3.Text = '')then
   else
   If (edit3.Text = '')
   then
   begin
    SQLQuery1.Active:=False;
    SQLQuery1.Close;
    SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Add('SELECT * FROM disk1');
    SQLQuery1.SQL.Add('where Name = '''+ Edit2.Text+'''');
    SQLQuery1.Active:=True;
    end
   else
     If (edit2.Text = '') then
    begin
    strtoint(Edit3.Text);
    SQLQuery1.Active:=False;
    SQLQuery1.Close;
    SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Add('SELECT * FROM disk1');
    SQLQuery1.SQL.Add('where kolvo = '''+ Edit3.Text+'''');
    SQLQuery1.Active:=True;
    end
   else
   begin
   strtoint(Edit3.Text);
   SQLQuery1.Active:=False;
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('SELECT * FROM disk1');
   SQLQuery1.SQL.Add('where Name = '''+ Edit2.Text+''' AND   kolvo = '+ Edit3.Text + '');
   SQLQuery1.Active:=True;
   end;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
SQLQuery3.Active:=False;
SQLQuery3.Close;
SQLQuery3.SQL.Clear;
  SQLQuery3.SQL.Add('SELECT * FROM filmrejis');
  SQLQuery3.SQL.Add('join rejicer On  filmrejis.IDrejis = rejicer.ID');
  SQLQuery3.SQL.Add('join disk1 On  filmrejis.IDfilm = disk1.ID');
  SQLQuery3.SQL.Add('where filmrejis.ID >= 1 ');
  If Edit4.Text = '' then
  else
   SQLQuery3.SQL.Add('and rejicer.name = ''' + Edit4.Text+'''');

  If Edit5.Text = '' then
  else
   SQLQuery3.SQL.Add('and rejicer.familia = ''' + Edit5.Text+'''');
  SQLQuery3.Active:=True;
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
SQLQuery4.Active:=False;
SQLQuery4.Close;
SQLQuery4.SQL.Clear;
SQLQuery4.SQL.Add('SELECT * FROM akterfilm');
SQLQuery4.SQL.Add('join akter on akterfilm.IDaktera =  akter.ID ');
SQLQuery4.SQL.Add('join disk1 on akterfilm.IDfilm =  disk1.ID');
SQLQuery4.SQL.Add('where akterfilm.ID >= 1 ');
  If Edit8.Text = '' then
  else SQLQuery4.SQL.Add('and akter.name = ''' + Edit8.Text+'''');
    If Edit6.Text = '' then
  else SQLQuery4.SQL.Add('and akter.familia = ''' + Edit6.Text+'''');
SQLQuery4.Active:=True;
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
If RadioButton7.Checked = true
then
begin
SQLQuery1.Active:=False;
SQLQuery1.Close;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('SELECT * FROM disk1');
SQLQuery1.Active:=True;
end
else
If RadioButton8.Checked = true
then
begin
     SQLQuery2.Active:=False;
    SQLQuery2.Close;
    SQLQuery2.SQL.Clear;
  SQLQuery2.SQL.Add('SELECT * FROM filmstrana');
  SQLQuery2.SQL.Add('join  disk1  on filmstrana.IDfilma = disk1.ID');
  SQLQuery2.Active:=True;
end
else
If RadioButton9.Checked = true
then
begin
  SQLQuery3.Active:=False;
  SQLQuery3.Close;
  SQLQuery3.SQL.Clear;
  SQLQuery3.SQL.Add('SELECT * FROM filmrejis');
  SQLQuery3.SQL.Add('join rejicer On  filmrejis.IDrejis = rejicer.ID');
  SQLQuery3.SQL.Add('join disk1 On  filmrejis.IDfilm = disk1.ID');
  SQLQuery3.Active:=True;
end
else
If RadioButton10.Checked = true
then
begin
      SQLQuery4.Active:=False;
    SQLQuery4.Close;
    SQLQuery4.SQL.Clear;
    SQLQuery4.SQL.Add(' SELECT * FROM akterfilm');
 SQLQuery4.SQL.Add('join akter on akterfilm.IDaktera =  akter.ID');
 SQLQuery4.SQL.Add('join disk1 on akterfilm.IDfilm =  disk1.ID');
  SQLQuery4.Active:=True;
end
else
If RadioButton11.Checked = true
then
begin
     SQLQuery5.Active:=False;
    SQLQuery5.Close;
    SQLQuery5.SQL.Clear;
 SQLQuery5.SQL.Add('SELECT * FROM filmjanr');
 SQLQuery5.SQL.Add('join disk1 on  disk1.ID = filmjanr.film');
  SQLQuery5.Active:=True;
end
end;

procedure TForm4.Button8Click(Sender: TObject);
begin
if RadioButton7.Checked = true then Button1.Click;
if RadioButton8.Checked = true then Button3.Click;
if RadioButton10.Checked = true then Button6.Click;
if RadioButton11.Checked = true then Button2.Click;
if RadioButton9.Checked = true then  Button5.Click;


end;



procedure TForm4.Bevel1ChangeBounds(Sender: TObject);
begin

end;

procedure TForm4.Button10Click(Sender: TObject);
begin
    if RadioButton1.Checked = true
  then
begin
  edit2.Text:='';
  edit3.Text:='';
end;
    if RadioButton2.Checked = true
  then
  begin
CheckListBox2.Checked[	0	]:=false;
CheckListBox2.Checked[	1	]:=false;
CheckListBox2.Checked[	2	]:=false;
CheckListBox2.Checked[	3	]:=false;
CheckListBox2.Checked[	4	]:=false;
CheckListBox2.Checked[	5	]:=false;
CheckListBox2.Checked[	6	]:=false;
CheckListBox2.Checked[	7	]:=false;
CheckListBox2.Checked[	8	]:=false;
CheckListBox2.Checked[	9	]:=false;
CheckListBox2.Checked[	10	]:=false;
CheckListBox2.Checked[	11	]:=false;
CheckListBox2.Checked[	12	]:=false;
CheckListBox2.Checked[	13	]:=false;
CheckListBox2.Checked[	14	]:=false;
CheckListBox2.Checked[	15	]:=false;
CheckListBox2.Checked[	16	]:=false;
CheckListBox2.Checked[	17	]:=false;
CheckListBox2.Checked[	18	]:=false;
CheckListBox2.Checked[	19	]:=false;
CheckListBox2.Checked[	20	]:=false;
CheckListBox2.Checked[	21	]:=false;
CheckListBox2.Checked[	22	]:=false;
CheckListBox2.Checked[	23	]:=false;
CheckListBox2.Checked[	24	]:=false;
CheckListBox2.Checked[	25	]:=false;
CheckListBox2.Checked[	26	]:=false;
CheckListBox2.Checked[	27	]:=false;
CheckListBox2.Checked[	28	]:=false;
CheckListBox2.Checked[	29	]:=false;
CheckListBox2.Checked[	30	]:=false;
CheckListBox2.Checked[	31	]:=false;
CheckListBox2.Checked[	32	]:=false;
CheckListBox2.Checked[	33	]:=false;
CheckListBox2.Checked[	34	]:=false;
CheckListBox2.Checked[	35	]:=false;
CheckListBox2.Checked[	36	]:=false;
CheckListBox2.Checked[	37	]:=false;
CheckListBox2.Checked[	38	]:=false;
CheckListBox2.Checked[	39	]:=false;
CheckListBox2.Checked[	40	]:=false;
CheckListBox2.Checked[	41	]:=false;
CheckListBox2.Checked[	42	]:=false;
CheckListBox2.Checked[	43	]:=false;
CheckListBox2.Checked[	44	]:=false;
CheckListBox2.Checked[	45	]:=false;
CheckListBox2.Checked[	46	]:=false;
CheckListBox2.Checked[	47	]:=false;
CheckListBox2.Checked[	48	]:=false;
CheckListBox2.Checked[	49	]:=false;
CheckListBox2.Checked[	50	]:=false;
CheckListBox2.Checked[	51	]:=false;
CheckListBox2.Checked[	52	]:=false;
CheckListBox2.Checked[	53	]:=false;
CheckListBox2.Checked[	54	]:=false;
CheckListBox2.Checked[	55	]:=false;
CheckListBox2.Checked[	56	]:=false;
CheckListBox2.Checked[	57	]:=false;
CheckListBox2.Checked[	58	]:=false;
  end;
    if RadioButton3.Checked = true
  then
  begin
  Edit4.Text:='';
  Edit5.Text:='';
  end;
    if RadioButton4.Checked = true
  then
  begin
  Edit8.Text:='';
  Edit6.Text:='';
  end;
    if RadioButton5.Checked = true
  then
  begin
    Edit1.Text:='Год';
    ComboBox1.Text:='-';
     ComboBox2.Text:='-';
      ComboBox3.Text:='-';
  end;
    if RadioButton6.Checked = true
  then
  begin
CheckListBox1.Checked[	0	]:=false;
CheckListBox1.Checked[	1	]:=false;
CheckListBox1.Checked[	2	]:=false;
CheckListBox1.Checked[	3	]:=false;
CheckListBox1.Checked[	4	]:=false;
CheckListBox1.Checked[	5	]:=false;
CheckListBox1.Checked[	6	]:=false;
CheckListBox1.Checked[	7	]:=false;
CheckListBox1.Checked[	8	]:=false;
CheckListBox1.Checked[	9	]:=false;
CheckListBox1.Checked[	10	]:=false;
CheckListBox1.Checked[	11	]:=false;
CheckListBox1.Checked[	12	]:=false;
CheckListBox1.Checked[	13	]:=false;
CheckListBox1.Checked[	14	]:=false;
CheckListBox1.Checked[	15	]:=false;
CheckListBox1.Checked[	16	]:=false;
CheckListBox1.Checked[	17	]:=false;
CheckListBox1.Checked[	18	]:=false;
CheckListBox1.Checked[	19	]:=false;
CheckListBox1.Checked[	20	]:=false;
CheckListBox1.Checked[	21	]:=false;
CheckListBox1.Checked[	22	]:=false;
CheckListBox1.Checked[	23	]:=false;
CheckListBox1.Checked[	24	]:=false;
CheckListBox1.Checked[	25	]:=false;
CheckListBox1.Checked[	26	]:=false;
CheckListBox1.Checked[	27	]:=false;
CheckListBox1.Checked[	28	]:=false;

  end;

end;

procedure TForm4.Button11Click(Sender: TObject);
  var b:integer;   a:string;
begin
if form5.CheckBox1.Checked = true then Button11.Visible:=True
else Button11.Visible:=false;
  b:=DataSource1.DataSet.FieldByName('ID').AsInteger;
  a:='delete from disk1 where ID ='+IntToStr(b);
  SQLQuery6.SQL.Clear;
  SQLQuery6.SQL.Add('delete from akterfilm where IDfilm='+IntToStr(b) +'');
  SQLQuery6.ExecSQL;
  SQLTransaction1.Commit;
  SQLQuery6.SQL.Clear;
  SQLQuery6.SQL.Add('delete from filmjanr where film='+IntToStr(b) +'');
  SQLQuery6.ExecSQL;
  SQLTransaction1.Commit;
  SQLQuery6.SQL.Clear;
  SQLQuery6.SQL.Add('delete from filmrejis where IDfilm='+IntToStr(b) +'');
  SQLQuery6.ExecSQL;
  SQLTransaction1.Commit;
  SQLQuery6.SQL.Clear;
  SQLQuery6.SQL.Add('delete from filmstrana where IDfilma='+IntToStr(b) +'');
  SQLQuery6.ExecSQL;
  SQLTransaction1.Commit;
  SQLQuery6.SQL.Clear;
  SQLQuery6.SQL.Add('delete from klien where namefilm='+IntToStr(b) +'');
  SQLQuery6.ExecSQL;
  SQLTransaction1.Commit;
  SQLQuery6.SQL.Clear;
  SQLQuery6.SQL.Add(a);
  SQLQuery6.ExecSQL;
  SQLTransaction1.Commit;
  MessageDlg('Удаление','Запись удалена', mtCustom,[mbOk],0);
end;


end.

