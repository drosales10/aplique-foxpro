* Programa ......: Hojear.PRG
* Objetivo ......: Sustituye el browse basico por una vista de registros.
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
BROWSE LAST
CLOSE DATABASES
RETURN
