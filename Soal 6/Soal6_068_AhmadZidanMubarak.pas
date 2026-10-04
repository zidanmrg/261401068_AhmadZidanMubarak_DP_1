program PenentuanNilaiAkhir;
uses crt;

var
    tugas, uts, uas, kehadiran, nilaiAkhir: real;
    indeks: char;
    status: string;

begin
    clrscr;
    write('Nilai Tugas (0-100) : '); readln(tugas);
    write('Nilai UTS (0-100)   : '); readln(uts);
    write('Nilai UAS (0-100)   : '); readln(uas);
    write('Kehadiran (%)       : '); readln(kehadiran);

    nilaiAkhir := (0.30 * tugas) + (0.30 * uts) + (0.40 * uas);

    if (nilaiAkhir >= 60) and (kehadiran >= 80) then
        status := 'LULUS'
    else
        status := 'TIDAK LULUS';

    if nilaiAkhir >= 85 then
        indeks := 'A'
    else if nilaiAkhir >= 75 then
        indeks := 'B'
    else if nilaiAkhir >= 60 then
        indeks := 'C'
    else if nilaiAkhir >= 50 then
        indeks := 'D'
    else
        indeks := 'E';

    writeln;
    writeln('Nilai Akhir : ', nilaiAkhir:0:2);
    writeln('Indeks Huruf: ', indeks);
    writeln('Status      : ', status);
    
    readln;
end.