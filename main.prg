FUNCTION Main()
    LOCAL lnUsuario, lcClave
    lnUsuario = 0
    lcClave = SPACE(15)

    @ 10, 10 SAY 'Usuario...:' GET lnUsuario PICTURE '9999'
    @ 11, 10 SAY 'Contrase¤a:' GET lcClave

    READ
RETURN NIL