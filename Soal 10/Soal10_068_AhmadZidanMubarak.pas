program namaHari;

//Buatlah program menampilkan nama hari
//Contoh:
//Input: 1
//Output: “Hari Senin”

uses crt;
var
    hari, sisa: integer;
begin
    clrscr;
    writeln('Program Menampilkan Nama Hari');
    write('Masukkan nomor hari: ');
    readln(hari);
    writeln;

    sisa := hari mod 7;

    case sisa of
        1: writeln('Hari Senin');
        2: writeln('Hari Selasa');
        3: writeln('Hari Rabu');
        4: writeln('Hari Kamis');
        5: writeln('Hari Jumat');
        6: writeln('Hari Sabtu');
        0: writeln('Hari Minggu');
    end;

    readln;
end.