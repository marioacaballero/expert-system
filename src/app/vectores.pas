
Unit vectores;

Interface

Uses CRT;

Const k = 14;
  sintomas : array [1..k] Of string = ('Tos','Dolor de garganta',
                                       'Estornudos', 'Fatiga','Dolor muscular',
                                       'Congestion nasal','Fiebre',
                                       'Dolor de cabeza','Ojos llorosos',
                                       'Picazon en la nariz','Nauseas',
                                       'Vomitos','Dificultad para respirar',
                  'Sibilancia(sonido silbante y chillon durante la respiracion)'
                                      );

Type 
  T_vector = array [1..k] Of boolean;

Procedure inicializarv (Var v:T_vector);
Procedure consulta_sintomas(Var v:t_vector);

Implementation

Procedure inicializarv (Var v:T_vector);

Var i: 1..k;
Begin
  For i:=1 To k Do
    v[i] := false;
End;
Procedure consulta_sintomas(Var v:t_vector);

Var i: 1..k;
  resp: char;
Begin
  clrscr;
  WRITELN('INGRESE S/N: ');
  WRITELN;
  For i:=1 To k Do
    Begin
      write(sintomas[i], ': ');
      readln (resp);
      If upcase(resp) = 'S' Then v[i] := true;
    End;
End;
End.
