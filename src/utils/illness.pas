
Unit illness;

Interface

{$unitPath ../app/}
{$unitPath ./}

Uses 
crt, sysUtils, symptoms, vectores;

Procedure POSIBLES_ENFERMEDADES(m:T_matriz;v:T_vector);
Function timer(text: String): string;

Implementation

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
  write(text);
  For i:= 1 To 10 Do
    Begin
      delay(500);
      write('......');
    End;
  writeln('');
End;

Function Resultado_Diagnostico(percentage: real; illnes: String): string;
Begin
  textcolor(blue);
  WriteLn(' ');
  write('POSIBLE ENFERMEDAD: ');
  textcolor(red);
  Write(FormatFloat('0.00', percentage),' % de tener ');
  write(upcase(illnes));
  textcolor(white);
End;

Procedure POSIBLES_ENFERMEDADES(m:T_matriz;v:T_vector);

Var 
  i, j, illnessCount: byte;
  flag: boolean;
  possibleIllness: array [1..2] Of byte;
  //1: illnessCount, 2: i
  percentage: real;
Begin
  i := 1;
  flag := false;
  While (i <= g) And (Not flag) Do
    Begin
      illnessCount := 0;
      For j:= 1 To n Do
        If (v[j] = m[j, i]) Then
          Inc(illnessCount);
      If (illnessCount = n) Then
        flag := true;
      If (i = 1) Then
        Begin
          possibleIllness[1] := illnessCount;
          possibleIllness[2] := i;
        End
      Else
        Begin
          If (illnessCount > possibleIllness[1]) Then
            Begin
              possibleIllness[1] := illnessCount;
              possibleIllness[2] := i;
            End;
        End;
      Inc(i);
    End;
  percentage := (possibleIllness[1] / n) * 100;
  Resultado_Diagnostico(percentage, diagnostico[possibleIllness[2]]);
End;

End.
