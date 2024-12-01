<%@ page import="java.util.Optional" %>
<%@ page import="org.iesbelen.model.Usuario" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Inicio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        #contenedor {
            display: flex;
            align-items: center;
            justify-content: center;
        }
    </style>
    <%@ include file="/WEB-INF/jsp/fragmentos/estilo.jspf" %>
</head>
<body>
<%@ include file="/WEB-INF/jsp/fragmentos/header.jspf" %>
<%@ include file="/WEB-INF/jsp/fragmentos/nav.jspf" %>
<br>
<div class="d-grid gap-2" id="contenedor">
    <a class="btn btn-morado-claro btn-lg" href="<%=application.getContextPath()%>/tienda/fabricantes">FABRICANTES</a>
    <a class="btn btn-morado-medio btn-lg" href="<%=application.getContextPath()%>/tienda/productos">PRODUCTOS</a>
    <a class="btn btn-morado-oscuro btn-lg" href="<%=application.getContextPath()%>/tienda/usuarios">USUARIOS</a>
</div>


<%@ include file ="/WEB-INF/jsp/fragmentos/footer.jspf"%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0+Wv0vQWzFhVAqOG7xzw8lLa+d/b9huL3n2Qv3wUDeYsZkwv" crossorigin="anonymous"></script>


</body>
</html>