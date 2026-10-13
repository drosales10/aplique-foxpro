* Programa ......: MENU2.PRG
* Objetivo ......: Menu basado en prompts con mensajes relevantes.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET STATUS OFF
SET SCOREBOARD OFF
CLEAR

DO WHILE .T.
    CLEAR
    @ 2, 10 SAY 'MENU DE OPERACIONES'
    @ 4, 10 PROMPT '1. Archivo' MESSAGE 'Gestiona documentos'
    @ 5, 10 PROMPT '2. Edicion' MESSAGE 'Modifica registros'
    @ 6, 10 PROMPT '3. Consultas' MESSAGE 'Muestra consultas'
    @ 7, 10 PROMPT '4. Salir' MESSAGE 'Abandona el programa'
    MENU TO opcion

    DO CASE
        CASE opcion = 0 .OR. opcion = 4
            EXIT
        CASE opcion = 1
            WAIT WINDOW 'Modulo Archivo: crear, abrir y guardar' TIMEOUT 2
        CASE opcion = 2
            WAIT WINDOW 'Modulo Edicion: modificar datos' TIMEOUT 2
        CASE opcion = 3
            WAIT WINDOW 'Modulo Consultas: buscar registros' TIMEOUT 2
    ENDCASE
ENDDO
RETURN
