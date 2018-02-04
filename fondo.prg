#include 'box.ch'

FUNCTION main

   SetMode( 25, 80 )

   lcClave := Space( 15 )

   @ 00, 00 SAY Replicate( Chr( 32 ), 80 ) COLOR 'GR+/B'
   centrar( 00, Chr( 15 ) + ' CONTABILIDAD ' + Chr( 15 ), 'GR+/B' )

   FOR lnContador = 1 TO 23
      @ lnContador, 00 SAY Replicate( Chr( 178 ), 80 ) COLOR 'BG/B'
   NEXT

   @ 24, 00 SAY Replicate( Chr( 32 ), 80 ) COLOR 'GR+/B'

   caja( 01, 36, B_SINGLE + Space( 1 ), 'GR+/B' )

   @ 11, 24 SAY 'INGRESE LA CLAVE:' COLOR 'W+/B'
   @ 11, 42 GET lcClave COLOR 'X/X'

   READ

   RETURN NIL


PROCEDURE centrar

   PARAMETERS tnFila, tcTexto, tcColor

   lnColumna := ( 80 - Len( tcTexto ) ) / 2

   @ tnFila, lnColumna SAY tcTexto COLOR ( tcColor )

   RETURN NIL

PROCEDURE caja

   PARAMETERS tnAlto, tnAncho, tcCadenaCaja, tcColor

   lnArriba := ( ( 25 - tnAlto ) / 2 ) -2
   lnIzquierda := ( ( 80 - tnAncho ) / 2 )
   lnAbajo := lnArriba + tnAlto + 1
   lnDerecha := lnIzquierda + tnAncho

   @ lnArriba, lnIzquierda, lnAbajo, lnDerecha BOX tcCadenaCaja COLOR ( tcColor )

   RETURN NIL
