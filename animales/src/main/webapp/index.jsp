<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
   String nombres[] = {
           "ballena",
           "caballido",
           "camello",
           "cebra",
           "elefante",
           "hipopotamo",
           "jirafa",
           "leon",
           "leopardo",
           "medusa",
           "mono",
           "oso",
           "oso-blanco",
           "pajaro",
           "pinguino",
           "rinoceronte",
           "serpiente",
           "trige",
           "tortuga",
           "tortuga-marina"
   };

   String img[] = {
           "ballena.svg",
           "caballido-mar.svg",
           "camello.svg",
           "cebra.svg",
           "elefante.svg",
           "hipopotamo.svg",
           "jirafa.svg",
           "leon.svg",
           "leopardo.svg",
           "medusa.svg",
           "mono.svg",
           "oso.svg",
           "oso-blanco.svg",
           "pajaro.svg",
           "pinguino.svg",
           "rinoceronte.svg",
           "serpiente.svg",
           "trige.svg",
           "tortuga.svg",
           "tortuga-marina.svg"
   };
   int ramdom = (int) (Math.random()*img.length);
%>


<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<h1><%= "Hello World!" %></h1>
<h3><%= nombres[ramdom]%></h3>
<img src="imgAnimales/<%= img[ramdom]%>">

<br/>
<a href="hello-servlet">Hello Servlet</a>

</body>
</html>