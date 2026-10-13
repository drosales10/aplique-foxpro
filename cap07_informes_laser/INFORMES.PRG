* Programa ......: INFORMES.PRG
* Objetivo ......: Gestiona informes sencillos en pantalla.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET STATUS OFF
SET SCOREBOARD OFF
CLEAR

DO WHILE .T.
    @ 2, 10 SAY 'INFORMES'
    @ 4, 10 SAY '1. Listado general'
    @ 5, 10 SAY '2. Resumen'
    @ 6, 10 SAY '3. Salir'
    @ 8, 10 SAY 'Seleccione opcion: ' GET opcion PICTURE '9'
    READ

    DO CASE
        CASE opcion = 1
            DO Informe1
        CASE opcion = 2
            DO Informe2
        CASE opcion = 3
            EXIT
        OTHERWISE
            WAIT 'Opcion no valida' TIMEOUT 2
    ENDCASE
ENDDO
RETURN
