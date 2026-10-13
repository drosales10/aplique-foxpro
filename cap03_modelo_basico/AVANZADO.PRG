* Programa ......: AVANZADO.PRG
* Objetivo ......: Version avanzada de mantenimiento de clientes.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET BELL OFF
SET SCOREBOARD OFF
SET STATUS OFF
CLEAR

IF NOT FILE('CLIENTES.DBF')
    CREATE TABLE CLIENTES (;
        Codigo C(6),;
        Empresa C(40),;
        Contacto C(30),;
        Direccion C(40),;
        Ciudad C(20),;
        Provincia C(20),;
        CP C(5),;
        IVA N(6,2))
ENDIF

SELECT 1
USE CLIENTES SHARED
INDEX ON Codigo TO CLIENTES

DO WHILE .T.
    CLEAR
    @ 1, 1 SAY 'MENU DE CLIENTES'
    @ 3, 5 SAY '1. Alta'
    @ 4, 5 SAY '2. Modificacion'
    @ 5, 5 SAY '3. Baja'
    @ 6, 5 SAY '4. Consulta'
    @ 7, 5 SAY '5. Salir'
    @ 9, 5 SAY 'Seleccione opcion: ' GET nOpcion PICTURE '9'
    READ

    DO CASE
        CASE nOpcion = 1
            APPEND BLANK
            @ 12, 5 SAY 'Nuevo registro...' 
            WAIT ''
        CASE nOpcion = 2
            IF RECCOUNT() > 0
                MODIFY RECORD
            ELSE
                @ 12, 5 SAY 'No hay registros.'
            ENDIF
            WAIT ''
        CASE nOpcion = 3
            IF RECCOUNT() > 0
                DELETE
                PACK
                @ 12, 5 SAY 'Registro borrado...'
            ELSE
                @ 12, 5 SAY 'No hay registros para borrar.'
            ENDIF
            WAIT ''
        CASE nOpcion = 4
            BROWSE
        CASE nOpcion = 5
            EXIT
        OTHERWISE
            @ 12, 5 SAY 'Opcion no valida.'
            WAIT ''
    ENDCASE
ENDDO

CLOSE DATABASES
RETURN
