* Programa ......: HOJACALC.PRG
* Notas .........: Hoja de calculo interactiva en FoxPro con Read Loop.
* Origen ........: Ejemplos.docx
*
PUBLIC mdat011, mdat012, mdat013
PUBLIC mdat021, mdat022, mdat023
PUBLIC mdat031, mdat032, mdat033
PUBLIC mdat041, mdat042, mdat043
PUBLIC filtot1, filtot2, filtot3, filtot4
PUBLIC coltot1, coltot2, coltot3, grandtot

STORE 0.00 TO mdat011, mdat012, mdat013, ;
              mdat021, mdat022, mdat023, ;
              mdat031, mdat032, mdat033, ;
              mdat041, mdat042, mdat043, ;
              filtot1, filtot2, filtot3, filtot4, ;
              coltot1, coltot2, coltot3, grandtot

CLEAR
@ 8, 1, 17, 72 BOX
@ 9, 28 SAY 'Jul        Ago        Sep       Total Regiones'
@ 10, 3 SAY 'Region Norte'
@ 11, 3 SAY 'Region Sur  '
@ 12, 3 SAY 'Region Este '
@ 13, 3 SAY 'Region Oeste'
@ 14, 58 SAY '----------'
@ 15, 10 SAY 'Totales:'

DO WHILE .T.
    @ 10, 25 GET mdat011 PICTURE '99,999.99' VALID ReCalc()
    @ 10, 36 GET mdat012 PICTURE '99,999.99' VALID ReCalc()
    @ 10, 47 GET mdat013 PICTURE '99,999.99' VALID ReCalc()

    @ 11, 25 GET mdat021 PICTURE '99,999.99' VALID ReCalc()
    @ 11, 36 GET mdat022 PICTURE '99,999.99' VALID ReCalc()
    @ 11, 47 GET mdat023 PICTURE '99,999.99' VALID ReCalc()

    @ 12, 25 GET mdat031 PICTURE '99,999.99' VALID ReCalc()
    @ 12, 36 GET mdat032 PICTURE '99,999.99' VALID ReCalc()
    @ 12, 47 GET mdat033 PICTURE '99,999.99' VALID ReCalc()

    @ 13, 25 GET mdat041 PICTURE '99,999.99' VALID ReCalc()
    @ 13, 36 GET mdat042 PICTURE '99,999.99' VALID ReCalc()
    @ 13, 47 GET mdat043 PICTURE '99,999.99' VALID ReCalc()

    READ
    IF LASTKEY() = 27
        EXIT
    ENDIF
ENDDO
RETURN

FUNCTION ReCalc
    filtot1 = mdat011 + mdat012 + mdat013
    filtot2 = mdat021 + mdat022 + mdat023
    filtot3 = mdat031 + mdat032 + mdat033
    filtot4 = mdat041 + mdat042 + mdat043

    coltot1 = mdat011 + mdat021 + mdat031 + mdat041
    coltot2 = mdat012 + mdat022 + mdat032 + mdat042
    coltot3 = mdat013 + mdat023 + mdat033 + mdat043
    grandtot = coltot1 + coltot2 + coltot3

    @ 10, 60 SAY TRANSFORM(filtot1, '99,999.99')
    @ 11, 60 SAY TRANSFORM(filtot2, '99,999.99')
    @ 12, 60 SAY TRANSFORM(filtot3, '99,999.99')
    @ 13, 60 SAY TRANSFORM(filtot4, '99,999.99')
    @ 15, 20 SAY TRANSFORM(grandtot, '99,999.99')
    RETURN .T.
