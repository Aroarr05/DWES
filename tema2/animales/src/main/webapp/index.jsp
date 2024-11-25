<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
   String nombres[] = {
           "Ballena",
           "Caballido",
           "Camello",
           "Cebra",
           "Elefante",
           "Hipopotamo",
           "Jirafa",
           "Leon",
           "Leopardo",
           "Medusa",
           "Mono",
           "Oso",
           "Oso blanco",
           "Pajaro",
           "Pinguino",
           "Rinoceronte",
           "Serpiente",
           "Tigre",
           "Tortuga",
           "Tortuga marina"
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
           "tigre.svg",
           "tortuga.svg",
           "tortuga-marina.svg"
   };

   int random = (int) (Math.random()*img.length);


%>


<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<h3><%= nombres[random]%></h3>
<img src="imgAnimales/<%= img[random]%>">

<br/>

</body>
</html>