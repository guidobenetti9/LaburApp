<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Principal</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- UIkit CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.21.7/dist/css/uikit.min.css" />

    <!-- UIkit JS -->
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.21.7/dist/js/uikit.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.21.7/dist/js/uikit-icons.min.js"></script>
    <link rel="stylesheet" href="/css/index.css">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            display: flex;
            flex-direction: column;
        }
        .content {
            flex: 1;
            display: flex;
            flex-direction: column;
        }
        .uk-navbar-container {
            background: rgb(33,33,33) !important;
			background: linear-gradient(0deg, rgba(33,33,33,1) 0%, rgba(28,28,28,1) 18%, rgba(19,19,19,1) 45%, rgba(15,15,15,1) 63%, rgba(4,4,4,1) 100%) !important; /* Gradiente */			
        }
        .uk-navbar-nav> li > a {
            color: #fff !important; /* Color de texto blanco */
        }
        .uk-navbar-nav> li > a:hover {
            color: #ffcc00 !important; /* Color de texto al pasar el mouse */
        }
        .uk-width-logo {
            height: 50px;
            width: 110px;
        }
        
        /*Barra de busqueda*/
        .uk-navbar-center {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
        }
        .uk-search {
            position: relative;
            display: flex;
            width: 400px; /* Ancho del contenedor de busqueda */
            transition: all 0.3s ease;
        }           
		.uk-search:hover {
		    width: 600px; /* Ajusta este valor segï¿½n sea necesario */
		}
		
        .uk-search-input {
            background-color: #fff !important; /* Fondo blanco */
            width: 700px; /* Ancho del campo de bï¿½squeda */
            padding-right: 40px; /* Espacio para el icono de la lupa */
            color: #000 !important; /* Color del texto */
        }
        .uk-search-icon-flip {
            position: absolute;
            right: 10px;
            top: 50%;
            color: #000 !important; /* Color del icono */
        }
        .uk-search-input:focus {
            border-color: #ffcc00 !important; /* Color del borde al hacer clic */
        }
          	
    	.register-button{  	
    		list-style-type: none;  	
    	}
	    .btn-registrarse {
	        border: 2px solid #dfb550; /* Color del borde igual al color del h5 en el footer */
	        color: #dfb550; /* Color del texto igual al color del h5 en el footer */       
	        text-decoration: none;/* Elimina el subrayado */
	        border-radius: 4px; /* Bordes redondeados*/
	        display: inline-block;
	        box-sizing: border-box;
	        min-width: 150px; /* Establece un ancho mï¿½nimo para el botï¿½n*/        
	        line-height: 1.5; /* Ajusta la altura de lï¿½nea para centrar el texto verticalmente */
	        text-align: center; /* Centra el texto horizontalmente */
	        transition: background-color 0.3s, color 0.3s; /* Aï¿½ade transiciï¿½n suave para hover */
    	}
	
	    .btn-registrarse:hover {
	        background-color: #dfb550; /* Color de fondo cuando el cursor pasa sobre el boton */
	        color: #000000 !important; /* Color del texto cuando el ursor pasa sobre el boton */
	        text-decoration: none;
	        font-weight: bold; /* Texto en negrita*/
	    }
	    
	     /* Estilo para el icono de cofiguracion */
		.icon-config {	    
		    transition: color 0.3s ease, transform 0.3s ease !important;
		}
        
        .icon-config:hover {
		    transform: scale(1.3);
		}

		/* Estilo para el ï¿½cono de cerrar sesiï¿½n */
		.icon-logout i {
			transition: color 0.3s ease, transform 0.3s ease;
		}		
		
		.icon-logout:hover i {
		    color: rgb(255,122,122);
            color: linear-gradient(90deg, rgba(255,122,122,1) 0%, rgba(255,89,89,1) 26%, rgba(255,70,70,1) 57%, rgba(255,0,0,1) 100%);; /* Color al pasar el cursor sobre el ï¿½cono de cerrar sesiï¿½n */
		    transform: scale(1.5); /* Agrandar el ï¿½cono de cerrar sesiï¿½n */
		}
	    
        .main-title {
            text-align: center;
            margin-top: 20px;
        }
        .description {
            text-align: center;
            margin-bottom: 20px;
        }
        .button-container {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }
        .button-container div {
            text-align: center;
        }
        .filter-container {
            text-align: center;
            margin-bottom: 20px;
        }
        .uk-card {
            margin-top: 20px;
            width: auto; /* Ajustable al contenido */
        }
        .divider {
            border-top: 1px solid #ccc;
            margin: 20px auto;
            width: 80%; /* Reducir el ancho de las lï¿½neas horizontales */
        }
        .vertical-divider {
            border-left: 1px solid #ccc;
            height: 100%;
            position: absolute;
            left: 50%;
            top: 0;
        }
        .button-container {
            position: relative;
        }
        
        /* Estilo para la tarjeta de post */
		.uk-card-hover {
		    transition: all 0.3s ease;
		    transform: scale(1); /* Escala inicial */
		}
		
		.uk-card-hover:hover {
		    transform: scale(1.09); /* Ajusta el valor para controlar el tamaï¿½o del agrandamiento */
		    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2); /* Aï¿½ade sombra para dar efecto de elevaciï¿½n */
		}
        
        /*AQUI COMIENZA EL FOOTER*/
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
            padding: 10px 20px; /* Ajustar padding para incluir espacio */
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
	        border: 2px solid #ffffff; /* Color del borde*/
	        color: #000000; /* Color del texto*/
	        transition: background-color 0.3s, color 0.3s;
    	}

    	.uk-button-default:hover {
	    	border: 2px solid #000000;
	        background-color: #dfb550; /* Color de fondo cuando el cursor pasa sobre el boton */
	        color: #000000 !important; /* Color del texto cuando el cursor pasa sobre el boton */
	        font-weight: bold; /* Texto en negrita*/
    	}
    </style>
