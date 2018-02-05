PROCEDURE src_menu_principal
    LOCAL lnEleccion

    dibujar_fondo()
    dibujar_caja_menu('principal')

    SET COLOR TO 'GR+/B, GR+/R'

    @ 06, 06 PROMPT ' 1. SISTEMA DE CONTABILIDAD '
    @ 12, 06 PROMPT ' 2.   MODULO DE EMPRESAS    '
    @ 18, 06 PROMPT ' 3.    RE-ORGANIZACION      '
    @ 06, 47 PROMPT ' 4.  COPIA DE SEGURIDAD    '
    @ 12, 47 PROMPT ' 5. RECUPERACION DE DATOS  '
    @ 18, 47 PROMPT ' 0.  SALIR DE ESTE MENU    '

    MENU TO lnEleccion

    DO CASE
    CASE lnEleccion == 0    // 0. SALIR DE ESTE MENU (el usuario ha presionado la tecla Esc)
        QUIT
    CASE lnEleccion == 1    // 1. SISTEMA DE CONTABILIDAD
    CASE lnEleccion == 2    // 2. MODULO DE EMPRESAS
    CASE lnEleccion == 3    // 3. RE-ORGANIZACION
    CASE lnEleccion == 4    // 4. COPIA DE SEGURIDAD
    CASE lnEleccion == 5    // 5. RECUPERACION DE DATOS
    ENDCASE
RETURN NIL
