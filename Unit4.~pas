unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, TeeProcs, TeEngine, Chart, Buttons,
  Series;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    Chart1: TChart;
    Button1: TButton;
    StringGrid1: TStringGrid;
    ComboBox2: TComboBox;
    Series1: TPieSeries;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormShow(Sender: TObject);
begin
StringGrid1.RowCount:=1;
StringGrid1.ColCount:=4;
StringGrid1.Cells[0,0]:='NO';
StringGrid1.Cells[1,0]:='JUMLAH TERDAFTAR';
StringGrid1.Cells[2,0]:='FAKULTAS';
StringGrid1.Cells[3,0]:='TAHUN ANGKATAN';
StringGrid1.ColWidths[0]:=20;
StringGrid1.ColWidths[1]:=70;
StringGrid1.ColWidths[2]:=170;
StringGrid1.ColWidths[3]:=100;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
StringGrid1.RowCount := StringGrid1.RowCount+1;
StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount -
1);
StringGrid1.Cells[1,StringGrid1.RowCount -1] := Edit2.Text;
StringGrid1.Cells[2,StringGrid1.RowCount -1] := ComboBox2.Text;
StringGrid1.Cells[3,StringGrid1.RowCount -1] := ComboBox1.Text;
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
var i:Integer;
begin
for i:=1 to StringGrid1.RowCount-1 do
begin
Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[0,i]);
end;
end;

end.
