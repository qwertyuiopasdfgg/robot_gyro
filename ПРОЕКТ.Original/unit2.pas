unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, unit5;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation
uses unit1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  IF (Edit1.Text = '') then  MessageDlg('Ошибка','Заполните поле "Логин"', mtError, [mbOK],0);
  IF (Edit1.Text = 'admin') and (Edit2.Text = 'admin') then Form5.ShowModal
  else MessageDlg('Ошибка','Неверный логин и/или пароль', mtError, [mbOK],0);

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  form1.Show;
  Form2.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
end;

procedure TForm2.Image1Click(Sender: TObject);
begin

end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
end;

end.

