* Programa ......: Informe1.prg
* Objetivo ......: Genera un listado de clientes para impresion.
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
        Provincia C(20),;
        IVA N(8,2))
    APPEND BLANK
    REPLACE Codigo WITH '000001', Empresa WITH 'Empresa Demo', Ciudad WITH 'Madrid', Provincia WITH 'Madrid', IVA WITH 2100
ENDIF

SELECT 1
USE CLIENTES SHARED

IF RECCOUNT() > 0
    REPORT FORM CLIENTES TO FILE 'CLIENTES.TXT' ASCII
    @ 5, 5 SAY 'Listado de clientes generado correctamente.'
ELSE
    @ 5, 5 SAY 'No existe ninguna fila para listar.'
ENDIF

WAIT 'Pulse una tecla para continuar...'
CLOSE DATABASES
RETURN
