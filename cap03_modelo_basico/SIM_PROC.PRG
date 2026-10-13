* Programa ......: SIM_PROC.PRG
* Objetivo ......: Procedimientos complementarios para SIMPLE.PRG.
* Origen ........: Ejemplos.docx
*
PROCEDURE VisuForm
    CLEAR
    SET COLOR TO BG/N, N/W
    @ 0, 0 SAY SPACE(80)
    @ 0, 72 SAY DATE()
    SET COLOR TO R+/N, N/W
    @ 2, 2 SAY 'GESTION DE CLIENTES'
    @ 4, 20 SAY 'Codigo cliente:'
    @ 5, 20 SAY 'Compania:'
    @ 6, 20 SAY 'Contacto:'
    @ 7, 20 SAY 'Direccion:'
    @ 8, 20 SAY 'Ciudad:'
    @ 9, 20 SAY 'Provincia:'
    @ 10, 20 SAY 'CP:'
    @ 11, 20 SAY 'IVA:'
    RETURN

PROCEDURE VisuReg
    SET COLOR TO BG/N, N/W
    @ 0, 0 SAY 'Registro: ' + SUBSTR(STR(RECNO() + 1000000, 7), 2)
    SET COLOR TO R+/N, N/W
    @ 4, 36 GET Codigo
    @ 5, 36 GET Empresa
    @ 6, 36 GET Contacto
    @ 7, 36 GET Direccion
    @ 8, 36 GET Ciudad
    @ 9, 36 GET Provincia
    @ 10, 36 GET CP
    @ 11, 36 GET IVA
    CLEAR GETS
    RETURN

PROCEDURE MuestraEstado
    @ 23, 2 SAY 'Registro actual: ' + STR(RECNO(), 6)
    RETURN
