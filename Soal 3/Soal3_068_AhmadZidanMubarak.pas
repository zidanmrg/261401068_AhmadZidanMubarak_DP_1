program DeretAngkaFilter;
uses crt;

var
    n, cat, i: integer;

begin
    clrscr;
    
    write('Banyaknya angka: ');
    readln(n);
    write('Pilih kategori deret (1: Ganjil, 2: Genap): ');
    readln(cat);

    i := 0;
    while i < n do
    begin
        inc(i);

        // skips even numbers if user choose odd category and vice versa
        if (cat = 1) and (i mod 2 = 0) then
            continue;
        if (cat = 2) and (i mod 2 <> 0) then
            continue;

        // skips 5 incrementals
        if i mod 5 = 0 then
            continue;

        write(i, ' ');
    end;

    writeln;
    readln;
end.