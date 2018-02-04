PROCEDURE src_menu_sistema
    LOCAL lnEleccion

    dibujar_fondo()
    dibujar_caja_menu('sistema')

    SET COLOR TO 'GR+/B, GR+/R'

    @ 06, 10 PROMPT ' 1. MANTENIMIENTO   '
    @ 12, 10 PROMPT ' 2. CONSULTAS       '
    @ 18, 10 PROMPT ' 3. LISTADOS        '
    @ 06, 51 PROMPT ' 4. OTRAS OPCIONES  '
    @ 12, 51 PROMPT ' 0. MENU PRINCIPAL  '

    MENU TO lnEleccion

    DO CASE
    CASE lnEleccion == 0    // 0. MENU PRINCIPAL (el usuario ha presionado la tecla Esc)
        QUIT
    CASE lnEleccion == 1    // 1. MANTENIMIENTO
    CASE lnEleccion == 2    // 2. CONSULTAS
    CASE lnEleccion == 3    // 3. LISTADOS
    CASE lnEleccion == 4    // 4. OTRAS OPCIONES
    ENDCASE
RETURN NIL
