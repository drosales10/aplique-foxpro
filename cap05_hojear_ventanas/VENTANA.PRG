* Programa ......: VENTANA.PRG
* Objetivo ......: Ejemplo de ventana interactiva con lectura de datos.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET STATUS OFF
SET SCOREBOARD OFF
CLEAR

@ 2, 10, 12, 70 DOUBLE
@ 3, 13 SAY 'VENTANA DE EJEMPLO'
@ 5, 13 SAY 'Nombre  :'
@ 6, 13 SAY 'Empresa :'
@ 7, 13 SAY 'Telefono:'

STORE '' TO mNombre, mEmpresa, mTelefono

@ 5, 25 GET mNombre PICTURE '!!!!!!!!!!'
@ 6, 25 GET mEmpresa PICTURE '!!!!!!!!!!'
@ 7, 25 GET mTelefono PICTURE '9999-9999'
READ

CLEAR
@ 2, 5 SAY 'DATOS INTRODUCIDOS'
@ 4, 5 SAY 'Nombre  : ' + mNombre
@ 5, 5 SAY 'Empresa : ' + mEmpresa
@ 6, 5 SAY 'Telefono: ' + mTelefono
WAIT 'Pulse una tecla para continuar...'
RETURN
