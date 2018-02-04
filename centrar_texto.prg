PROCEDURE centrar_texto
    PARAMETERS tnFila, tcTexto, tcColor

    LOCAL lnColumna

    * inicio { validación de parámetros }
    IF VALTYPE(tnFila) <> 'N'
        QOUT("centrar_texto: El parámetro 'tnFila' debe ser de tipo numérico.")
        RETURN NIL
    ENDIF

    IF VALTYPE(tcTexto) <> 'C'
        QOUT("centrar_texto: El parámetro 'tcTexto' debe ser de tipo texto.")
        RETURN NIL
    ENDIF

    IF VALTYPE(tcColor) <> 'C'
        QOUT("centrar_texto: El parámetro 'tcColor' debe ser de tipo texto.")
        RETURN NIL
    ENDIF
    * fin { validación de parámetros }

    lnColumna := (80 - LEN(tcTexto)) / 2

    @ tnFila, lnColumna SAY tcTexto COLOR (tcColor)
RETURN NIL
