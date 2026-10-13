* Programa ......: Informe2.prg
* Objetivo ......: Genera un resumen de facturacion por ciudad.
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
    SUM IVA TO total_iva
    @ 3, 5 SAY 'Resumen de IVA'
    @ 5, 5 SAY 'Total general del IVA: ' + TRANSFORM(total_iva, '999,999.99')
    TOTAL ON Ciudad TO RESUMEN_IVA
    @ 8, 5 SAY 'Se ha generado el resumen por ciudad.'
ELSE
    @ 5, 5 SAY 'No existe ninguna fila para resumir.'
ENDIF

WAIT 'Pulse una tecla para continuar...'
CLOSE DATABASES
RETURN
