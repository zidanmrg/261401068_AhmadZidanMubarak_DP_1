program simpleCalc;
uses crt;

var
    num1, num2: integer;
    operasi: char;
    mauKeluar: string;
    keluar: boolean;
    result: real;

// use case-of and repeat-untils

begin
    repeat
    clrscr;
    writeln('Calculator Dua Angka');
    writeln('Pilih operasi');
    writeln('1. Penjumlahan (+)');
    writeln('2. Pengurangan (-)');
    writeln('3. Perkalian (*)');
    writeln('4. Pembagian (/)');
    writeln('5. Pembagian Div dan Mod');
    write('Masukkan pilihan Anda: ');
    readln(operasi);

    write('Masukkan angka pertama: ');
    readln(num1);
    write('Masukkan angka kedua: ');
    readln(num2);


    case operasi of
        '1': begin
            result := num1 + num2;
            writeln('Hasil: ', result:0:2);
        end;
        '2': begin
            result := num1 - num2;
            writeln('Hasil: ', result:0:2);
        end;
        '3': begin
            result := num1 * num2;
            writeln('Hasil: ', result:0:2);
        end;
        '4': begin
            if num2 <> 0 then
            begin
                result := num1 / num2;
                writeln('Hasil: ', result:0:2);
            end
            else
                writeln('Error: Pembagian oleh nol tidak diperbolehkan.');
        end;
        '5': begin
            if num2 <> 0 then
            begin
                writeln('Hasil Div: ', num1 div num2);
                writeln('Hasil Mod: ', num1 mod num2);
            end
            else
                writeln('Error: Pembagian oleh nol tidak diperbolehkan.');
        end;
    else
        writeln('Pilihan tidak valid.');
    end;

    writeln;
    writeln('Apakah Anda ingin melakukan operasi lain? (y/n)');
    readln(mauKeluar);

    if (mauKeluar = 'n') or (mauKeluar = 'N') then
        keluar := true;
    
    until keluar = true;
    clrscr;
    writeln('Program selesai.');
    writeln('Terima kasih.');
    readln;

end.

