unit formtambahdata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, ExtCtrls, DB, ADODB;

type
  Ttambahdata = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label9: TLabel;
    procedure bersih;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure awalan;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure sisip;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tambahdata: Ttambahdata;
  upd : String;

implementation

uses dblatihan1;


{$R *.dfm}

procedure Ttambahdata.bersih;
begin
Edit1.Text:='00:00';
Edit2.Text:='00:00';
ComboBox1.Text:='-- PILIH HARI PELAKSANAAN --';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';

Edit1.Enabled:=true;
Edit2.Enabled:=true;
ComboBox1.Enabled:=true;
DateTimePicker1.Enabled:=true;
Edit3.Enabled:=true;
Edit4.Enabled:=true;
Edit5.Enabled:=true;
Edit6.Enabled:=true;
BitBtn1.Enabled:=true;
BitBtn2.Enabled:=true;
BitBtn3.Enabled:=true;
BitBtn5.Enabled:=false;
BitBtn4.Enabled:=true;

Form5.ADOQuery1.SQL.Clear;
Form5.ADOQuery1.SQL.Add('select * from jadwal_tabel');
Form5.ADOQuery1.Open;

DBGrid1.Columns[0].Width:=20;
DBGrid1.Columns[1].Width:=70;
DBGrid1.Columns[2].Width:=70;
DBGrid1.Columns[3].Width:=100;
DBGrid1.Columns[4].Width:=90;
DBGrid1.Columns[5].Width:=60;
DBGrid1.Columns[6].Width:=130;
DBGrid1.Columns[7].Width:=80;
DBGrid1.Columns[8].Width:=50;

end;

procedure Ttambahdata.BitBtn1Click(Sender: TObject);
var a : Integer;
begin
if (Edit1.Text='') or (Edit1.Text='00:00') or (Edit2.Text='') or (Edit2.Text='00:00') then
begin
  ShowMessage('DATA BELUM DIISI DENGAN BENAR!!');
end else
if (ComboBox1.Text='') or (ComboBox1.Text='-- PILIH HARI PELAKSANAAN --') then
begin
  ShowMessage('DATA BELUM DIISI DENGAN BENAR');
end else
if (Edit3.Text='') then
begin
  ShowMessage('DATA RUANGAN BELUM DIISI DENGAN BENAR!!');
end else
if (Edit4.Text='') then
begin
  ShowMessage('DATA MATAKULIAH BELUM DIISI DENGAN BENAR!!');
end else
if (Edit5.Text='') then
begin
  ShowMessage('DATA KELAS BELUM DIISI DENGAN BENAR!!');
end else
if (Edit6.Text='') then
begin
  ShowMessage('DATA  KEHADIRAN BELUM DIISI DENGAN BENAR!!');
end else
if (Form5.ADOQuery1.Locate('hari',ComboBox1.Text,[])) AND (Form5.ADOQuery1.Locate('jam_mulai',Edit1.Text,[])) then
begin
  ShowMessage('DATA SUDAH DI SIMPAN DI SISTEM!!');
  Edit1.SetFocus;
end else
begin
a:= Form5.ADOQuery1.RecordCount+1;
with Form5.ADOQuery1 do
begin
  SQL.Clear;
  SQL.Add('insert into jadwal_tabel valueS("'+IntToStr(a)+'","'+Edit1.Text+'","'+Edit2.Text+'","'+ComboBox1.Text+'","'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'")');
  ExecSQL;
  bersih;
  ShowMessage('DATA BERHASIL DI SIMPAN');
  awalan;
  sisip;
end;
end;
end;

procedure Ttambahdata.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Enabled:=true;
Edit2.Enabled:=true;
ComboBox1.Enabled:=true;
DateTimePicker1.Enabled:=true;
Edit3.Enabled:=true;
Edit4.Enabled:=true;
Edit5.Enabled:=true;
Edit6.Enabled:=true;
BitBtn1.Enabled:=false;
BitBtn2.Enabled:=true;
BitBtn3.Enabled:=true;
BitBtn5.Enabled:=false;
BitBtn4.Enabled:=true;
try
  upd:= Form5.ADOQuery1.Fields[0].AsString;
  Edit1.Text:= Form5.ADOQuery1.Fields[1].AsString;
  Edit2.Text:= Form5.ADOQuery1.Fields[2].AsString;
  ComboBox1.Text:= Form5.ADOQuery1.Fields[3].AsString;
  DateTimePicker1.Date:=Form5.ADOQuery1.Fields[4].AsDateTime;
  Edit3.Text:= Form5.ADOQuery1.Fields[5].AsString;
  Edit4.Text:= Form5.ADOQuery1.Fields[6].AsString;
  Edit5.Text:= Form5.ADOQuery1.Fields[7].AsString;
  Edit6.Text:= Form5.ADOQuery1.Fields[8].AsString;
Except
end;

end;

procedure Ttambahdata.FormShow(Sender: TObject);
begin
Edit1.Enabled:=false;
Edit2.Enabled:=false;
ComboBox1.Enabled:=false;
DateTimePicker1.Enabled:=false;
Edit3.Enabled:=false;
Edit4.Enabled:=false;
Edit5.Enabled:=false;
Edit6.Enabled:=false;
BitBtn1.Enabled:=false;
BitBtn2.Enabled:=false;
BitBtn3.Enabled:=false;
BitBtn4.Enabled:=true;
BitBtn5.Enabled:=true;

Form5.ADOQuery1.SQL.Clear;
Form5.ADOQuery1.SQL.Add('select * from jadwal_tabel');
Form5.ADOQuery1.Open;

