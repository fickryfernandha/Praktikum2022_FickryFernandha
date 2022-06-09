unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    etambah: TEdit;
    ekurang: TEdit;
    ebagi: TEdit;
    ekali: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
begin
  etambah.Text:=IntToStr(StrToInt(Edit1.text)+strtoint(Edit2.Text));
  ekurang.Text:=IntToStr(StrToInt(Edit1.text)-strtoint(Edit2.Text));
  ebagi.Text:=FloatToStr(StrToFloat(Edit1.text)/StrToFloat(Edit2.Text));
  ekali.Text:=IntToStr(StrToInt(Edit1.text)*strtoint(Edit2.Text));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;

end.
