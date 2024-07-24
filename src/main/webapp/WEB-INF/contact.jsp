<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contacto</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.6.22/css/uikit.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Navegador */
        .uk-navbar-container {      
            background: rgb(33,33,33) !important;
            background: linear-gradient(0deg, rgba(33,33,33,1) 0%, rgba(28,28,28,1) 18%, rgba(19,19,19,1) 45%, rgba(15,15,15,1) 63%, rgba(4,4,4,1) 100%) !important;
        }
        .uk-navbar-nav > li > a {
            color: white;
        }
        .uk-navbar-nav > li > a:hover {
            color: #ffcc00 !important; /* Color de texto al pasar el mouse */
        }

        /* Footer */
        footer {
            background: rgb(33,33,33);
            background: linear-gradient(180deg, rgba(33,33,33,1) 0%, rgba(28,28,28,1) 18%, rgba(19,19,19,1) 45%, rgba(15,15,15,1) 63%, rgba(4,4,4,1) 100%);
            padding: 20px 0;
            margin-top: 70px;
        }

        .footer-container {
            display: flex;
            justify-content: space-between;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px 0;
        }

        .footer-column {
            flex: 1;
            padding: 0 20px;
        }

        .footer-column1 {
            align-items: center;
        }

        h5 {
            margin-bottom: 10px;
            color: #dfb550;
        }

        .footer-column ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .footer-column ul li {
            margin-bottom: 10px;
            display: list-item;
            unicode-bidi: isolate;
            font-size: small;
        }

        .footer-column ul li a {
            color: rgb(119, 119, 119);
            text-decoration: none;
        }

        .footer-column ul li a:hover {
            color: white;
        }

        .footer-bottom {
            background: #181818;
            color: #e0e0e0;
            padding: 10px 20px;
            font-size: 14px;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

        .footer-bottom button{
            color: white !important;
        }

        .separator {
            width: 80%;
            margin: 10px auto;
            border-top: 1px solid #fff;
        }

        .social-icons {
            display: flex;
            justify-content: center;
        }

        .social-icons a {
            color: #fff;
            margin: 0 10px;
            font-size: 24px;
            text-decoration: none;
        }

        .social-icons a:hover {
            color: #dfb550;
        }

        .footer-container > .footer-column {
            padding: 0 40px;
        }

        .footer-container + .separator {
            display: block;
        }

        .uk-button-default {
            border: 2px solid #ffffff; /* Color del borde */
            color: #000000; /* Color del texto */
            transition: background-color 0.3s, color 0.3s;
        }

        .uk-button-default:hover {
            border: 2px solid #000000;
            background-color: #dfb550; /* Color de fondo cuando el cursor pasa sobre el bot�n */
            color: #000000 !important; /* Color del texto cuando el cursor pasa sobre el bot�n */
            font-weight: bold; /* Texto en negrita */
        }
    </style>
</head>
<body>

    <nav class="uk-navbar-container uk-navbar-transparent" uk-navbar>
        <div class="uk-navbar-left">
            <a class="uk-navbar-item uk-logo" href="#">LaburaApp</a>
        </div>
        <div class="uk-navbar-right">
            <ul class="uk-navbar-nav">
                <li><a href="#">Inicio</a></li>
                <c:choose>
                    <c:when test="${not empty sessionScope.usuario}">
                        <li><a href="#">${sessionScope.usuario.nombre}</a></li>
                        <li><a href="configuracionPerfil.jsp" uk-icon="icon: cog"></a></li>
                        <li><a href="cerrarSesion.jsp">Cerrar Sesi�n</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="iniciarSesion.jsp">Iniciar Sesi�n</a></li>
                        <li><a href="registrarse.jsp">Registrarse</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </nav>

    <!-- Secci�n de Contacto -->
    <div class="uk-section uk-section-default">
        <div class="uk-container">
            <h2 class="uk-heading-line uk-text-center"><span>Contacta con un Desarrollador</span></h2>
            <div class="uk-grid uk-child-width-1-2@m uk-flex-middle" uk-grid>
                <div>
                    <h3>Ponte en contacto con nosotros</h3>
                    <p>Si tienes alguna pregunta, comentario o sugerencia, no dudes en ponerte en contacto con nosotros. Estamos aqu� para ayudarte.</p>
                    <ul class="uk-list uk-list-divider">
                        <li>
                            <span uk-icon="icon: receiver; ratio: 1.5"></span>
                            <strong>Tel�fono:</strong> +54 123 456 789
                        </li>
                        <li>
                            <span uk-icon="icon: mail; ratio: 1.5"></span>
                            <strong>Email:</strong> Kanevick@Gmail.com
                        </li>
                        <li>
                            <span uk-icon="icon: location; ratio: 1.5"></span>
                            <strong>Direcci�n:</strong> Calle, 123, caba, Argentina
                        </li>
                    </ul>
                </div>
                <div>
                    <form>
                        <fieldset class="uk-fieldset">
                            <div class="uk-margin">
                                <input class="uk-input" type="text" placeholder="Nombre" required>
                            </div>
                            <div class="uk-margin">
                                <input class="uk-input" type="email" placeholder="Correo Electr�nico" required>
                            </div>
                            <div class="uk-margin">
                                <input class="uk-input" type="text" placeholder="Asunto" required>
                            </div>
                            <div class="uk-margin">
                                <textarea class="uk-textarea" rows="5" placeholder="Mensaje" required></textarea>
                            </div>
                            <div class="uk-margin">
                                <button class="uk-button uk-button-primary" type="submit">Enviar Mensaje</button>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Pie de P�gina -->
    <footer>
        <div class="footer-container">
            <div class="footer-column">
                <h5>INFORMACI�N</h5>
                <ul>
                    <li><a href="#">Sobre nosotros</a></li>
                    <li><a href="#">Oportunidades de empleo</a></li>
                    <li><a href="#">Blog</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h5>LEGAL</h5>
                <ul>
                    <li><a href="#">Terminos de uso</a></li>
                    <li><a href="#">Acuerdo de licencia</a></li>
                    <li><a href="#">Politica de privacidad</a></li>
                    <li><a href="#">Politica de cookies</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h5>SOPORTE</h5>
                <ul>
                    <li><a href="#">Ayuda</a></li>
                </ul>
            </div>
            <div class="footer-column1">
                <h5>REDES SOCIALES</h5>
                <div class="social-icons">
                    <a href="https://www.facebook.com" target="_blank" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="https://www.twitter.com" target="_blank" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                    <a href="https://www.instagram.com" target="_blank" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                    <a href="https://www.linkedin.com" target="_blank" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        </div>
        <div class="separator"></div>
        <div class="footer-bottom">
            <p>LaburaApp 2024 | Todos los derechos reservados.</p>
            <div class="uk-inline">
                <button class="uk-button uk-button-default" type="button" uk-toggle="target: #mode-dropdown">Modo Oscuro</button>
                <div id="mode-dropdown" uk-dropdown="mode: click" class="uk-dropdown">
                    <ul class="uk-nav uk-dropdown-nav">
                        <li><a href="#">Modo Claro</a></li>
                        <li><a href="#">Modo Oscuro</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.6.22/js/uikit.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.6.22/js/uikit-icons.min.js"></script>
</body>
</html>