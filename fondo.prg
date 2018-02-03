#INCLUDE 'Box.ch'

FUNCTION main
    SetMode(25, 80)

    lcClave := SPACE(15)

    @ 00, 00 SAY REPLICATE(CHR(32), 80) COLOR 'GR+/B'
    centrar(00, CHR(15) + ' CONTABILIDAD ' + CHR(15), 'GR+/B')

    FOR lnContador = 1 TO 23
        @ lnContador, 00 SAY REPLICATE(CHR(178), 80) COLOR 'BG/B'
    NEXT

    @ 24, 00 SAY REPLICATE(CHR(32), 80) COLOR 'GR+/B'

    caja(01, 36, B_SINGLE + SPACE(1), 'GR+/B')

    @ 11, 24 SAY 'INGRESE LA CLAVE:' COLOR 'W+/B'
    @ 11, 42 GET lcClave COLOR 'X/X'

    READ
RETURN nil


PROCEDURE centrar
    PARAMETERS tnFila, tcTexto, tcColor

    lnColumna := (80 - LEN(tcTexto)) / 2

    @ tnFila, lnColumna SAY tcTexto COLOR (tcColor)
RETURN nil

PROCEDURE caja
    PARAMETERS tnAlto, tnAncho, tcCadenaCaja, tcColor

    lnArriba := ((25 - tnAlto) / 2) - 2
    lnIzquierda := ((80 - tnAncho) / 2)
    lnAbajo := lnArriba + tnAlto + 1
    lnDerecha := lnIzquierda + tnAncho

    @ lnArriba, lnIzquierda, lnAbajo, lnDerecha BOX tcCadenaCaja COLOR (tcColor)
RETURN nil
