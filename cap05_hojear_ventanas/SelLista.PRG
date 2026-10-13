* Programa ......: SelLista.PRG
* Objetivo ......: Permite seleccionar varios elementos de una lista.
* Origen ........: Ejemplos.docx
*
PROCEDURE SelLista
    PARAMETERS ar, howmany, startrow, startcol, endrow, endcol, title
    PRIVATE nRows, bottom, top, keypressed, reverse, currows
    SAVE SCREEN TO abrowscr
    PUBLIC picked(howmany)

    nRows = endrow - startrow - 1
    bottom = 1
    reverse = 1
    currows = MIN(nRows, howmany)

    @ startrow, startcol TO endrow, endcol DOUBLE
    @ startrow, startcol + 2 SAY '[' + ALLTRIM(title) + ']'

    FOR i = 1 TO howmany
        picked(i) = .F.
    NEXT

    DO WHILE .T.
        @ startrow + reverse, startcol + 1 GET picked(bottom + reverse - 1) PICTURE '!'
        READ
        keypressed = MOD(READKEY(), 256)
        IF keypressed = 12 .OR. keypressed = 15
            EXIT
        ENDIF
    ENDDO

    RESTORE SCREEN FROM abrowscr
    RETURN
