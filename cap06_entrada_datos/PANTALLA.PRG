* Programa ......: PANTALLA.PRG
* Objetivo ......: Pantalla principal para captura y edicion.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET STATUS OFF
SET SCOREBOARD OFF
CLEAR

STORE '' TO mNombre, mEmpresa, mTelefono

@ 1, 1 TO 20, 78 DOUBLE
@ 3, 5 SAY 'Pantalla de captura'
@ 5, 5 SAY 'Nombre   :' GET mNombre
@ 6, 5 SAY 'Empresa  :' GET mEmpresa
@ 7, 5 SAY 'Telefono :' GET mTelefono PICTURE '9999-9999'
READ

IF LASTKEY() = 27
    WAIT 'Operacion cancelada' TIMEOUT 2
ELSE
    @ 10, 5 SAY 'Nombre   : ' + mNombre
    @ 11, 5 SAY 'Empresa  : ' + mEmpresa
    @ 12, 5 SAY 'Telefono : ' + mTelefono
    WAIT ''
ENDIF
RETURN
