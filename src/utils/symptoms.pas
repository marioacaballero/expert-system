
Unit symptoms;

Interface

Const 
  n = 14;
  //cantidad de sintomas
  g = 15;
  //cantidad de enfermedades

Type 
  T_matriz = array [1..g, 1..n] Of boolean;

Procedure inicializar (Var m:T_matriz);

Implementation
Procedure inicializar (Var m:T_matriz);
Begin
  //columna 1  - resfriado comun
  m[1, 1] := true;
  m[2, 1] := true;
  m[3, 1] := true;
  m[4, 1] := true;
  m[5, 1] := true;
  m[6, 1] := true;
  m[7, 1] := false;
  m[8, 1] := false;
  m[9, 1] := false;
  m[10, 1] := false;
  m[11, 1] := false;
  m[12, 1] := false;
  m[13, 1] := false;
  m[14, 1] := false;
  //enfermedad 2 - gripe
  m[1, 2] := true;
  m[2, 2] := true;
  m[3, 2] := false;
  m[4, 2] := true;
  m[5, 2] := true;
  m[6, 2] := true;
  m[7, 2] := true;
  m[8, 2] := true;
  m[9, 2] := false;
  m[10, 2] := false;
  m[11, 2] := false;
  m[12, 2] := false;
  m[13, 2] := false;
  m[14, 2] := false;
  //enfermedad 3 - alergia
  m[1, 3] := false;
  m[2, 3] := true;
  m[3, 3] := true;
  m[4, 3] := false;
  m[5, 3] := false;
  m[6, 3] := true;
  m[7, 3] := false;
  m[8, 3] := false;
  m[9, 3] := true;
  m[10, 3] := true;
  m[11, 3] := false;
  m[12, 3] := false;
  m[13, 3] := false;
  m[14, 3] := false;
  //enfermedad 4 - migraña
  m[1, 4] := false;
  m[2, 4] := false;
  m[3, 4] := false;
  m[4, 4] := false;
  m[5, 4] := false;
  m[6, 4] := false;
  m[7, 4] := false;
  m[8, 4] := true;
  m[9, 4] := false;
  m[10, 4] := false;
  m[11, 4] := true;
  m[12, 4] := true;
  m[13, 4] := false;
  m[14, 4] := false;
  //enfermedad 5 - Enfermedad pulmonar obstructiva crónica(EPOC)
  m[1, 5] := true;
  m[2, 5] := false;
  m[3, 5] := false;
  m[4, 5] := false;
  m[5, 5] := false;
  m[6, 5] := false;
  m[7, 5] := false;
  m[8, 5] := false;
  m[9, 5] := false;
  m[10, 5] := false;
  m[11, 5] := false;
  m[12, 5] := false;
  m[13, 5] := true;
  m[14, 5] := true;

  //enfermedad 6 - Bronquitis aguda
  m[1, 6] := true;
  m[2, 6] := true;
  m[3, 6] := false;
  m[4, 6] := false;
  m[5, 6] := false;
  m[6, 6] := true;
  m[7, 6] := true;
  m[8, 6] := false;
  m[9, 6] := false;
  m[10, 6] := false;
  m[11, 6] := false;
  m[12, 6] := false;
  m[13, 6] := false;
  m[14, 6] := false;

  //enfermedad 7 - Rinitis alérgica
  m[1, 7] := false;
  m[2, 7] := false;
  m[3, 7] := true;
  m[4, 7] := false;
  m[5, 7] := false;
  m[6, 7] := true;
  m[7, 7] := false;
  m[8, 7] := false;
  m[9, 7] := false;
  m[10, 7] := true;
  m[11, 7] := false;
  m[12, 7] := false;
  m[13, 7] := false;
  m[14, 7] := false;

  //enfermedad 8 - Virus sincitial respiratorio(VSR)
  m[1, 8] := true;
  m[2, 8] := false;
  m[3, 8] := false;
  m[4, 8] := false;
  m[5, 8] := false;
  m[6, 8] := true;
  m[7, 8] := true;
  m[8, 8] := false;
  m[9, 8] := false;
  m[10, 8] := false;
  m[11, 8] := false;
  m[12, 8] := false;
  m[13, 8] := false;
  m[14, 8] := false;

  //enfermedad 9 - Sinusitis
  m[1, 9] := false;
  m[2, 9] := true;
  m[3, 9] := true;
  m[4, 9] := false;
  m[5, 9] := false;
  m[6, 9] := true;
  m[7, 9] := false;
  m[8, 9] := true;
  m[9, 9] := false;
  m[10, 9] := false;
  m[11, 9] := false;
  m[12, 9] := false;
  m[13, 9] := false;
  m[14, 9] := false;

  //enfermedad 10 - Cefalea tensional
  m[1, 10] := false;
  m[2, 10] := false;
  m[3, 10] := false;
  m[4, 10] := true;
  m[5, 10] := true;
  m[6, 10] := false;
  m[7, 10] := false;
  m[8, 10] := true;
  m[9, 10] := false;
  m[10, 10] := false;
  m[11, 10] := false;
  m[12, 10] := false;
  m[13, 10] := false;
  m[14, 10] := false;

  //enfermedad 11 - Gastroenteritis
  m[1, 11] := false;
  m[2, 11] := false;
  m[3, 11] := false;
  m[4, 11] := false;
  m[5, 11] := false;
  m[6, 11] := false;
  m[7, 11] := false;
  m[8, 11] := false;
  m[9, 11] := false;
  m[10, 11] := false;
  m[11, 11] := true;
  m[12, 11] := true;
  m[13, 11] := true;
  m[14, 11] := false;

  //enfermedad 12 - Enfermedad pulmonar intersticial
  m[1, 12] := true;
  m[2, 12] := false;
  m[3, 12] := false;
  m[4, 12] := true;
  m[5, 12] := false;
  m[6, 12] := false;
  m[7, 12] := false;
  m[8, 12] := false;
  m[9, 12] := false;
  m[10, 12] := false;
  m[11, 12] := false;
  m[12, 12] := false;
  m[13, 12] := true;
  m[14, 12] := true;

  //enfermedad 13 - Intoxicación alimentaria
  m[1, 13] := false;
  m[2, 13] := false;
  m[3, 13] := false;
  m[4, 13] := false;
  m[5, 13] := false;
  m[6, 13] := false;
  m[7, 13] := false;
  m[8, 13] := false;
  m[9, 13] := false;
  m[10, 13] := false;
  m[11, 13] := true;
  m[12, 13] := true;
  m[13, 13] := true;
  m[14, 13] := false;

  //enfermedad 14 - Embolia pulmonar
  m[1, 14] := false;
  m[2, 14] := false;
  m[3, 14] := false;
  m[4, 14] := false;
  m[5, 14] := true;
  m[6, 14] := false;
  m[7, 14] := false;
  m[8, 14] := false;
  m[9, 14] := false;
  m[10, 14] := false;
  m[11, 14] := true;
  m[12, 14] := true;
  m[13, 14] := true;
  m[14, 14] := false;

  //enfermedad 15 - Neumonía
  m[1, 15] := true;
  m[2, 15] := false;
  m[3, 15] := false;
  m[4, 15] := true;
  m[5, 15] := false;
  m[6, 15] := false;
  m[7, 15] := true;
  m[8, 15] := false;
  m[9, 15] := false;
  m[10, 15] := false;
  m[11, 15] := false;
  m[12, 15] := false;
  m[13, 15] := false;
  m[14, 15] := false;
End;
End.
