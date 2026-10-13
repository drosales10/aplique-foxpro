* Programa ......: ABRE_RPT.PRG
* Objetivo ......: Abre el gestor de informes y prepara el entorno.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET STATUS OFF
SET SCOREBOARD OFF
CLEAR

SET PRINTER TO FILE 'reporte.txt'
@ 1, 1 SAY 'Informe generado por FoxPro'
@ 3, 1 SAY '========================='
@ 5, 1 SAY 'Preparando salida para archivo de texto...'
SET PRINTER OFF

? 'Archivo de salida preparado: reporte.txt'
WAIT 'Pulse una tecla para continuar...'
RETURN
