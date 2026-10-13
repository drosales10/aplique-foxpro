* Programa ......: ValidaFDU.prg
* Objetivo ......: Ejemplo de validacion con FDU y control de datos.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET STATUS OFF
SET SCOREBOARD OFF
CLEAR

STORE '' TO mCodigo, mNombre, mCP

@ 2, 5 SAY 'Codigo:' GET mCodigo VALID !EMPTY(mCodigo)
@ 3, 5 SAY 'Nombre:' GET mNombre VALID !EMPTY(mNombre)
@ 4, 5 SAY 'CP:' GET mCP VALID LEN(TRIM(mCP)) = 5
READ

IF LASTKEY() = 27
    WAIT 'Operacion cancelada' TIMEOUT 2
ELSE
    @ 8, 5 SAY 'Datos validados correctamente.'
    WAIT ''
ENDIF
RETURN
