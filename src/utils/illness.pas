
Unit illness;

Interface

{$unitPath ../app/}
{$unitPath ./}

Uses 
symptoms, vectores;

Procedure POSIBLES_ENFERMEDADES(m:T_matriz;v:T_vector);
Function timer(text: String): string;

Implementation

Uses CRT;

Const 
  diagnostico: array [1..g] Of string = ('Resfriado comun', 'Gripe',
                                         'Alergia', 'Migraña',
                                'Enfermedad pulmonar obstructiva crónica(EPOC)'
                                         ,
                                         'Bronquitis aguda', 'Rinitis alérgica'
                                         , 'Virus sincitial respiratorio(VSR)',
                                         'Sinusitis',  'Cefalea tensional',
                                         'Gastroenteritis',
                                         'Enfermedad pulmonar intersticial',
                                         'Intoxicación alimentaria',
                                         'Embolia pulmonar','Neumonía');

Function timer(text: String): string;

Var i: byte;
Begin
  clrscr;
  textcolor(green);
  delay(500);
  write(text);
  For i:= 1 To 10 Do
    Begin
      delay(500);
      write('......');
    End;
  writeln('');
End;

Procedure POSIBLES_ENFERMEDADES(m:T_matriz;v:T_vector);

Var 
  i, j: byte;
  flag1, flag2: boolean;
Begin
  i := 1;
  flag1 := false;
  While (i <= g) And (Not flag1) Do
    Begin
      j := 1;
      flag2 := false;
      While (j <= n) And (Not flag2) Do
        Begin
          If (v[j] = m[j, i]) Then
            j := j + 1
          Else
            Begin
              i := i + 1;
              flag2 := true;
            End;
        End;
      If (Not flag2) Then
        Begin
          flag1 := true;
        End;
    End;
  If (i <= g) Then
    Begin
      textcolor(blue);
      WriteLn(' ');
      write('POSIBLE ENFERMEDAD: ');
      textcolor(red);
      write(upcase(diagnostico[i]));
      textcolor(white);
    End
  Else
    Begin
      textcolor(red);
      WriteLn(' ');
      writeln('LO SENTIMOS!');
      writeln('NO ENCONTRAMOS COINCIDENCIA CON SUS SINTOMAS');
      WriteLn('EN NUESTRA BASE DE DATOS');
      textcolor(white);
    End;
End;

End.
