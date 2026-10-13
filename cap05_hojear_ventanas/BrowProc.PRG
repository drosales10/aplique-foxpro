* Programa ......: BrowProc.PRG
* Objetivo ......: Ejemplo de uso de procedimientos con browse.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET STATUS OFF
SET SCOREBOARD OFF
CLEAR

IF NOT FILE('CLIENTES.DBF')
    CREATE TABLE CLIENTES (;
        Codigo C(6),;
        Empresa C(40),;
        Ciudad C(20),;
        Provincia C(20))
    APPEND BLANK
    REPLACE Codigo WITH '000001', Empresa WITH 'Empresa Demo', Ciudad WITH 'Madrid', Provincia WITH 'Madrid'
ENDIF

SELECT 1
USE CLIENTES SHARED
DO WHILE .T.
    BROWSE
    IF LASTKEY() = 27
        EXIT
    ENDIF
ENDDO
CLOSE DATABASES
RETURN
