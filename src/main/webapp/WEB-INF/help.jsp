<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>C�mo Funciona - Intercambio de Servicios</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.6.22/css/uikit.min.css" />
    <style>
        body {
            font-family: 'Arial', sans-serif;
        }
        .uk-navbar-container {
            background: rgb(32,32,32) !important;
            background: linear-gradient(0deg, rgba(32,32,32,1) 0%, rgba(32,32,32,1) 0%, rgba(40,40,40,1) 50%, rgba(43,43,43,1) 100%) !important;
        }
        .uk-navbar-nav > li > a {
            color: white;
        }
        .uk-navbar-nav > li > a:hover {
            color: #ffcc00 !important; /* Color de texto al pasar el mouse */
        }
        .uk-section-default {
            background-color: #ffffff;
        }
        .uk-section-muted {
            background-color: #f8f8f8;
        }
        .uk-card {
            background-color: #ffffff;
        }
    </style>
</head>
<body>

    <!-- Barra de Navegaci�n -->
    <nav class="uk-navbar-container uk-navbar-transparent" uk-navbar>
        <div class="uk-navbar-left">
            <a class="uk-navbar-item uk-logo" href="#">LaburaApp</a>
        </div>
        <div class="uk-navbar-right">
            <ul class="uk-navbar-nav">
                <li><a href="#">Inicio</a></li>
                <li><a href="#">Contacto</a></li>
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

    <!-- Secci�n "C�mo Funciona" -->
    <div class="uk-section uk-section-default">
        <div class="uk-container">
            <div class="uk-section uk-section-muted uk-padding-small">
                <h2 class="uk-heading-line uk-text-center"><span>C�mo Funciona</span></h2>
                <p class="uk-text-lead uk-text-center">Descubre c�mo puedes encontrar y ofrecer servicios en nuestra plataforma en simples pasos.</p>
                
                <div class="uk-grid uk-grid-large uk-child-width-1-3@m uk-text-center" uk-grid>
                    <div>
                        <div class="uk-card uk-card-default uk-card-body">
                            <span uk-icon="icon: search; ratio: 3"></span>
                            <h3 class="uk-card-title">Busca un Servicio</h3>
                            <p>Utiliza nuestro buscador y los filtros avanzados para encontrar el servicio que necesitas. Explora las opciones disponibles y elige la que mejor se adapte a tus necesidades.</p>
                        </div>
                    </div>
                    <div>
                        <div class="uk-card uk-card-default uk-card-body">
                            <span uk-icon="icon: users; ratio: 3"></span>
                            <h3 class="uk-card-title">Contacta con el Proveedor</h3>
                            <p>Una vez encuentres el servicio adecuado, contacta directamente con el proveedor. Discute los detalles, horarios y condiciones del servicio antes de confirmar.</p>
                        </div>
                    </div>
                    <div>
                        <div class="uk-card uk-card-default uk-card-body">
                            <span uk-icon="icon: happy; ratio: 3"></span>
                            <h3 class="uk-card-title">Recibe el Servicio</h3>
                            <p>Recibe el servicio acordado y disfruta de los beneficios. No olvides dejar una valoraci�n sobre tu experiencia para ayudar a otros usuarios a tomar decisiones informadas.</p>
                        </div>
                    </div>
                </div>
            </div>

            <hr class="uk-divider-icon">

            <!-- Nueva Secci�n: Solicitar un Servicio -->
            <div class="uk-section uk-section-muted uk-padding-small">
                <h2 class="uk-heading-line uk-text-center"><span>Solicitar un Servicio</span></h2>
                <p class="uk-text-lead uk-text-center">Si no encuentras el servicio que necesitas, puedes solicitarlo f�cilmente siguiendo estos pasos:</p>
                <div class="uk-grid uk-child-width-1-2@m uk-text-center" uk-grid>
                    <div>
                        <div class="uk-card uk-card-default uk-card-body">
                            <span uk-icon="icon: pencil; ratio: 3"></span>
                            <h3 class="uk-card-title">Describe tu Necesidad</h3>
                            <p>Publica una solicitud describiendo detalladamente el servicio que necesitas. Incluye toda la informaci�n relevante para que los proveedores interesados puedan contactarte.</p>
                        </div>
                    </div>
                    <div>
                        <div class="uk-card uk-card-default uk-card-body">
                            <span uk-icon="icon: comments; ratio: 3"></span>
                            <h3 class="uk-card-title">Recibe Propuestas</h3>
                            <p>Los proveedores interesados en tu solicitud te enviar�n propuestas. Revisa sus perfiles, compara opciones y elige la que mejor se adapte a tus necesidades.</p>
                        </div>
                    </div>
                </div>
            </div>

            <hr class="uk-divider-icon">

            <h2 class="uk-heading-line uk-text-center"><span>Preguntas Frecuentes</span></h2>
            <ul uk-accordion>
                <li>
                    <a class="uk-accordion-title" href="#">�C�mo puedo registrarme?</a>
                    <div class="uk-accordion-content">
                        <p>Para registrarte, simplemente haz clic en el bot�n "Registrarse" en la parte superior derecha de la p�gina. Completa el formulario con tu informaci�n y sigue las instrucciones para confirmar tu cuenta.</p>
                    </div>
                </li>
                <li>
                    <a class="uk-accordion-title" href="#">�Qu� tipos de servicios puedo encontrar?</a>
                    <div class="uk-accordion-content">
                        <p>En nuestra plataforma, puedes encontrar una amplia variedad de servicios, desde reparaciones del hogar, tutor�as, asesor�a profesional, hasta servicios de bienestar y mucho m�s.</p>
                    </div>
                </li>
                <li>
                    <a class="uk-accordion-title" href="#">�C�mo puedo ofrecer mis servicios?</a>
                    <div class="uk-accordion-content">
                        <p>Para ofrecer tus servicios, reg�strate como proveedor, completa tu perfil y publica tu servicio detallando lo que ofreces, tus tarifas y disponibilidad.</p>
                    </div>
                </li>
                <li>
                    <a class="uk-accordion-title" href="#">�C�mo solicito un servicio?</a>
                    <div class="uk-accordion-content">
                        <p>Si no encuentras un servicio que se ajuste a tus necesidades, puedes publicar una solicitud detallando lo que necesitas. Los proveedores interesados te contactar�n con sus propuestas.</p>
                    </div>
                </li>
                <li>
                    <a class="uk-accordion-title" href="#">�C�mo se revisan las propuestas de los proveedores?</a>
                    <div class="uk-accordion-content">
                        <p>Puedes revisar las propuestas de los proveedores mirando sus perfiles, leyendo las valoraciones de otros usuarios y comparando las opciones disponibles antes de tomar una decisi�n.</p>
                    </div>
                </li>
                <li>
                    <a class="uk-accordion-title" href="#">�Puedo cancelar una solicitud o servicio?</a>
                    <div class="uk-accordion-content">
                        <p>S�, puedes cancelar una solicitud o servicio contactando al proveedor y acordando la cancelaci�n. Aseg�rate de leer los t�rminos y condiciones de cancelaci�n antes de proceder.</p>
                    </div>
                </li>
                <li>
                    <a class="uk-accordion-title" href="#">�C�mo puedo proteger mi informaci�n personal?</a>
                    <div class="uk-accordion-content">
                        <p>Recomendamos no compartir informaci�n personal sensible a trav�s de la plataforma. Utiliza los canales de comunicaci�n proporcionados por la plataforma y revisa nuestra pol�tica de privacidad para m�s detalles.</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <!-- Pie de P�gina -->
    <footer class="uk-section uk-section-small uk-section-muted">
        <div class="uk-container">
            <div class="uk-grid-small" uk-grid>
                <div class="uk-width-expand@s">
                    <p class="uk-text-small">� 2024 LaburaApp. Todos los derechos reservados.</p>
                </div>
                <div class="uk-width-auto@s">
                    <ul class="uk-iconnav">
                        <li><a href="#" uk-icon="icon: facebook"></a></li>
                        <li><a href="#" uk-icon="icon: twitter"></a></li>
                        <li><a href="#" uk-icon="icon: instagram"></a></li>
                        <li><a href="#" uk-icon="icon: linkedin"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.6.22/js/uikit.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.6.22/js/uikit-icons.min.js"></script>
</body>
</html>