</head>
<body>
    <div class="content">
        <header>              
            <!-- Barra de Navegaciï¿½n -->
            <nav class="uk-navbar-container" uk-navbar>
                <div class="uk-navbar-left">
                    <div class="uk-width-logo">
                        <a href="/">
                            <img src="logo.png" class="uk-width-1-1 uk-margin-small-left">
                        </a>
                    </div>
                    <ul class="uk-navbar-nav">   
                        <li><a href="/contact">Contacto</a></li>                    
                        <li><a href="/help">Ayuda</a></li>                      
                    </ul>
                </div>
                <div class="uk-navbar-center">
                    <form class="uk-search uk-search-default" action="/findUsers" method="get">
                        <input class="uk-search-input" type="search" placeholder="Buscar Usuarios" name="search">
                        <button class="uk-search-icon-flip" uk-search-icon type="submit"></button>
                    </form>
                </div>
                <div class="uk-navbar-right uk-margin-medium-right">
                    <c:if test="${userInSession == null}">
                        <ul class="uk-navbar-nav">
                            <li><a href="/login">Iniciar Sesión</a></li>                                                      
                        </ul>
                        <ul class="register-button">
                        	<li ><a href="/register" class="btn-registrarse">REGISTRARSE</a></li>
                        </ul>
                    </c:if>
                    <c:if test="${userInSession != null}">
                        <div class="uk-navbar-right">
				            <div class="uk-navbar-right">
							    <ul class="uk-navbar-nav">
							        <li><a href="/">${userInSession.firstName} ${userInSession.lastName}</a></li>
							        <li><a href="/" class="icon-config" uk-icon="icon: cog"></a></li>
							        <li><a href="/logout" class="icon-logout"><i class="fa fa-sign-out-alt"></i></a></li>
							    </ul>
							</div>          
			        	</div>
                    </c:if>                  
                </div>      
            </nav>
        </header>
        
        <div class="main-title">
            <h1>LaburApp</h1>
            <p class="description">Encuentra y publica servicios facilmente. Conectate con profesionales y clientes en un solo lugar.</p>
        </div>

        <div class="divider"></div>
        <div class="filter-container">            
	        <button class="uk-button uk-button-default" type="button">Rubro</button>
	        <div uk-dropdown="animation: reveal-left; animate-out: true; duration: 700">
	            <ul class="uk-nav uk-dropdown-nav uk-panel-scrollable">
	                <c:forEach items="${allJobs}" var="job">
	                    <li><a href="/filterDataJob?job=${job.id}">${job.jobName}</a></li>
	                    <li class="uk-nav-divider"></li>
	                </c:forEach>
	            </ul>
	        </div>
	        <button class="uk-button uk-button-default" type="button">Zona</button>
	        <div uk-dropdown="animation: reveal-left; animate-out: true; duration: 700">
	            <ul class="uk-nav uk-dropdown-nav uk-panel-scrollable">
	                <c:forEach items="${provinces}" var="province">
	                    <li><a href="/filterDataProvince?province=${province}">${province}</a></li>
	                    <li class="uk-nav-divider"></li>
	                </c:forEach>
	            </ul>
	        </div>
	        <button class="uk-button uk-button-default" type="button">Fecha</button>
	        <div uk-dropdown="animation: reveal-left; animate-out: true; duration: 700">
	            <ul class="uk-nav uk-dropdown-nav">
	                <li><a href="/filterDataDateAsc">Mas antiguos</a></li>
	                <li class="uk-nav-divider"></li>
	                <li><a href="/filterDataDateDesc">Mas recientes</a></li>
	            </ul>
	        </div>
	                
        </div>
        <div class="divider"></div>

        <div class="button-container">
            <div>
                <h3>Publicar un nuevo servicio</h3>
                <p>Publica tu servicio para que otros puedan encontrarlo y contratarte.</p>
                <a href="/newPost" class="uk-button uk-button-secondary">Publicar servicio</a>
                <div class="uk-width-1-1">
                    <c:forEach items="${allOffered}" var="post">
                        <div class="uk-card uk-card-default uk-card-hover">
                            <div class="uk-card-header">
                                <p class="uk-text-meta uk-margin-remove-bottom"><time datetime="${post.createdAt}">${post.createdAt}</time></p>
                                <h3 class="uk-card-title uk-margin-remove-top">${post.creatorPost.firstName} ${post.creatorPost.lastName} - ${post.jobsInPost.jobName}</h3>
                            </div>
                            <div class="uk-card-body">
                                <p>${post.municipio}, ${post.localidad} (${post.province})</p>
                            </div>
                            <div class="uk-card-footer">
                                <div class="uk-flex-inline">
                                    <span uk-icon="star"></span>
                                    <span uk-icon="star"></span>
                                    <span uk-icon="star"></span>
                                    <span uk-icon="star"></span>
                                    <span uk-icon="star"></span>
                                </div>
                                <a href="/post/${post.id}" class="uk-button uk-button-text">Ver</a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="vertical-divider"></div>

            <div>
                <h3>Crear solicitud de servicio</h3>
                <p>Solicita un servicio y encuentra a los mejores profesionales que puedan ayudarte.</p>
                <a href="/newRequest" class="uk-button uk-button-primary">Crear solicitud</a>
                <div class="uk-width-1-1">
                    <c:forEach items="${allRequests}" var="request">
                        <div class="uk-card uk-card-default uk-card-hover">
                            <div class="uk-card-header">
                                <p class="uk-text-meta uk-margin-remove-bottom"><time datetime="${request.createdAt}">${request.createdAt}</time></p>
                                <h3 class="uk-card-title uk-margin-remove-top">${request.creatorPost.firstName} ${request.creatorPost.lastName} - ${request.jobsInPost.jobName}</h3>
                            </div>
                            <div class="uk-card-body">
                                <p>${request.municipio}, ${request.localidad} (${request.province})</p>
                            </div>
                            <div class="uk-card-footer">
                                <div class="uk-flex-inline">
                                    <span uk-icon="star"></span>
                                    <span uk-icon="star"></span>
                                    <span uk-icon="star"></span>
                                    <span uk-icon="star"></span>
                                    <span uk-icon="star"></span>
                                </div>
                                <a href="/request/${request.id}" class="uk-button uk-button-text">Ver</a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    
    <footer>
        <div class="footer-container">
            <div class="footer-column">
                <h5>INFORMACIï¿½N</h5>
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
                    <li><a href="#">Contacto</a></li>
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