* Programa ......: SIMPLE.PRG
* Objetivo ......: Aplicacion sencilla de mantenimiento de clientes.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET BELL OFF
SET SCOREBOARD OFF
SET STATUS OFF
SET SAFETY OFF
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

PUBLIC mCodigo, mEmpresa, mContacto, mDireccion, mCiudad, mProvincia, mCP, mIVA

DO WHILE .T.
    CLEAR
    @ 1, 1 SAY 'CLIENTES'
    @ 2, 2 SAY '-----------------------------------------'
    @ 4, 2 SAY 'Codigo   :' GET Codigo PICTURE '999999'
    @ 5, 2 SAY 'Empresa  :' GET Empresa
    @ 6, 2 SAY 'Contacto :' GET Contacto
    @ 7, 2 SAY 'Direccion:' GET Direccion
    @ 8, 2 SAY 'Ciudad   :' GET Ciudad
    @ 9, 2 SAY 'Provincia:' GET Provincia
    @ 10, 2 SAY 'CP       :' GET CP PICTURE '99999'
    @ 11, 2 SAY 'IVA      :' GET IVA PICTURE '9999.99'
    @ 13, 2 SAY 'A) Anadir  E) Editar  B) Borrar  S) Salir'
    READ

    opcion = UPPER(CHR(LASTKEY()))
    DO CASE
        CASE opcion = 'S'
            EXIT
        CASE opcion = 'A'
            APPEND BLANK
            @ 15, 2 SAY 'Nuevo cliente insertado.'
            WAIT ''
        CASE opcion = 'E'
            EDIT
        CASE opcion = 'B'
            DELETE
            PACK
            @ 15, 2 SAY 'Cliente borrado.'
            WAIT ''
    ENDCASE
ENDDO

CLOSE DATABASES
RETURN
