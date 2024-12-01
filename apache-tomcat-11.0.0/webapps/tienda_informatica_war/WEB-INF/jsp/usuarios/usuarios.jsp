<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="org.iesbelen.model.Fabricante"%>
<%@page import="java.util.List"%>
<%@ page import="org.iesbelen.model.Producto" %>
<%@ page import="org.iesbelen.model.Usuario" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        .clearfix::after {
            content: "";
            display: block;
            clear: both;
        }
    </style>
    <%@ include file="/WEB-INF/jsp/fragmentos/estilo.jspf" %>
</head>
<body>
<header>
    <%@ include file="/WEB-INF/jsp/fragmentos/header.jspf" %>
    <%@ include file="/WEB-INF/jsp/fragmentos/nav.jspf" %>
</header>
<main class = "body_sec">
    <section id="Content">
        <div id="contenedora" style="float:none; margin: 0 auto;width: 900px;" >
            <div class="clearfix">
                <div style="float: left; width: 50%">
                    <h1>Usuarios</h1>
                </div>
                <% Usuario u = (Usuario) session.getAttribute("usuario-logado");
                    String rol = (u != null) ? u.getRol() : " ";
                    if ("administrador".equals(rol)) { %>
                <div style="float: none;width: auto;overflow: hidden;min-height: 80px;position: relative;">
                    <div style="position: absolute; left: 39%; top : 39%;">
                        <form action="${pageContext.request.contextPath}/tienda/usuarios/crear">
                            <input type="submit" value="Crear">
                        </form>
                    </div>
                    <% } %>

                </div>
            </div>
            <div class="clearfix">
                <hr/>
            </div>
            <div class="clearfix">
                <div style="float: left;width: 10%">Código</div>
                <div style="float: left;width: 20%">Usuario</div>
                <div style="float: left;width: 20%">Contraseña</div>
                <div style="float: left;width: 20%">Rol</div>
                <% if ("administrador".equals(rol)) { %>
                <div style="float: left;width: 20%;overflow: hidden;">Accion</div>
                <% } %>
            </div>
            <div class="clearfix">
                <hr/>
            </div>
            <%
                if (request.getAttribute("listaUsuario") != null) {
                    List<Usuario>listaUsuario = (List<Usuario>)request.getAttribute("listaUsuario");

                    for (Usuario usuario : listaUsuario) {
            %>

            <div style="margin-top: 6px;" class="clearfix">
                <div style="float: left;width: 10%"><%= usuario.getIdUsuario()%></div>
                <div style="float: left;width: 20%"><%= usuario.getUsuario()%></div>
                <div style="float: left;width: 20%"><%= usuario.getPassword().substring(0,4)%></div>
                <div style="float: left;width: 20%"><%= usuario.getRol()%></div>
                <% if ("administrador".equals(rol)) { %>

                <div style="float: none;width: auto;overflow: hidden;">
                    <form action="${pageContext.request.contextPath}/tienda/usuarios/<%= usuario.getIdUsuario()%>" style="display: inline;">
                        <input type="submit" value="Ver Detalle" class="btn-ver" />
                    </form>
                    <form action="${pageContext.request.contextPath}/tienda/usuarios/editar/<%= usuario.getIdUsuario()%>" style="display: inline;">
                        <input type="submit" value="Editar" class="btn-editar" />
                    </form>
                    <form action="${pageContext.request.contextPath}/tienda/usuarios/borrar/" method="post" style="display: inline;">
                        <input type="hidden" name="__method__" value="delete" />
                        <input type="hidden" name="codigo" value="<%= usuario.getIdUsuario()%>" />
                        <input type="submit" value="Eliminar" class="btn-eliminar" />
                    </form>
                </div>
                <% } %>
            </div>
            <%
                }
            } else {
            %>
            No hay registros de Usuarios
            <% } %>
        </div>
    </section>
</main>
<footer>
    <%@ include file ="/WEB-INF/jsp/fragmentos/footer.jspf"%>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0+Wv0vQWzFhVAqOG7xzw8lLa+d/b9huL3n2Qv3wUDeYsZkwv" crossorigin="anonymous"></script>
</body>
</html>