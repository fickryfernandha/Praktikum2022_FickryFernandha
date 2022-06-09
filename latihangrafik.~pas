unit latihangrafik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, Grids, StdCtrls, Buttons,
  Series;

type
  Tgrafik = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Chart1: TChart;
    BitBtn1: TBitBtn;
    Series1: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  grafik: Tgrafik;

implementation

{$R *.dfm}

procedure Tgrafik.FormCreate(Sender: TObject);
begin
StringGrid1.Cells[0,0]:='JENIS PENYAKIT';
StringGrid1.Cells[0,1]:='COVID 19';
StringGrid1.Cells[0,2]:='FLU BIASA';
StringGrid1.Cells[0,3]:='DEMAM';
StringGrid1.Cells[0,4]:='RINDU';
StringGrid1.Cells[1,0]:='JUMLAH';
Chart1.Title.Text.add('GRAFIK INFORMASI JENIS PENYAKIT');
end;

procedure Tgrafik.Button1Click(Sender: TObject);
begin
StringGrid1.Cells[1,ComboBox1.ItemIndex+1]:= Edit1.Text;
end;

procedure Tgrafik.BitBtn1Click(Sender: TObject);
var i: integer;
begin
for i:=1 to StringGrid1.RowCount-1 do
Chart1.Series[0].Add(StrToFloat(StringGrid1.cells[1,i]),StringGrid1.cells[0,i]);
end;


end.
