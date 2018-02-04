PROCEDURE dibujar_fondo
    LOCAL lnContador

    @ 00, 00 SAY REPLICATE(CHR(32), 80) COLOR 'GR+/B'
    centrar_texto(00, CHR(15) + ' CONTABILIDAD ' + CHR(15), 'GR+/B')

    FOR lnContador = 1 TO 23
        @ lnContador, 00 SAY REPLICATE(CHR(178), 80) COLOR 'BG/B'
    NEXT lnContador

    @ 24, 00 SAY REPLICATE(CHR(32), 80) COLOR 'GR+/B'
RETURN NIL
