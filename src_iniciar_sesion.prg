#include 'box.ch'

PROCEDURE src_iniciar_sesion
    LOCAL lcClave
    lcClave := SPACE(15)

    dibujar_fondo()
    dibujar_caja_centrada(01, 36, B_SINGLE + SPACE(1), 'GR+/B')

    @ 11, 24 SAY 'INGRESE LA CLAVE:' COLOR 'W+/B'
    @ 11, 42 GET lcClave COLOR 'X/X'

    READ
RETURN NIL
