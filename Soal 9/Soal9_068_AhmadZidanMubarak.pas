program JumlahHariDalamBulan;
uses crt;

// Tentukan jumlah hari dalam suatu bulan pada tahun tertentu:
// 1. Minta input tahun dan nomor bulan (1-12).
// 2. Cek Tahun Kabisat (habis dibagi 400 ATAU habis dibagi 4 tetapi tidak habis dibagi 100 menggunakan operator mod).
// 3. Tentukan jumlah hari: Bulan 1,3,5,7,8,10,12 = 31 hari; Bulan 4,6,9,11 = 30 hari; Bulan 2 = 29 hari (Kabisat) / 28 hari (Bukan Kabisat).

var
    tahun, bulan, jumlahHari: integer;
    kabisat: boolean;

begin
    clrscr;
    writeln('Jumlah Hari Dalam Bulan');
    write('Masukkan tahun: ');
    readln(tahun);
    write('Masukkan nomor bulan (1-12): ');
    readln(bulan);
    writeln;

    if (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then
        kabisat := true
    else
        kabisat := false;

    case bulan of
        1, 3, 5, 7, 8, 10, 12: jumlahHari := 31;
        4, 6, 9, 11: jumlahHari := 30;
        2: if kabisat = true then
                jumlahHari := 29
            else
                jumlahHari := 28;
    end;

    writeln('Jumlah hari dalam bulan ', bulan, ' tahun ', tahun, ' adalah ', jumlahHari, ' hari.');
    readln;
end.
