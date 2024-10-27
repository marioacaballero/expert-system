
Unit menu;
{$CODEPAGE UTF8}

Interface

{$unitPath ../utils/}
{$unitPath ./}

Uses 
crt, symptoms, vectores, illness;
Procedure menu_principal;

Implementation
Procedure menu_principal;

Var OPCION: byte;
  m: T_matriz;
  v: T_vector;
Begin
  inicializar(m);
  Repeat
    CLRSCR;
    writeln('   1- DIAGNOSTICAR');
    writeln();
    writeln('   0- SALIR');
    writeln();
    readln(OPCION);
    If OPCION = 1 Then
      Begin
        inicializarv(v);
        consulta_sintomas (v);
        writeln('DIAGNOSTICANDO.....');
        READKEY;
        //	DETERMINAR POSIBLES_ENFERMEDADES
      End;
  Until OPCION = 0;

End;
End.
