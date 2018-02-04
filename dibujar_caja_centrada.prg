PROCEDURE dibujar_caja_centrada
    PARAMETERS tnAlto, tnAncho, tcCadenaCaja, tcColor

    LOCAL lnArriba, lnIzquierda, lnAbajo, lnDerecha
    lnArriba := ((25 - tnAlto) / 2) - 2
    lnIzquierda := (80 - tnAncho) / 2
    lnAbajo := lnArriba + tnAlto + 1
    lnDerecha := lnIzquierda + tnAncho

    @ lnArriba, lnIzquierda, lnAbajo, lnDerecha BOX tcCadenaCaja COLOR (tcColor)
RETURN NIL
