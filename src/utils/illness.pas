
Unit illness;

Interface

{$unitPath ../app/}
{$unitPath ./}

Uses 
symptoms, vectores;
//procedure POSIBLES_ENFERMEDADES(m:T_matriz;v:T_vector);

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

  //procedure POSIBLES_ENFERMEDADES(m:T_matriz;v:T_vector);

End.