DBGrid1.Columns[0].Width:=20;
DBGrid1.Columns[1].Width:=70;
DBGrid1.Columns[2].Width:=70;
DBGrid1.Columns[3].Width:=100;
DBGrid1.Columns[4].Width:=90;
DBGrid1.Columns[5].Width:=60;
DBGrid1.Columns[6].Width:=130;
DBGrid1.Columns[7].Width:=80;
DBGrid1.Columns[8].Width:=50;
end;

procedure Ttambahdata.BitBtn2Click(Sender: TObject);
begin
if (Edit1.Text='') or (Edit1.Text='00:00') or (Edit2.Text='') or (Edit2.Text='00:00') then
begin
  ShowMessage('DATA BELUM DIISI DENGAN BENAR!!');
end else
if (ComboBox1.Text='') or (ComboBox1.Text='-- PILIH HARI PELAKSANAAN --') then
begin
  ShowMessage('DATA BELUM DIISI DENGAN BENAR');
end else
if (Edit3.Text='') then
begin
  ShowMessage('DATA RUANGAN BELUM DIISI DENGAN BENAR!!');
end else
if (Edit4.Text='') then
begin
  ShowMessage('DATA MATAKULIAH BELUM DIISI DENGAN BENAR!!');
end else
if (Edit5.Text='') then
begin
  ShowMessage('DATA KELAS BELUM DIISI DENGAN BENAR!!');
end else
if (Edit6.Text='') then
begin
  ShowMessage('DATA  KEHADIRAN BELUM DIISI DENGAN BENAR!!');
end else
if (Edit1.Text= Form5.ADOQuery1.Fields[1].AsString) and (ComboBox1.Text= Form5.ADOQuery1.Fields[3].AsString) then
begin
  ShowMessage('DATA TIDAK ADA PERUBAHAN!!');
end else
begin
 with Form5.ADOQuery1 do
begin
  SQL.Clear;
  SQL.Add('update jadwal_tabel set jam_mulai="'+Edit1.Text+'",jam_akhir="'+Edit2.Text+'",hari="'+ComboBox1.Text+'",ruang="'+Edit3.Text+'",matkul="'+Edit4.Text+'",kelas="'+Edit5.Text+'" where id="'+upd+'"');
  ExecSQL;
  bersih;
  ShowMessage('DATA BERHASIL DI UBAH');
  awalan;
  sisip;
end;
end;
end;

procedure Ttambahdata.BitBtn3Click(Sender: TObject);
begin
if (Edit1.Text='') or (Edit1.Text='00:00') or (Edit2.Text='') or (Edit2.Text='00:00') then
begin
  ShowMessage('DATA BELUM DIISI DENGAN BENAR!!');
end else
if (ComboBox1.Text='') or (ComboBox1.Text='-- PILIH HARI PELAKSANAAN --') then
begin
  ShowMessage('DATA BELUM DIISI DENGAN BENAR');
end else
if (Edit3.Text='') then
begin
  ShowMessage('DATA RUANGAN BELUM DIISI DENGAN BENAR!!');
end else
if (Edit4.Text='') then
begin
  ShowMessage('DATA MATAKULIAH BELUM DIISI DENGAN BENAR!!');
end else
if (Edit5.Text='') then
begin
  ShowMessage('DATA KELAS BELUM DIISI DENGAN BENAR!!');
end else
if (Edit6.Text='') then
begin
  ShowMessage('DATA  KEHADIRAN BELUM DIISI DENGAN BENAR!!');
end else
begin
  if MessageDlg('APAKAH ANDA YAKIN UNTUK MENGHAPUS DATA??',mtWarning,[mbYes,mbNo],0)=mryes then
  begin
  with Form5.ADOQuery1 do
begin
  SQL.Clear;
  SQL.Add('delete from jadwal_tabel where id="'+upd+'"');
  ExecSQL;
  bersih;
  ShowMessage('DATA BERHASIL DI HAPUS');
  awalan;
  sisip;
end;
end else
begin
ShowMessage('DATA BATAL DI HAPUS');
awalan;
sisip;
end;
end;
end;

procedure Ttambahdata.awalan;
begin
DBGrid1.Columns[0].Width:=20;
DBGrid1.Columns[1].Width:=70;
DBGrid1.Columns[2].Width:=70;
DBGrid1.Columns[3].Width:=100;
DBGrid1.Columns[4].Width:=90;
DBGrid1.Columns[5].Width:=60;
DBGrid1.Columns[6].Width:=130;
DBGrid1.Columns[7].Width:=80;
DBGrid1.Columns[8].Width:=50;
end;

procedure Ttambahdata.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Ttambahdata.BitBtn5Click(Sender: TObject);
begin
Edit1.Enabled:=true;
Edit2.Enabled:=true;
ComboBox1.Enabled:=true;
DateTimePicker1.Enabled:=true;
Edit3.Enabled:=true;
Edit4.Enabled:=true;
Edit5.Enabled:=true;
Edit6.Enabled:=true;
BitBtn1.Enabled:=true;
BitBtn2.Enabled:=false;
BitBtn3.Enabled:=false;
BitBtn5.Enabled:=false;
BitBtn4.Enabled:=true;
end;

procedure Ttambahdata.sisip;
begin
Edit1.Enabled:=false;
Edit2.Enabled:=false;
ComboBox1.Enabled:=false;
DateTimePicker1.Enabled:=false;
Edit3.Enabled:=false;
Edit4.Enabled:=false;
Edit5.Enabled:=false;
Edit6.Enabled:=false;
BitBtn1.Enabled:=false;
BitBtn2.Enabled:=false;
BitBtn3.Enabled:=false;
BitBtn4.Enabled:=true;
BitBtn5.Enabled:=true;
end;

end.
