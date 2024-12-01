<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@page import="org.iesbelen.model.Fabricante"%>
<%@page import="java.util.List"%>
<%@ page import="org.iesbelen.model.Producto" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Productos</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<%@ include file="/WEB-INF/jsp/fragmentos/estilo.jspf" %>
</head>
<body>
<header>
	<%@ include file="/WEB-INF/jsp/fragmentos/header.jspf" %>
	<%@ include file="/WEB-INF/jsp/fragmentos/nav.jspf" %>
</header>
<main class="body_sec">
	<section id="Content">
		<div class="container">
			<h1>Productos</h1>
			<%
				Usuario u = (Usuario) session.getAttribute("usuario-logado");
				String rol = (u != null) ? u.getRol() : " ";
				if ("administrador".equals(rol)) {
			%>
			<div class="mb-3">
				<form action="${pageContext.request.contextPath}/tienda/productos/crear">
					<input type="submit" value="Crear" class="btn btn-primary">
				</form>
			</div>
			<% } %>

			<form action="${pageContext.request.contextPath}/tienda/productos/" method="get" class="mb-4">
				<div class="input-group">
					<input type="search" name="filtrar-por-nombre" class="form-control" placeholder="Buscar producto...">
					<button type="submit" class="btn btn-secondary">Filtrar</button>
				</div>
			</form>

			<%
				if (request.getAttribute("listaProductos") != null) {
					List<Producto> listaProducto = (List<Producto>) request.getAttribute("listaProductos");
			%>
			<table class="table table-bordered">
				<thead class="table-light">
				<tr>
					<th>Código</th>
					<th>Nombre</th>
					<th>Precio</th>
					<% if ("administrador".equals(rol)) { %>
					<th>Acción</th>
					<% } %>
				</tr>
				</thead>
				<tbody>
				<%
					for (Producto producto : listaProducto) {
				%>
				<tr>
					<td><%= producto.getIdProducto() %></td>
					<td><%= producto.getNombre() %></td>
					<td><%= producto.getPrecio() %></td>
					<% if ("administrador".equals(rol)) { %>
					<td>
						<form action="${pageContext.request.contextPath}/tienda/productos/<%= producto.getIdProducto() %>" style="display: inline;">
							<button type="submit" class="btn btn-info btn-sm">Ver Detalle</button>
						</form>
						<form action="${pageContext.request.contextPath}/tienda/productos/editar/<%= producto.getIdProducto() %>" style="display: inline;">
							<button type="submit" class="btn btn-warning btn-sm">Editar</button>
						</form>
						<form action="${pageContext.request.contextPath}/tienda/productos/borrar/" method="post" style="display: inline;">
							<input type="hidden" name="__method__" value="delete">
							<input type="hidden" name="codigo" value="<%= producto.getIdProducto() %>">
							<button type="submit" class="btn btn-danger btn-sm">Eliminar</button>
						</form>
					</td>
					<% } %>
				</tr>
				<%
					}
				%>
				</tbody>
			</table>
			<% } else { %>
			<div class="alert alert-warning text-center" role="alert">
				No hay registros de producto.
			</div>
			<% } %>
		</div>
	</section>
</main>
<footer>
	<%@ include file="/WEB-INF/jsp/fragmentos/footer.jspf" %>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0+Wv0vQWzFhVAqOG7xzw8lLa+d/b9huL3n2Qv3wUDeYsZkwv" crossorigin="anonymous"></script>
</body>
</html>
