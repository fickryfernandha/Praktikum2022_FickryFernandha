program latihan2;

uses
  Forms,
  latihan2kondisional in 'latihan2kondisional.pas' {Form1},
  menulat2 in 'menulat2.pas' {Form2},
  latihan2mandiri in 'latihan2mandiri.pas' {latihanmandiri},
  latihangrafik in 'latihangrafik.pas' {grafik},
  latmangrafik1 in 'latmangrafik1.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  upgradelatihan2 in 'upgradelatihan2.pas' {updatelatihan2},
  dblatihan1 in 'dblatihan1.pas' {Form5},
  formtambahdata in 'formtambahdata.pas' {tambahdata};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tlatihanmandiri, latihanmandiri);
  Application.CreateForm(Tgrafik, grafik);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(Tupdatelatihan2, updatelatihan2);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(Ttambahdata, tambahdata);
  Application.Run;
end.
