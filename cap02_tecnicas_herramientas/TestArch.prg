* Programa ......: TestArch.prg
* Objetivo ......: Muestra un listado de archivos de trabajo y permite seleccionar uno.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
CLEAR

DIMENSION aArch(20)
nCont = 0
FOR i = 1 TO 10
    cNom = 'CLIENTES' + STR(i, 2) + '.DBF'
    IF FILE(cNom)
        nCont = nCont + 1
        aArch(nCont) = cNom
    ENDIF
ENDFOR

@ 2, 5 SAY 'SELECCION DE ARCHIVO'
@ 4, 5, 12 + nCont, 30 BOX
@ 5, 7 SAY 'Archivos disponibles:'
FOR i = 1 TO nCont
    @ 6 + i, 8 SAY STR(i, 2) + ' - ' + aArch(i)
ENDFOR

IF nCont = 0
    @ 8, 8 SAY 'No se han encontrado archivos .DBF.'
ENDIF

WAIT 'Pulse una tecla para continuar...'
RETURN
