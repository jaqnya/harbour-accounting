#include 'box.ch'

PROCEDURE src_iniciar_sesion
    LOCAL lcClave, lnContador
    lcClave := SPACE(15)

    @ 00, 00 SAY REPLICATE(CHR(32), 80) COLOR 'GR+/B'
    centrar_texto(00, CHR(15) + ' CONTABILIDAD ' + CHR(15), 'GR+/B')

    FOR lnContador = 1 TO 23
        @ lnContador, 00 SAY REPLICATE(CHR(178), 80) COLOR 'BG/B'
    NEXT lnContador

    @ 24, 00 SAY REPLICATE(CHR(32), 80) COLOR 'GR+/B'

    dibujar_caja_centrada(01, 36, B_SINGLE + SPACE(1), 'GR+/B')

    @ 11, 24 SAY 'INGRESE LA CLAVE:' COLOR 'W+/B'
    @ 11, 42 GET lcClave COLOR 'X/X'

    READ
RETURN NIL
