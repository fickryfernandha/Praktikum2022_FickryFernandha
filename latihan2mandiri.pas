unit latihan2mandiri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tlatihanmandiri = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ekehad: TEdit;
    etug: TEdit;
    euts: TEdit;
    ebkehad: TEdit;
    ebtug: TEdit;
    ebuts: TEdit;
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
    eharian: TEdit;
    euas: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    ebharian: TEdit;
    ebuas: TEdit;
    eket: TEdit;
    KET: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  latihanmandiri: Tlatihanmandiri;

implementation

{$R *.dfm}

procedure Tlatihanmandiri.Button1Click(Sender: TObject);
var
  nil1, nil2, nil3, nil4, nil5, hasil : real;
  b1, b2, b3, b4, b5 : real;
  grade, ket : string;
begin
  nil1 := StrToFloat(ekehad.Text);
  nil2 := StrToFloat(etug.Text);
  nil3 := StrToFloat(euts.Text);
  nil4 := StrToFloat(eharian.Text);
  nil5 := StrToFloat(euas.Text);


  b1 := StrToFloat(ebkehad.Text)/100;
  b2 := StrToFloat(ebtug.Text)/100;
  b3 := StrToFloat(ebuts.Text)/100;
  b4 := StrToFloat(ebharian.Text)/100;
  b5 := StrToFloat(ebuas.Text)/100;


  hasil := (nil1*b1) + (nil2*b2) + (nil3*b3)+ (nil4*b4) + (nil5*b5) ;

  if (hasil >= 80) then
  begin
  grade:='A';
  ket := 'LULUS';
  end
  else
  if (hasil >= 70) then
  begin
  grade :='B' ;
  ket := 'LULUS';
  end
  else
  if (hasil >= 60) then
  begin
  grade := 'C';
  ket := 'LULUS';
  end
  else
  if (hasil >= 50) then
  begin
  grade :='D';
  ket := 'TIDAK LULUS';
  end
  else
  begin
  grade :='E';
  ket := 'TIDAK LULUS';
  end;

  etotal.Text := floattostr(hasil);
  egrade.Text := grade;
  eket.Text := ket;
end;

procedure Tlatihanmandiri.Button2Click(Sender: TObject);
begin
ekehad.Text := '0';
etug.Text := '0';
euts.Text := '0';
eharian.Text := '0';
euas.Text := '0';
etotal.Text := '';
egrade.Text := '';
eket.Text := '';
end;

procedure Tlatihanmandiri.Button3Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
