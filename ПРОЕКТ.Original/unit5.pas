unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql55conn, mysql56conn, sqldb, db, FileUtil, Forms,
  Controls, Graphics, Dialogs, DBGrids, Menus, StdCtrls, unit6;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    CheckBox1: TCheckBox;
    DataSource1: TDataSource;
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
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MySQL56Connection1: TMySQL56Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form5: TForm5;

implementation
uses unit2, unit1, unit3, unit4;

{$R *.lfm}

{ TForm5 }

procedure TForm5.Button1Click(Sender: TObject);
begin
  Form2.close;
  Form6.Show;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm5.Button3Click(Sender: TObject);
var  b:integer;  a:string;
begin
  b:=DataSource1.DataSet.FieldByName('id').AsInteger;
  a:='delete from klien where id='+IntToStr(b);
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add(a);
  SQLQuery1.ExecSQL;
  SQLTransaction1.Commit;
  MessageDlg('Удаление','Запись удалена', mtCustom,[mbOk],0);
end;

procedure TForm5.Button4Click(Sender: TObject);
  var b:integer;   a:string;
begin
  b:=DataSource1.DataSet.FieldByName('id').AsInteger;
  a:='delete from klien where id='+IntToStr(b);
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('Update disk1 SET kolvo =(kolvo+1) Where ID = (Select namefilm from klien Where id = '+IntToStr(b)+')');
  SQLQuery1.ExecSQL;
  SQLTransaction1.Commit;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add(a);
  SQLQuery1.ExecSQL;
  SQLTransaction1.Commit;
  MessageDlg('Удаление','Запись удалена', mtCustom,[mbOk],0);
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
  SQLQuery1.Active:=false;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('Select * from klien');
  SQLQuery1.SQL.Add('Join disk1 ON disk1.ID = klien.namefilm') ;
  SQLQuery1.SQL.Add('Join prodavec ON prodavec.ID = klien.prodavec');
  SQLQuery1.ExecSQL;
  SQLTransaction1.Commit;
  SQLQuery1.Active:=True;
end;

procedure TForm5.Button6Click(Sender: TObject);
begin
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('Select * from klien');
  SQLQuery1.SQL.Add('Join disk1 ON disk1.ID = klien.namefilm') ;
  SQLQuery1.SQL.Add('join prodavec ON prodavec.ID = klien.prodavec');
  SQLQuery1.SQL.Add('Where klien.ID>=1');
  if Edit1.Text = '' then
  else SQLQuery1.SQL.Add('and klien.name = "'+Edit1.Text+'"');
  if Edit2.Text = '' then
  else SQLQuery1.SQL.Add('and klien.familia = "'+Edit2.Text+'"');
  if Edit3.Text = '' then
  else SQLQuery1.SQL.Add('and disk1.name = "'+Edit3.Text+'"');
  if Edit4.Text = '' then
  else SQLQuery1.SQL.Add('and prodavec.FIO = "'+Edit4.Text+'"');
  SQLQuery1.ExecSQL;
  SQLTransaction1.Commit;
  SQLQuery1.Active:=True;
end;

procedure TForm5.Button7Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
end;

procedure TForm5.CheckBox1Change(Sender: TObject);
begin
  if CheckBox1.Checked = True then Form4.Button11.Visible:=True
    else  Form4.Button11.Visible:=false  ;

end;

procedure TForm5.FormCreate(Sender: TObject);
begin

end;

procedure TForm5.MenuItem1Click(Sender: TObject);
begin
  form1.Show;
  Form5.Close;
  Form2.Close;
end;

end.

