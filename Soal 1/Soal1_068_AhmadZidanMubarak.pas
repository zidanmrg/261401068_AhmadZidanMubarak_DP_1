program tokoBuku;
uses crt;


var
amount, i : integer;
harga, hargakotor, discamount, total: real;

begin
    clrscr;
    // users determine how much books they bought
    write('Masukkan jumlah buku: ');readln(amount);

    // declare that the price is not defined yet but not non-existent
    hargakotor := 0;

    // repeating the question "how much is this book"
    for i := 1 to amount do
    begin
        write('Masukkan harga buku ke-', i, ' : ');
        readln(harga);
        hargakotor := hargakotor + harga
    end;

    // DISCOUNTS!!!
    if hargakotor < 100000 then
        discamount := 0
    else if (hargakotor >= 100000) and (hargakotor < 500000) then
        discamount := 0.10 * hargakotor
    else
        discamount := 0.20 * hargakotor;

    total := hargakotor - discamount;

    // final
    clrscr;
    writeln('=============PEMBAYARAN=============');
    writeln('');
    writeln('   Subtotal   : Rp', hargakotor:0:0);
    writeln('   Diskon     : Rp', discamount:0:0);
    writeln('   Total      : Rp', total:0:0);
    writeln('');
    writeln('====================================');
    readln();

end.