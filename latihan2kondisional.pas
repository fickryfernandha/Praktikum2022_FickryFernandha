unit latihan2kondisional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    enilai1: TEdit;
    enilai2: TEdit;
    enilai3: TEdit;
    ebobot1: TEdit;
    ebobot2: TEdit;
    ebobot3: TEdit;
    etotal: TEdit;
    egrade: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  nil1, nil2, nil3, hasil : real;
  b1, b2, b3 : real;
  grade : string;
begin
  nil1 := StrToFloat(enilai1.Text);
  nil2 := StrToFloat(enilai2.Text);
  nil3 := StrToFloat(enilai3.Text);

  b1 := StrToFloat(ebobot1.Text)/100;
  b2 := StrToFloat(ebobot2.Text)/100;
  b3 := StrToFloat(ebobot3.Text)/100;

  hasil := (nil1*b1) + (nil2*b2) + (nil3*b3);

  if (hasil >= 80) then
grade:='A'
else
if (hasil >= 70) then
grade :='B'
else
if (hasil >= 60) then
grade := 'C'
else
if (hasil >= 50) then
grade :='D'
else
grade :='E';

etotal.Text := floattostr(hasil);
egrade.Text := grade;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 enilai1.Text := '0';
 enilai2.Text := '0';
 enilai3.Text := '0';
 etotal.Text := '';
 egrade.Text := '';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
