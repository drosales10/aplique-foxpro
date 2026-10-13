* Programa ......: Plan.prg
* Objetivo ......: Mini planificador de turnos y agenda de trabajo.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET STATUS OFF
SET SCOREBOARD OFF
CLEAR

DIMENSION aTurnos(7)
aTurnos(1) = 'Lunes'
aTurnos(2) = 'Martes'
aTurnos(3) = 'Miercoles'
aTurnos(4) = 'Jueves'
aTurnos(5) = 'Viernes'
aTurnos(6) = 'Sabado'
aTurnos(7) = 'Domingo'

@ 2, 5 SAY 'PLANIFICACION SEMANAL'
FOR i = 1 TO 7
    @ 3 + i, 5 SAY STR(i, 1) + '. ' + aTurnos(i)
NEXT

WAIT 'Planificacion creada.' TIMEOUT 2
RETURN
