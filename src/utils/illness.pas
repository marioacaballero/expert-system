
Unit illness;

Interface

{$unitPath ../app/}
{$unitPath ./}

Uses 
crt, sysUtils, symptoms, vectores;

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

Procedure POSIBLES_ENFERMEDADES(m:T_matriz;v:T_vector);
Function timer(text: String): string;

Implementation

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

Procedure invertBubbleSort(Var arr: illnessArray);

Var 
  i, j: byte;
  aux: illnessData;
Begin
  For i:= 1 To n - 1 Do
    For j:= 1 To n - i Do
      If arr[j].percentage < arr[j + 1].percentage Then
        Begin
          aux := arr[j];
          arr[j] := arr[j + 1];
          arr[j + 1] := aux;
        End;
End;

Function Resultado_Diagnostico(possibleIllness: illnessArray): string;

Var 
  i, count: byte;
  rounded: integer;
Begin
  count := 0;
  invertBubbleSort(possibleIllness);
  textcolor(blue);
  WriteLn(' ');
  WriteLn('RESULTADO: ');
  textcolor(red);
  If (possibleIllness[1].percentage = 100) Then
    Begin
      rounded := Round(possibleIllness[1].percentage);
      Write(rounded, ' % de tener ');
      write(upcase(diagnostico[possibleIllness[1].name]));
    End
  Else
    Begin
      For i:= 1 To n Do
        If (possibleIllness[i].name <> 0) Then
          Begin
            Inc(count);
            WriteLn(FormatFloat('0.00', possibleIllness[i].percentage),
            ' % de tener ', upcase(diagnostico[possibleIllness[i].name]));
          End;
      If (count = 0) Then
        Begin
          WriteLn('No es posible diagnosticar una enfermedad');
          WriteLn('basada en los sintomas ingresados');
        End;
    End;
  textcolor(white);
End;

Procedure POSIBLES_ENFERMEDADES(m:T_matriz;v:T_vector);

Var 
  i, j, k, illnessCount: byte;
  flag: boolean;
  possibleIllness: illnessArray;
  percentage: real;
Begin
  i := 1;
  k := 1;
  flag := false;
  inicializarvPosibles(possibleIllness);
  While (i <= g) And (Not flag) Do
    Begin
      illnessCount := 0;
      For j:= 1 To n Do
        If (v[j] = m[j, i]) Then
          Inc(illnessCount);
      If (illnessCount = n) Then
        flag := true;
      percentage := (illnessCount / n) * 100;
      If ( percentage >= 60 ) And ( k < n + 1 ) Then
        Begin
          possibleIllness[k].percentage := percentage;
          possibleIllness[k].name := i;
          Inc(k);
        End;
      Inc(i);
    End;
  Resultado_Diagnostico(possibleIllness);
End;

End.
