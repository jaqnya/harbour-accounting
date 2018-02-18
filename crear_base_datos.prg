PROCEDURE main
    LOCAL laCCosto, laClieProv, laCuenta, laEmpresa, ;
          laLCompra, laLVenta, laMovim

    laCCosto := { ;
        { 'codigo',     'N',  3, 0 }, ;
        { 'nombre',     'C', 40, 0 } ;
    }

    laClieProv := { ;
        { 'codigo',     'N',  5, 0 }, ;
        { 'nombre',     'C', 40, 0 }, ;
        { 'direccion',  'C', 40, 0 }, ;
        { 'telefono',   'C', 20, 0 }, ;
        { 'ruc',        'C', 15, 0 } ;
    }

    laCuenta := { ;
        { 'codigo',     'C', 18, 0 }, ;
        { 'nombre',     'C', 40, 0 }, ;
        { 'asentable',  'L',  1, 0 } ;
    }

    laEmpresa := { ;
        { 'codigo',     'N',  8, 0 }, ;
        { 'nombre',     'C', 35, 0 }, ;
        { 'periodo',    'C', 16, 0 }, ;
        { 'ruc',        'C', 15, 0 }, ;
        { 'rep_legal',  'C', 35, 0 }, ;
        { 'contador',   'C', 35, 0 }, ;
        { 'ruc_contad', 'C', 15, 0 }, ;
        { 'pf_desde',   'D',  8, 0 }, ;
        { 'pf_hasta',   'D',  8, 0 }, ;
        { 'formulario', 'C',  5, 0 }, ;
        { 'nro_orden',  'C', 10, 0 }, ;
        { 'impuesto',   'C',  1, 0 }, ;
        { 'ccosto',     'L',  1, 0 }, ;
        { 'mmoneda',    'L',  1, 0 }, ;
        { 'asentar_ld', 'L',  1, 0 } ;
    }

    laLCompra := { ;
        { 'numero_op',  'N',  6, 0 }, ;
        { 'tipocompra', 'C',  1, 0 }, ;
        { 'periodo',    'C',  7, 0 }, ;
        { 'fecha',      'D',  8, 0 }, ;
        { 'clieprov',   'N',  5, 0 }, ;
        { 'tipodocu',   'N',  1, 0 }, ;
        { 'nrodocu',    'N',  9, 0 }, ;
        { 'total',      'N',  9, 0 }, ;
        { 'exento',     'N',  9, 0 }, ;
        { 'gravado',    'N',  9, 0 }, ;
        { 'iva',        'N',  8, 0 } ;
    }

    laLVenta := { ;
        { 'numero_op',  'N',  6, 0 }, ;
        { 'periodo',    'C',  7, 0 }, ;
        { 'fecha',      'D',  8, 0 }, ;
        { 'clieprov',   'N',  5, 0 }, ;
        { 'tipodocu',   'N',  1, 0 }, ;
        { 'nrodocu',    'N',  9, 0 }, ;
        { 'total',      'N',  9, 0 }, ;
        { 'exento',     'N',  9, 0 }, ;
        { 'gravado',    'N',  9, 0 }, ;
        { 'iva',        'N',  8, 0 } ;
    }

    laMovim := { ;
        { 'nroasiento', 'N',  5, 0 }, ;
        { 'fecha',      'D',  8, 0 }, ;
        { 'tipomovi',   'C',  1, 0 }, ;
        { 'cuenta',     'C', 18, 0 }, ;
        { 'monto',      'N', 10, 0 }, ;
        { 'concepto',   'C', 40, 0 }, ;
        { 'cerrado',    'L',  1, 0 }, ;
        { 'marca_cash', 'C',  1, 0 }, ;
        { 'empresa',    'N',  8, 0 }, ;
        { 'libro_iva',  'C',  1, 0 }, ;
        { 'nro_op_iva', 'N',  7, 0 }, ;
        { 'ccosto',     'N',  3, 0 } ;
    }

    REQUEST DBFCDX
    RDDSETDEFAULT('DBFCDX')

    DBCREATE('ccosto',   laCCosto,   'DBFCDX')
    DBCREATE('clieprov', laClieProv, 'DBFCDX')
    DBCREATE('cuentas',  laCuenta,   'DBFCDX')
    DBCREATE('empresas', laEmpresa,  'DBFCDX')
    DBCREATE('lcompras', laLCompra,  'DBFCDX')
    DBCREATE('lventas',  laLVenta,   'DBFCDX')
    DBCREATE('movim',    laMovim,    'DBFCDX')

    USE ccosto
    INDEX ON codigo TAG 'indice1'
    INDEX ON nombre TAG 'indice2'

    BROWSE()

    USE clieprov
    INDEX ON codigo TAG 'indice1'
    INDEX ON nombre TAG 'indice2'
    INDEX ON ruc    TAG 'indice3'

    BROWSE()

    USE cuentas
    INDEX ON codigo TAG 'indice1'
    INDEX ON nombre TAG 'indice2'
    INDEX ON codigo TAG 'indice3' FOR asentable
    INDEX ON nombre TAG 'indice4' FOR asentable

    BROWSE()

    USE empresas
    INDEX ON codigo TAG 'indice1'
    INDEX ON nombre TAG 'indice2'

    BROWSE()

    USE lcompras
    INDEX ON numero_op TAG 'indice1'
    INDEX ON clieprov  TAG 'indice2'
    INDEX ON fecha     TAG 'indice3'
    INDEX ON STR(tipodocu, 1) + ;
             STR(nrodocu,  9) + ;
             STR(clieprov, 5) TAG 'indice4'

    BROWSE()

    USE lventas
    INDEX ON numero_op TAG 'indice1'
    INDEX ON clieprov  TAG 'indice2'
    INDEX ON fecha     TAG 'indice3'
    INDEX ON STR(tipodocu, 1) + ;
             STR(nrodocu,  9) TAG 'indice4'

    BROWSE()

    USE movim
    INDEX ON nroasiento TAG 'indice1'
    INDEX ON cuenta     TAG 'indice2'
    INDEX ON DTOS(fecha) + ;
             STR(nroasiento, 5) TAG 'indice3'
    INDEX ON cuenta + ;
             DTOS(fecha) TAG 'indice4'
    INDEX ON libro_iva + ;
             STR(nro_op_iva, 7) TAG 'indice5'
    INDEX ON ccosto     TAG 'indice6'

    BROWSE()

RETURN NIL
