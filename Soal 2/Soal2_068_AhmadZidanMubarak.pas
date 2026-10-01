program login;
uses crt;

var
  username, password: string;
  attempts: integer;
  dummy_user, dummy_pass: string;

// dummy password


begin
    clrscr;
    attempts := 0;
    dummy_user := 'John';
    dummy_pass := 'amazing420';

    for attempts := 1 to 3 do
    begin
        write('Masukkan username: ');
        readln(username);
        write('Masukkan password: ');
        readln(password);

        if (username = dummy_user) and (password = dummy_pass) then
        begin
            writeln('Login sukses. Selamat datang, ', username, '.');
            break;
        end;
        clrscr;
        writeln('Login dan password salah.');
        if attempts = 3 then
        begin
            writeln('Akses ditolak. Akun terkunci.');
            readln();
            halt;
        end;
    end;

end.