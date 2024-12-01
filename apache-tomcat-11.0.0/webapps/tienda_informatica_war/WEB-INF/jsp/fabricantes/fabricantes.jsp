<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@page import="org.iesbelen.model.Fabricante"%>
<%@page import="java.util.List"%>
<%@ page import="org.iesbelen.model.FabricanteDTO" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Fabricantes</title>
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
<main class="body_sec">
	<section id="Content">
		<div id="contenedora" style="float:none; margin: 0 auto;width: 900px;">
			<div class="clearfix">
				<div style="float: left; width: 50%">
					<h1>Fabricantes</h1>
				</div>
				<div style="float: none;width: auto;overflow: hidden;min-height: 80px;position: relative;">
					<div style="position: absolute; left: 39%; top: 39%;">
						<% Usuario usuario = (Usuario) session.getAttribute("usuario-logado");
							String rol = (usuario != null) ? usuario.getRol() : " ";
							if ("administrador".equals(rol)) { %>
						<form action="${pageContext.request.contextPath}/tienda/fabricantes/crear">
							<input type="submit" value="Crear">
						</form>
						<% } %>
					</div>
				</div>
			</div>
			<div class="clearfix">
				<hr/>
			</div>
			<div class="clearfix">
				<form action="${pageContext.request.contextPath}/tienda/fabricantes" style="display: inline;" method="get">
					<div style="float: left;width: 33%">
						<label>ORDENAR</label>
						<select name="ordenar-por">
							<option value="nombre">nombre</option>
							<option value="codigo">codigo</option>
						</select>
					</div>
					<div style="float: left;width: 33%">
						<label>MODO</label>
						<select name="modo-ordenar">
							<option value="asc">asc</option>
							<option value="desc">desc</option>
						</select>
					</div>
					<div style="float: left;width: 33%">
						<input type="submit" name="filtrar-por-nombre" value="Ordenar" />
					</div>
				</form>
			</div>
			<hr/>
			<div class="clearfix">
				<div style="float: left;width: 22%">Código</div>
				<div style="float: left;width: 22%">Nombre</div>
				<div style="float: left;width: 22%">Nº Productos</div>
				<% if ("administrador".equals(rol)) { %>
				<div style="float: none;width: auto;overflow: hidden;">Acción</div>
				<% } %>
			</div>
			<div class="clearfix">
				<hr/>
			</div>
			<%
				if (request.getAttribute("listaFabricantes") != null) {
					List<FabricanteDTO> listaFabricante = (List<FabricanteDTO>)request.getAttribute("listaFabricantes");

					for (FabricanteDTO fabricante : listaFabricante) {
			%>
			<div style="margin-top: 6px;" class="clearfix">
				<div style="float: left;width: 22%"><%= fabricante.getIdFabricante() %></div>
				<div style="float: left;width: 22%"><%= fabricante.getNombre() %></div>
				<div style="float: left;width: 22%"><%= fabricante.getNumProductos() %></div>
				<% if ("administrador".equals(rol)) { %>
				<div style="float: none;width: auto;overflow: hidden;">
					<form action="${pageContext.request.contextPath}/tienda/fabricantes/<%= fabricante.getIdFabricante() %>" style="display: inline;">
						<input type="submit" value="Ver Detalle" class="btn-ver" />
					</form>
					<form action="${pageContext.request.contextPath}/tienda/fabricantes/editar/<%= fabricante.getIdFabricante() %>" style="display: inline;">
						<input type="submit" value="Editar" class="btn-editar" />
					</form>
					<form action="${pageContext.request.contextPath}/tienda/fabricantes/borrar/" method="post" style="display: inline;">
						<input type="hidden" name="__method__" value="delete" />
						<input type="hidden" name="codigo" value="<%= fabricante.getIdFabricante() %>" />
						<input type="submit" value="Eliminar" class="btn-eliminar" />
					</form>
				</div>
				<% } %>
			</div>
			<%
				}
			} else {
			%>
			No hay registros de fabricante
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
