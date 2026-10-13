* Programa ......: SUPERIOR.PRG
* Objetivo ......: Pantalla superior para la entrada de datos.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET STATUS OFF
SET SCOREBOARD OFF
CLEAR

STORE '' TO mCodigo, mEmpresa, mCiudad

@ 1, 1 SAY 'SISTEMA DE CLIENTES'
@ 2, 1 SAY '=================== '
@ 5, 3 SAY 'Codigo:' GET mCodigo PICTURE '999999'
@ 6, 3 SAY 'Empresa:' GET mEmpresa
@ 7, 3 SAY 'Ciudad:' GET mCiudad
READ

IF LASTKEY() = 27
    WAIT 'Operacion cancelada' TIMEOUT 2
ENDIF
RETURN
