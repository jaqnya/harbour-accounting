#include 'box.ch'

PROCEDURE dibujar_caja_menu
    PARAMETER tcMenu

    LOCAL lcCajaSimple

    * inicio { validación de parámetro }
    IF VALTYPE(tcMenu) <> 'C'
        QOUT("dibujar_caja_menu: El parámetro 'tcMenu' debe ser de tipo texto.")
        RETURN NIL
    ENDIF
    * fin { validación de parámetro }

    lcCajaSimple := B_SINGLE + SPACE(1)

    DO CASE
    CASE tcMenu == 'principal'
        @ 05, 06, 07, 35 BOX lcCajaSimple COLOR 'GR+/B'    // 1. SISTEMA DE CONTABILIDAD
        @ 11, 06, 13, 35 BOX lcCajaSimple COLOR 'GR+/B'    // 2. MODULO DE EMPRESAS
        @ 17, 06, 19, 35 BOX lcCajaSimple COLOR 'GR+/B'    // 3. RE-ORGANIZACION
        @ 05, 47, 07, 75 BOX lcCajaSimple COLOR 'GR+/B'    // 4. COPIA DE SEGURIDAD
        @ 11, 47, 13, 75 BOX lcCajaSimple COLOR 'GR+/B'    // 5. RECUPERACION DE DATOS
        @ 17, 47, 19, 75 BOX lcCajaSimple COLOR 'GR+/B'    // 0. SALIR DE ESTE MENU
    CASE tcMenu == 'sistema'
        @ 05, 09, 07, 30 BOX lcCajaSimple COLOR 'GR+/B'    // 1. MANTENIMIENTO
        @ 11, 09, 13, 30 BOX lcCajaSimple COLOR 'GR+/B'    // 2. CONSULTAS
        @ 17, 09, 19, 30 BOX lcCajaSimple COLOR 'GR+/B'    // 3. LISTADOS
        @ 05, 50, 07, 71 BOX lcCajaSimple COLOR 'GR+/B'    // 4. OTRAS OPCIONES
        @ 11, 50, 13, 71 BOX lcCajaSimple COLOR 'GR+/B'    // 0. MENU PRINCIPAL
    OTHERWISE
        QOUT("dibujar_caja_menu: No se pudo dibujar ninguna caja.")
    ENDCASE
RETURN NIL
