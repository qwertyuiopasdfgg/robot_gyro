unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, sqldb, mysql56conn, FileUtil, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, DbCtrls, Menus, StdCtrls, DBGrids, ExtDlgs;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MySQL56Connection2: TMySQL56Connection;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    SQLQuery2: TSQLQuery;
    SQLTransaction2: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2ChangeBounds(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form3: TForm3;

implementation
uses unit5;

{$R *.lfm}

{ TForm3 }

procedure TForm3.FormResize(Sender: TObject);
begin

end;

procedure TForm3.ComboBox2Change(Sender: TObject);
begin
end;

procedure TForm3.ComboBox3Change(Sender: TObject);
begin
end;

procedure TForm3.Edit4Change(Sender: TObject);
begin
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  if (Edit1.text = '') or (Edit2.text = '') or (Edit3.text = '')   then MessageDLG('Заполните все поля!!!', mtError, [mbOk],0)
  Else
  begin
Edit3.Text:=Combobox3.text+'-' +Combobox2.text +'-'+Combobox1.text;
SQLQuery2.SQL.Clear;
SQLQuery2.SQL.Add('INSERT INTO klien VALUES(NULL,"'+Edit1.Text+'","'+Edit2.Text+'",(Select ID from disk1 where Name = "'+ Edit4.Text +'" and god ='+ComboBox5.Text+'),(Select ID from prodavec where FIO = "'+ComboBox4.Text+'"),"'+Edit3.Text+'","'+Edit3.Text+'", 150 ,500)');
SQLQuery2.ExecSQL;
SQLTransaction2.Commit;
SQLQuery2.SQL.Clear;
SQLQuery2.SQL.Add ('Update klien SET datasdachi = (SELECT DATE_ADD("'+Edit3.Text+'", INTERVAL 7 DAY)) Where datavzyatia = datasdachi');
SQLQuery2.ExecSQL;
SQLTransaction2.Commit;
SQLQuery2.SQL.Clear;
SQLQuery2.SQL.Add ('Update disk1 SET kolvo = (kolvo-1)  Where Name = "'+Edit4.Text+'"');
SQLQuery2.ExecSQL;
SQLTransaction2.Commit;
MessageDLG('Запись добавлена', mtInformation, [mbOk],0);
end;
end;

procedure TForm3.Button2ChangeBounds(Sender: TObject);
begin

end;

procedure TForm3.Button2Click(Sender: TObject);
begin

end;

procedure TForm3.Button3Click(Sender: TObject);
begin
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
end;

procedure TForm3.MenuItem1Click(Sender: TObject);
begin
  Form3.Close;
  Form5.Show;
end;

procedure TForm3.RadioButton1Change(Sender: TObject);
begin
  if RadioButton1.Checked = True
  then
  begin
  RadioButton2.Checked:= False;
  SQLQuery2.Active:=false;
  SQLQuery2.Close;
  SQLQuery2.SQL.Clear;
 SQLQuery2.SQL.Add('Select name from disk1');
 SQLQuery2.ExecSQL;
 SQLTransaction2.Commit;
  SQLQuery2.Active:=True;
   end;
end;

procedure TForm3.RadioButton2Change(Sender: TObject);
begin
  if RadioButton2.Checked = True
  then
  begin
  RadioButton1.Checked:= False;
  SQLQuery2.Active:=false;
   SQLQuery2.Close;
   SQLQuery2.SQL.Clear;
 SQLQuery2.SQL.Add('Select FIO from prodavec');
 SQLQuery2.ExecSQL;
 SQLTransaction2.Commit;
  SQLQuery2.Active:=True;
end;
end;
end.

