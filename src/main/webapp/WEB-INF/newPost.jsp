<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo post</title>
    <!-- UIkit CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.21.7/dist/css/uikit.min.css" />

    <!-- UIkit JS -->
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.21.7/dist/js/uikit.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.21.7/dist/js/uikit-icons.min.js"></script>
    <script src="uikit/dist/js/uikit-icons.min.js"></script>

    <!--Fuentes-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Patua+One&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Zain:wght@200;300;400;700;800;900&display=swap" rel="stylesheet">

    <!--Css-->
    <link rel="stylesheet" href="css/new.css">
</head>
<body>
    <header>
        <div class="cont_header">
            <div class="cont_loguito">
                <a href="/"><img src="logonuevo.png"></a>
            </div>
            <div>
                <h2 class="uk-h2">LaburApp</h2>
            </div>
        </div>
    </header>
    <main>
        <div class="cont_main">
            <div class="cont_titulo">
                <h3 class="uk-h3">Crea una nueva publicaci�n</h3>
            </div>
            <div>
                <form:form action="/newPost" method="POST" modelAttribute="newPost">
                    <div class="cajita">
                        <form:label path="postTittle" >Titulo:</form:label>
                        <form:input path="postTittle" class="uk-input"/>
                        <form:errors path="postTittle" class="uk-text-danger uk-text-small"/>
                    </div>
                    <div class="cajita">
                        <form:label path="postDescription" >Descripci�n:</form:label>
                        <form:textarea path="postDescription" class="uk-textarea"></form:textarea>
                        <form:errors path="postDescription" class="uk-text-danger uk-text-small"/>
                    </div>
                    <div class="cajita">
                        <form:label path="jobsInPost">Servicio:</form:label>
                        <form:select path="jobsInPost" class="uk-select">
                            <c:forEach items="${allJobs}" var="job">
                                <form:option value="${job}">${job.jobName}</form:option>
                            </c:forEach>
                        </form:select>
                    </div>
                    <div class="cajita">
                        <form:label path="availableDays" >Dias disponibles:</form:label>
                        <br>
                        <form:checkboxes path="availableDays" items="${days}"/>
                        <form:errors path="availableDays" class="uk-text-danger uk-text-small"/>
                    </div>
                    <div class="cajita">
                        <form:label path="availableHours" >Horarios disponibles:</form:label>
                        <form:input path="availableHours" class="uk-input"/>
                        <form:errors path="availableHours" class="uk-text-danger uk-text-small"/>
                    </div>
                    <div class="cajita">
                        <form:label path="province" >Provincia:</form:label>
                        <form:select path="province" class="uk-select">
                            <form:options items="${provinces}"/>
                        </form:select>
                    </div>
                    <div class="cajita">
                        <form:label path="city" >Ciudad:</form:label>
                        <form:input path="city" class="uk-input"/>
                        <form:errors path="city" class="uk-text-danger uk-text-small"/>
                    </div>
                    <div class="cajita">
                        <form:label path="typePost" >Tipo:</form:label>
                        <form:select path="typePost" class="uk-select">
                             <form:option value="Pedido">Pedido</form:option>
           					 <form:option value="Ofrecido">Ofrecido</form:option>
                        </form:select>
                    </div>
                    <div class="cont_botones">
                        <form:hidden path="creatorPost" value="${userInSession.id}"/>
                        <a href="/" class="uk-button uk-button-danger uk-margin-right">Cancelar</a>
                        <input type="submit" value="Crear" class="uk-button uk-button-secondary">
                    </div>
                </form:form>
            </div>
        </div>
    </main>
     <footer class="uk-section uk-section-small uk-section-muted">
        <div class="uk-container">
            <div class="uk-grid-small" uk-grid>
                <div class="uk-width-expand@s">
                    <p class="uk-text-small">� 2024 LaburApp. Todos los derechos reservados.</p>
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