* Programa ......: MENU4.PRG
* Objetivo ......: Menu principal con popups jerarquicos.
* Origen ........: Ejemplos.docx
*
SET STATUS OFF
SET SCOREBOARD OFF
SET TALK OFF
SET ESCAPE OFF
SET COLOR TO W+/B
CLEAR

DEFINE MENU menuprincipal BAR
DEFINE PAD p1 OF menuprincipal PROMPT '\<Libro Mayor' AT 1, 2
DEFINE PAD p2 OF menuprincipal PROMPT '\<Apuntes' AT 1, 20
DEFINE PAD p3 OF menuprincipal PROMPT '\<Salir' AT 1, 35

DEFINE POPUP pop_libro FROM 3, 2
DEFINE BAR 1 OF pop_libro PROMPT '\<Introducir JV'
DEFINE BAR 2 OF pop_libro PROMPT '\<Consultar JV'
DEFINE BAR 3 OF pop_libro PROMPT '\<Salir'

DEFINE POPUP pop_apuntes FROM 3, 20
DEFINE BAR 1 OF pop_apuntes PROMPT '\<Nuevo apunte'
DEFINE BAR 2 OF pop_apuntes PROMPT '\<Listado'
DEFINE BAR 3 OF pop_apuntes PROMPT '\<Salir'

ON PAD p1 OF menuprincipal ACTIVATE POPUP pop_libro
ON PAD p2 OF menuprincipal ACTIVATE POPUP pop_apuntes
ON PAD p3 OF menuprincipal ACTIVATE POPUP _MSYSMENU
ON SELECTION POPUP pop_libro DO GestionLibro WITH POPUP(), PROMPT()
ON SELECTION POPUP pop_apuntes DO GestionApuntes WITH POPUP(), PROMPT()

ACTIVATE MENU menuprincipal
RETURN

PROCEDURE GestionLibro
    PARAMETERS mpopup, mprompt
    WAIT WINDOW 'Libro Mayor -> ' + mprompt TIMEOUT 2
    RETURN

PROCEDURE GestionApuntes
    PARAMETERS mpopup, mprompt
    WAIT WINDOW 'Apuntes -> ' + mprompt TIMEOUT 2
    RETURN
