
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
  posiblesEnf = 14;

Type 
  T_vector = array [1..k] Of boolean;
  illnessData = Record
    name: byte;
    percentage: real;
  End;
  illnessArray = array [1..posiblesEnf] Of illnessData;

Procedure inicializarv (Var v:T_vector);
Procedure inicializarvPosibles (Var v:illnessArray);
Procedure consulta_sintomas(Var v:t_vector);

Implementation

Procedure inicializarv (Var v:T_vector);

Var i: 1..k;
Begin
  For i:=1 To k Do
    v[i] := false;
End;
Procedure inicializarvPosibles (Var v:illnessArray);

Var i: 1..posiblesEnf;
Begin
  For i:=1 To posiblesEnf Do
    Begin
      v[i].name := 0;
      v[i].percentage := 0;
    End;
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
