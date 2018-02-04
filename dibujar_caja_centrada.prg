PROCEDURE dibujar_caja_centrada
    PARAMETERS tnAlto, tnAncho, tcCadenaCaja, tcColor

    LOCAL lnArriba, lnIzquierda, lnAbajo, lnDerecha

    * inicio { validación de parámetros }
    IF VALTYPE(tnAlto) <> 'N'
        QOUT("dibujar_caja_centrada: El parámetro 'tnAlto' debe ser de tipo numérico.")
        RETURN NIL
    ENDIF

    IF VALTYPE(tnAncho) <> 'N'
        QOUT("dibujar_caja_centrada: El parámetro 'tnAncho' debe ser de tipo numérico.")
        RETURN NIL
    ENDIF

    IF VALTYPE(tcCadenaCaja) <> 'C'
        QOUT("dibujar_caja_centrada: El parámetro 'tcCadenaCaja' debe ser de tipo texto.")
        RETURN NIL
    ENDIF

    IF VALTYPE(tcColor) <> 'C'
        QOUT("dibujar_caja_centrada: El parámetro 'tcColor' debe ser de tipo texto.")
        RETURN NIL
    ENDIF
    * fin { validación de parámetros }

    lnArriba := ((25 - tnAlto) / 2) - 2
    lnIzquierda := (80 - tnAncho) / 2
    lnAbajo := lnArriba + tnAlto + 1
    lnDerecha := lnIzquierda + tnAncho

    @ lnArriba, lnIzquierda, lnAbajo, lnDerecha BOX tcCadenaCaja COLOR (tcColor)
RETURN NIL
