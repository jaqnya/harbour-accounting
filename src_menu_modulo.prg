PROCEDURE src_menu_modulo
    LOCAL lnEleccion

    dibujar_caja_menu('modulo')

    SET COLOR TO 'W+/BG, GR+/B'

    @ 09, 26 PROMPT ' 1. LIBRO DIARIO           '
    @ 10, 26 PROMPT ' 2. PLAN DE CUENTAS        '
    @ 11, 26 PROMPT ' 3. CLIENTES Y PROVEEDORES '
    @ 12, 26 PROMPT ' 4. CENTROS DE COSTO       '
    @ 13, 26 PROMPT ' 5. LIBRO IVA COMPRAS      '
    @ 14, 26 PROMPT ' 6. LIBRO IVA VENTAS       '

    MENU TO lnEleccion

    DO CASE
    CASE lnEleccion == 0    // El usuario ha presionado la tecla Esc.
        QUIT
    CASE lnEleccion == 1    // 1. MANTENIMIENTO
    CASE lnEleccion == 2    // 2. CONSULTAS
    CASE lnEleccion == 3    // 3. LISTADOS
    CASE lnEleccion == 4    // 4. OTRAS OPCIONES
    ENDCASE
RETURN NIL
