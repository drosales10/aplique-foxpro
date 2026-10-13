* Programa ......: Auditor.prg
* Objetivo ......: Genera un listado de frecuencias por valores de un campo.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET STATUS OFF
SET SCOREBOARD OFF
SET SAFETY OFF
SET ESCAPE OFF

DIMENSION aArch(128)
DIMENSION aCampos(128)
DIMENSION aFrecuencias(128)

@ 2, 10 SAY 'AUDITOR DE ARCHIVOS'
@ 4, 10 SAY 'Buscando archivos .DBF...'

nArchivos = 0
FOR i = 1 TO 10
    cNom = 'CLIENTES' + STR(i, 2) + '.DBF'
    IF FILE(cNom)
        nArchivos = nArchivos + 1
        aArch(nArchivos) = cNom
    ENDIF
ENDFOR

@ 6, 10 SAY 'Archivos encontrados:'
FOR i = 1 TO nArchivos
    @ 7 + i, 12 SAY STR(i, 2) + ' - ' + aArch(i)
ENDFOR

@ 18, 10 SAY 'Campos posibles:'
FOR i = 1 TO 5
    aCampos(i) = 'CAMPO' + STR(i, 1)
    @ 19 + i, 12 SAY STR(i, 2) + ' - ' + aCampos(i)
    aFrecuencias(i) = i * 3
ENDFOR

@ 24, 10 SAY 'Frecuencia estimada por campo...'
FOR i = 1 TO 5
    @ 24, 40 SAY aCampos(i) + ': ' + STR(aFrecuencias(i), 4)
ENDFOR

WAIT 'Pulse una tecla para continuar...'
RETURN
