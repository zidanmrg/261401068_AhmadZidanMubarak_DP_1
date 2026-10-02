program rekapNilai;
uses crt;

var
    m, n, i, j: integer;
    nilaiSingle, nilaiSum, avgM: real;
    passedM, failedM: integer;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa: '); readln(m);
    write('Masukkan jumlah tugas: '); readln(n);

    passedM := 0;
    failedM := 0;

    // i = index for students
    // j = index for assignments
    for i := 1 to m do
    begin
        writeln;
        writeln('Mahasiswa ke-', i);
        nilaiSum := 0;
        
        for j := 1 to n do
        begin
            write('Masukkan nilai tugas ke-', j, ' : ');
            readln(nilaiSingle);
            nilaiSum := nilaiSum + nilaiSingle;
        end;

        avgM := nilaiSum / n; // Hitung rata-rata setelah semua tugas selesai diinput
        writeln('Rata-rata Mahasiswa ke-', i, ' : ', avgM:0:2);

        if avgM >= 65 then
        begin
            writeln('Status: LULUS');
            passedM := passedM + 1;
        end
        else
        begin
            writeln('Status: TIDAK LULUS');
            failedM := failedM + 1;
        end;
    end;

    writeln;
    writeln('Total mahasiswa lulus          : ', passedM);
    writeln('Total mahasiswa tidak lulus    : ', failedM);
    readln;

end.