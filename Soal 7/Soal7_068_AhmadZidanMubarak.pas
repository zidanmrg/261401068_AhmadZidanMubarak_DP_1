program tarifParkir;
uses crt;

// use case-of
// use letter codes to diffrentiate between vehicle types
// M = Mobil; first hour 5k, 3k per hour after
// K = Motor; first hour 2k, 1k per hour after
// B = Bus; first hour 10k, 5k per hour after
// if parking time > 10 hours, flat fee 30k for car, 10k for bike, 50k for bus

var
tipeKendaraan: char;
lamaParkir: integer;

begin
    clrscr;
    writeln('Secure Parking System');
    write('Masukkan tipe kendaraan (M/K/B): ');
    readln(tipeKendaraan);
    write('Masukkan lama parkir (jam): ');
    readln(lamaParkir);

    case tipeKendaraan of
    'M', 'm': 
    begin
        if lamaParkir > 10 then
        writeln('Biaya parkir: Rp 30.000')
        else if lamaParkir = 1 then
            writeln('Biaya parkir: Rp 5.000')
        else
            writeln('Biaya parkir: Rp ', 5000 + (lamaParkir - 1) * 3000);
        end;
    'K', 'k':
    begin
        if lamaParkir > 10 then
            writeln('Biaya parkir: Rp 10.000')
        else if lamaParkir = 1 then
            writeln('Biaya parkir: Rp 2.000')
        else
            writeln('Biaya parkir: Rp ', 2000 + (lamaParkir - 1) * 1000);
        end;
    'B', 'b':
    begin
        if lamaParkir > 10 then
            writeln('Biaya parkir: Rp 50.000')
        else if lamaParkir = 1 then
            writeln('Biaya parkir: Rp 10.000')
        else
            writeln('Biaya parkir: Rp ', 10000 + (lamaParkir - 1) * 5000);
        end;
    else
        writeln('Tipe kendaraan tidak valid.');
    end;
end.