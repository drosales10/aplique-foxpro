* Programa ......: V_Estado.prg
* Objetivo ......: Demuestra validacion de provincia con menu emergente.
* Origen ........: Ejemplos.docx
*
SET TALK OFF
CLEAR

PROCEDURE V_Estado
    PUBLIC mProvincia
    mProvincia = ' '
    @ 3, 5 SAY 'Provincia:' GET mProvincia PICTURE '!!' VALID ValProvincia(mProvincia)
    READ

    IF LASTKEY() = 27
        @ 24, 0 SAY 'Operacion cancelada.'
    ELSE
        @ 24, 0 SAY 'Provincia correcta: ' + mProvincia
    ENDIF
    WAIT ''
    RETURN

FUNCTION ValProvincia
    PARAMETERS cProv
    cProv = UPPER(ALLTRIM(cProv))

    IF cProv $ 'AL/AN/AV/BA/BU/CL/CR/CU/GI/GR/MD/MU/NA/OV/PO/RJ/SL/SE/SG/TF/TO/VL/ZA'
        RETURN .T.
    ENDIF

    @ 24, 0 SAY 'Provincia no valida. Reintente.'
    RETURN .F.
