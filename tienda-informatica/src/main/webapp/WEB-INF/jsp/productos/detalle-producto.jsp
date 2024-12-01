<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="org.iesbelen.model.Fabricante"%>
<%@page import="java.util.Optional"%>
<%@ page import="org.iesbelen.model.FabricanteDTO" %>
<%@ page import="org.iesbelen.model.Producto" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Detalle Productos</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <style>
    .clearfix::after {
      content: "";
      display: block;
      clear: both;
    }
  </style>
  <%@ include file ="/WEB-INF/jsp/fragmentos/estilo.jspf"%>
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
          <h1>Detalle Fabricante</h1>
        </div>
        <div style="float: none;width: auto;overflow: hidden;min-height: 80px;position: relative;">

          <div style="position: absolute; left: 39%; top : 39%;">

            <form action="${pageContext.request.contextPath}/tienda/productos/" >
              <input type="submit" value="Volver" />
            </form>
          </div>

        </div>
      </div>

      <div class="clearfix">
        <hr/>
      </div>

      <% 	Optional<Producto> producto = (Optional<Producto>) request.getAttribute("producto");
        if (producto.isPresent()) {
      %>

      <div style="margin-top: 6px;" class="clearfix">
        <div style="float: left;width: 50%">
          <label>Código</label>
        </div>
        <div style="float: none;width: auto;overflow: hidden;">
          <input value="<%= producto.get().getIdProducto() %>" readonly="readonly"/>
        </div>
      </div>
      <div style="margin-top: 6px;" class="clearfix">
        <div style="float: left;width: 50%">
          <label>Nombre</label>
        </div>
        <div style="float: none;width: auto;overflow: hidden;">
          <input value="<%= producto.get().getNombre() %>" readonly="readonly"/>
        </div>
        <div style="float: left;width: 50%">
          <label>Precio</label>
        </div>
        <div style="float: none;width: auto;overflow: hidden;">
          <input value="<%= producto.get().getPrecio() %>" readonly="readonly"/>
        </div>
        <div style="float: left;width: 50%">
          <label>Codigo Fabricante</label>
        </div>
        <div style="float: none;width: auto;overflow: hidden;">
          <input value="<%= producto.get().getCodigo_fabricante() %>" readonly="readonly"/>
        </div>
      </div>

      <% 	} else { %>

      request.sendRedirect("productos/");

      <% 	} %>

    </div>


  </section>
</main>
<footer>
  <%@ include file ="/WEB-INF/jsp/fragmentos/footer.jspf"%>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0+Wv0vQWzFhVAqOG7xzw8lLa+d/b9huL3n2Qv3wUDeYsZkwv" crossorigin="anonymous"></script>
</body>
</html>