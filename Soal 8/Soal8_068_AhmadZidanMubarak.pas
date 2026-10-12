program hitungGaji;
uses crt;
// Hitung gaji karyawan berdasarkan Golongan ('A'=Rp1.500.000, 'B'=Rp2.000.000, 'C'=Rp2.500.000):
//1. Jam kerja standar = 40 jam/minggu. Kelebihan jam dihitung lembur Rp20.000/jam.
//2. Khusus Golongan 'C', jika total jam kerja > 50 jam, berikan bonus tambahan Rp100.000.
//3. Tampilkan rincian Gaji Pokok, Lembur, Bonus, dan Total Gaji Akhir.

var
    golongan: char;
    jamKerja: integer;
    gajiPokok, lembur, bonus, totalGaji: longint;

begin
    clrscr;
    writeln('Terima gaji');
    write('Masukkan golongan karyawan (A/B/C): ');
    readln(golongan);
    write('Masukkan total jam kerja dalam seminggu: ');
    readln(jamKerja);

    golongan := upcase(golongan);

    case golongan of
        'A': gajiPokok := 1500000;
        'B': gajiPokok := 2000000;
        'C': gajiPokok := 2500000;
    else
        gajiPokok := 0;
    end;

    if jamKerja > 40 then
        lembur := (jamKerja - 40) * 20000
    else
        lembur := 0;

    if (golongan = 'C') and (jamKerja > 50) then
        bonus := 100000
    else
        bonus := 0;

    totalGaji := gajiPokok + lembur + bonus;

    writeln;
    writeln('Gaji Pokok : Rp ', gajiPokok);
    writeln('Lembur     : Rp ', lembur);
    writeln('Bonus      : Rp ', bonus);
    writeln('Total Gaji : Rp ', totalGaji);

    readln;
end.