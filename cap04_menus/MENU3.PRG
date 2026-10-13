* Programa ......: MENU3.PRG
* Objetivo ......: Menu con ventana y control por teclado.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET STATUS OFF
SET SCOREBOARD OFF
CLEAR
ON KEY LABEL F1 DO AyudaMenu

DO WHILE .T.
    CLEAR
    @ 3, 20, 12, 55 DOUBLE
    @ 5, 25 SAY 'Selecciona una opcion'
    @ 7, 26 PROMPT 'A - Alta'
    @ 8, 26 PROMPT 'M - Modificacion'
    @ 9, 26 PROMPT 'B - Baja'
    @ 10, 26 PROMPT 'S - Salir'
    MENU TO opcion

    DO CASE
        CASE opcion = 0 .OR. opcion = 4
            EXIT
        CASE opcion = 1
            WAIT WINDOW 'Alta de registro' TIMEOUT 2
        CASE opcion = 2
            WAIT WINDOW 'Modificacion de registro' TIMEOUT 2
        CASE opcion = 3
            WAIT WINDOW 'Baja de registro' TIMEOUT 2
    ENDCASE
ENDDO
RETURN

PROCEDURE AyudaMenu
    WAIT WINDOW 'F1: ayuda - Esc: salir' TIMEOUT 2
    RETURN
