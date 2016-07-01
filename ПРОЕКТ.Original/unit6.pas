unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, mysql56conn, FileUtil, Forms, Controls, Graphics,
  Dialogs, Menus, StdCtrls, ComCtrls, DbCtrls;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label1: TLabel;
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
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form6: TForm6;

implementation
uses unit5;

{$R *.lfm}

{ TForm6 }

procedure TForm6.MenuItem1Click(Sender: TObject);
begin
  Form6.Close;
  Form5.Show;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
//SQLQuery1.Active:=false;
//SQLQuery1.Close;
if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '')
then  MessageDLG('Заполните все поля', mtError, [mbOk],0)
else
 begin
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('INSERT INTO disk1 values (NULL ,"'+Edit1.Text+'",'+Edit2.Text+','+Edit3.text+');');
SQLQuery1.ExecSQL;
SQLTransaction1.Commit;
PageControl1.ActivePage:=TabSheet2;
MessageDLG('Запись добавлена', mtInformation, [mbOk],0);
//SQLQuery1.Active:=True;
end;

end;

procedure TForm6.Button2Click(Sender: TObject);
begin
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('Insert into procat.filmjanr (film, janr) values ((SELECT MAX(ID) FROM disk1),"'+ComboBox1.Text+'");');
SQLQuery1.ExecSQL;
SQLTransaction1.Commit;
MessageDLG('Запись добавлена', mtInformation, [mbOk],0);
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  PageControl1.ActivePage:=TabSheet3;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
  PageControl1.ActivePage:=TabSheet4;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('Insert into procat.filmstrana (IDfilma, Idstrani) values ((SELECT MAX(ID) FROM disk1),"'+ComboBox2.Text+'");');
SQLQuery1.ExecSQL;
SQLTransaction1.Commit;
MessageDLG('Запись добавлена', mtInformation, [mbOk],0);
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
 SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('Insert into procat.rejicer (name, familia) values ("'+Edit4.Text+'","'+Edit5.Text+'");');
SQLQuery1.ExecSQL;
SQLTransaction1.Commit;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('Insert into procat.filmrejis (IDrejis, IDfilm) values ((SELECT MAX(ID) FROM rejicer), (SELECT MAX(ID) FROM disk1));');
SQLQuery1.ExecSQL;
SQLTransaction1.Commit;
MessageDLG('Запись добавлена', mtInformation, [mbOk],0);
end;

procedure TForm6.Button7Click(Sender: TObject);
begin
  PageControl1.ActivePage:=TabSheet5;
end;

procedure TForm6.Button8Click(Sender: TObject);
begin
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('Insert into procat.akter (name, familia) values ("'+Edit6.Text+'","'+Edit7.Text+'");');
SQLQuery1.ExecSQL;
SQLTransaction1.Commit;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('Insert into procat.akterfilm (IDaktera, IDfilm) values ((SELECT MAX(ID) FROM procat.akter), (SELECT MAX(ID) FROM procat.disk1));');
SQLQuery1.ExecSQL;
SQLTransaction1.Commit;
MessageDLG('Запись добавлена', mtInformation, [mbOk],0);
end;

procedure TForm6.Button9Click(Sender: TObject);
begin
  Form6.Close;
end;

procedure TForm6.Edit1Change(Sender: TObject);
begin

end;

end.

