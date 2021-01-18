program bataillenavale;

uses crt;

VAR
    tab : array [1..5, 1..5] of char;
    vie : integer;
    b1c1, b1c2, b1c3, b2c1, b2c2, b2c3, b3c1, b3c2, b4c1, b4c2, tirs_rates, tirs_reussis :string;
    tir      :string;


procedure initialisation;

VAR
    i, j : integer;
begin
    for j := 1 to 5 do
    begin
        for i := 1 to 5 do
        begin
            tab [i,j] := 'O';
        end
    end
end;


procedure affich;

VAR
	i, j : integer;

begin
    writeln ('A B C D E ');
    for j := 1 to 5 do
    begin
        writeln (j);
        for i := 1 to 5 do
        begin
            writeln (tab [i,j]);
        end;
        writeln;
    end
end;

procedure fire;
begin
	writeln ('Voici vos tirs rates ' , tirs_rates);
	writeln ('Voici vos tirs reussis ' , tirs_reussis);
	writeln ('Ou voulez-vous tirer ?');
	readln (tir);
	if (tir = b1c1) or  (tir = b1c2) or  (tir = b1c3) or  (tir = b2c1) or  (tir = b2c2) or  (tir = b2c3) or  (tir = b3c1) or  (tir = b3c2) or  (tir = b4c1) or  (tir = b4c2) then
	begin
		writeln ('touche');
		vie := vie - 1;
		tirs_reussis := (tirs_reussis +'_'+ tir);
	end
	else
	begin
		if (tir <> b1c1) and (tir <> b1c2) and (tir <> b1c3) and (tir <> b2c1) and (tir <> b2c2) and (tir <> b2c3) and (tir <> b3c1) and (tir <> b3c2) and (tir <> b4c1) and (tir <> b4c2) then
		begin
			writeln ('rate');
			tirs_rates := (tirs_rates +'_'+ tir);
		end
	end
end;

//Programme**
BEGIN
	vie := vie + 10;
	tirs_rates := (' ');
	tirs_reussis := (' ');

    initialisation;
    affich;

    writeln ('J1 placer la case 1 du bateau 1');
    readln (b1c1);

    writeln ('J1 placer la case 2 du bateau 1');
    readln (b1c2);

    writeln ('J1 placer la case 3 du bateau 1');
    readln (b1c3);

    writeln ('J1 placer la case 1 du bateau 2');
    readln (b2c1);

    writeln ('J1 placer la case 2 du bateau 2');
    readln (b2c2);

    writeln ('J1 placer la case 3 du bateau 2');
    readln (b2c3);

    writeln ('J1 placer la case 1 du bateau 3');
    readln (b3c1);

    writeln ('J1 placer la case 2 du bateau 3');
    readln (b3c2);

    writeln ('J1 placer la case 1 du bateau 4');
    readln (b4c1);

    writeln ('J1 placer la case 2 du bateau 4');
    readln (b4c2);

    while vie > 0 do
    begin
    fire;
    end;
    if vie = 0 then
    begin
    	writeln ('Vous avez gagné');
    end;
    readln;
END.


