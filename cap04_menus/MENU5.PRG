* Programa ......: MENU5.PRG
* Objetivo ......: Menu jerarquico con salida por popup y mensajes.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
SET STATUS OFF
SET ESCAPE OFF
SET SCOREBOARD OFF
SET COLOR TO W+/B
CLEAR

DEFINE PAD pad_principal OF _MSYSMENU PROMPT '\<Principal'
DEFINE PAD pad_libro OF _MSYSMENU PROMPT '\<Libro Mayor'
DEFINE PAD pad_apuntes OF _MSYSMENU PROMPT '\<Apuntes'
DEFINE PAD pad_salir OF _MSYSMENU PROMPT '\<Salir'

DEFINE POPUP pup_libro MARGIN RELATIVE SHADOW
DEFINE BAR 1 OF pup_libro PROMPT '\<Introducir JV'
DEFINE BAR 2 OF pup_libro PROMPT '\<Consultar JV'
DEFINE BAR 3 OF pup_libro PROMPT '\<Imprimir JV'
DEFINE BAR 4 OF pup_libro PROMPT '\<Salir'

DEFINE POPUP pup_apuntes MARGIN RELATIVE SHADOW
DEFINE BAR 1 OF pup_apuntes PROMPT '\<Nuevo Apunte'
DEFINE BAR 2 OF pup_apuntes PROMPT '\<Listado'
DEFINE BAR 3 OF pup_apuntes PROMPT '\<Salir'

ON PAD pad_libro OF _MSYSMENU ACTIVATE POPUP pup_libro
ON PAD pad_apuntes OF _MSYSMENU ACTIVATE POPUP pup_apuntes
ON PAD pad_salir OF _MSYSMENU ACTIVATE POPUP _MSYSMENU
ON SELECTION POPUP pup_libro DO CasoMenu WITH POPUP(), PROMPT()
ON SELECTION POPUP pup_apuntes DO CasoMenu WITH POPUP(), PROMPT()

@ 2, 2 SAY 'MENU JERARQUICO - EJEMPLO'
ACTIVATE MENU _MSYSMENU
RETURN

PROCEDURE CasoMenu
    PARAMETERS mpopup, mprompt
    @ 24, 0 CLEAR
    @ 24, 0 SAY 'Ejecutando: ' + mprompt
    WAIT ''
    @ 24, 0 CLEAR
    RETURN
