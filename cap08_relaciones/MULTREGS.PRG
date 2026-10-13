* Programa ......: MULTREGS.PRG
* Objetivo ......: Demuestra relacion 1 a N entre cabecera y detalle.
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
        Ciudad C(20))
    APPEND BLANK
    REPLACE Codigo WITH '000001', Empresa WITH 'Empresa Demo', Ciudad WITH 'Madrid'
ENDIF

IF NOT FILE('PEDIDOS.DBF')
    CREATE TABLE PEDIDOS (;
        Codigo C(6),;
        Numero C(6),;
        Fecha D,;
        Importe N(10,2))
    APPEND BLANK
    REPLACE Codigo WITH '000001', Numero WITH 'P-0001', Fecha WITH DATE(), Importe WITH 1250.50
ENDIF

SELECT 1
USE CLIENTES SHARED
SELECT 2
USE PEDIDOS SHARED
SET RELATION TO Codigo INTO CLIENTES
BROWSE FIELDS Cliente->Empresa, Numero, Fecha, Importe
CLOSE DATABASES
RETURN
