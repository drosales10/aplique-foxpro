* Programa ......: SetColor.PRG
* Objetivo ......: Cambia el esquema de color de la pantalla.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
CLEAR
SET COLOR TO W+/B
@ 2, 5 SAY 'Aplique FoxPro - esquema basico'
@ 4, 5 SAY 'Texto blanco sobre azul'
SET COLOR TO GR+/N, N/W
@ 7, 5 SAY 'Texto verde sobre pantalla normal'
SET COLOR TO R+/N, N/W
@ 9, 5 SAY 'Texto rojo sobre pantalla normal'
RETURN
