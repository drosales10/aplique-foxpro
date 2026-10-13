* Programa ......: MENU1.PRG
* Nota ..........: Menu vertical con ayuda contextual en F1.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET ESCAPE OFF
SET STATUS OFF
SET SCOREBOARD OFF
SET MESSAGE TO 24
ON KEY LABEL F1 DO Ayuda
SET COLOR TO W/B
CLEAR

DO WHILE .T.
    CLEAR
    @ 2, 28 SAY 'MENU PRINCIPAL'
    @ 5, 28, 13, 55 BOX
    @ 7, 31 PROMPT ' 1. Libro Mayor      ' MESSAGE 'Ejecuta modulo de mayor'
    @ 9, 31 PROMPT ' 2. Apuntes Contables' MESSAGE 'Ejecuta modulo de apuntes'
    @ 11, 31 PROMPT ' 3. Salir al DOS     ' MESSAGE 'Abandona FoxPro'
    eleccion = 1
    MENU TO eleccion

    DO CASE
        CASE eleccion = 0 .OR. eleccion = 3
            EXIT
        CASE eleccion = 1
            DO LM
        CASE eleccion = 2
            DO AC
    ENDCASE
ENDDO

RETURN

PROCEDURE LM
    WAIT WINDOW 'Modulo Libro Mayor en desarrollo' TIMEOUT 2
    RETURN

PROCEDURE AC
    WAIT WINDOW 'Modulo Apuntes Contables en desarrollo' TIMEOUT 2
    RETURN

PROCEDURE Ayuda
    WAIT WINDOW 'Use flechas para mover el cursor y Enter para seleccionar.' TIMEOUT 2
    RETURN
