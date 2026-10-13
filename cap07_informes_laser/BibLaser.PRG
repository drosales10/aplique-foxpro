* Programa ......: BibLaser.PRG
* Objetivo ......: Biblioteca de procedimientos HP LaserJet II (Secuencias de escape PCL).
* Origen ........: Ejemplos.docx
*
PROCEDURE INICIALIZAR
    PUBLIC ESC
    ESC = CHR(27)
    SET CONSOLE OFF
    SET PRINT ON
    ?? ESC + 'E'          && Reset de la impresora
    SET PRINT OFF
    RETURN

PROCEDURE RESET
    SET PRINT ON
    ?? ESC + 'E'
    SET PRINT OFF
    RETURN

PROCEDURE CAJA
PARAMETERS top_row, bottom_row, left_col, right_col, thickness
    DO LINEAHORI WITH top_row, left_col, (right_col - left_col), thickness
    DO LINEAHORI WITH bottom_row, left_col, (right_col - left_col), thickness
    DO LINEAVERT WITH top_row, left_col, (bottom_row - top_row), thickness
    DO LINEAVERT WITH top_row, right_col, (bottom_row - top_row), thickness
    RETURN

PROCEDURE LINEAHORI
PARAMETERS _line, _col, _len, _thi
    lin_ = STR((720 * _line) + 75, 4)
    col_ = STR((720 * _col) + 75, 4)
    len_ = STR((720 * _len), 4)
    thi_ = STR(_thi, 4)
    curs_ = ESC + '*p' + lin_ + 'Y' + col_ + 'X'
    spec_ = ESC + '*c' + len_ + 'a' + thi_ + 'b0P'
    SET PRINT ON
    ?? curs_ + spec_
    SET PRINT OFF
    RETURN

PROCEDURE LINEAVERT
PARAMETERS _line, _col, _len, _thi
    lin_ = STR((720 * _line) + 75, 4)
    col_ = STR((720 * _col) + 75, 4)
    len_ = STR((720 * _len), 4)
    thi_ = STR(_thi, 4)
    curs_ = ESC + '*p' + lin_ + 'Y' + col_ + 'X'
    spec_ = ESC + '*c' + thi_ + 'a' + len_ + 'b0P'
    SET PRINT ON
    ?? curs_ + spec_
    SET PRINT OFF
    RETURN

PROCEDURE POSICION
PARAMETERS _down, _over, _txt
    row_ = STR((720 * _down) + 75, 4)
    col_ = STR((720 * _over) + 75, 4)
    string_ = ESC + '*p' + row_ + 'Y' + col_ + 'X' + _txt
    SET PRINT ON
    ?? string_
    SET PRINT OFF
    RETURN
