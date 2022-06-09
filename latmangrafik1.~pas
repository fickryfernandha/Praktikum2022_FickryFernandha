unit latmangrafik1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, TeeProcs, TeEngine, Chart, Buttons, StdCtrls,
  Series;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    BitBtn1: TBitBtn;
    Chart1: TChart;
    StringGrid1: TStringGrid;
    Series2: TPieSeries;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormShow(Sender: TObject);
begin
StringGrid1.RowCount:=1;
StringGrid1.ColCount:=4;
StringGrid1.Cells[0,0]:='NO';
StringGrid1.Cells[1,0]:='NIM';
StringGrid1.Cells[2,0]:='NAMA MAHASISWA';
StringGrid1.Cells[3,0]:='TAHUN ANGKATAN';

StringGrid1.ColWidths[0]:=20;
StringGrid1.ColWidths[1]:=70;
StringGrid1.ColWidths[2]:=170;
StringGrid1.ColWidths[3]:=100;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
StringGrid1.RowCount := StringGrid1.RowCount+1;
StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount -
1);
StringGrid1.Cells[1,StringGrid1.RowCount -1] := Edit1.Text;
StringGrid1.Cells[2,StringGrid1.RowCount -1] := Edit2.Text;
StringGrid1.Cells[3,StringGrid1.RowCount -1] := ComboBox1.Text;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
var i:Integer;
begin
for i:=1 to StringGrid1.RowCount-1 do
begin
Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[0,i]);
end;
end;

end.
