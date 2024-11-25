<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Formulario</title>
</head>
<body>
<h1>Formulario</h1>

<form action="hello-servlet" method="post">
    <div>
        <label for="nombre">Nombre</label>
        <input type="text" id="nombre" name="nombre">
    </div>
    <div>
        <label for="apellido">Apellido</label>
        <input type="text" id="apellido" name="apellido">
    </div>
    <div>
        <label for="edad">Edad</label>
        <select id="edad" name="edad">
            <option value="">Selecciona</option>
            <option value="18">10</option>
            <option value="19">20</option>
            <option value="20">30</option>
            <option value="21">40</option>
            <option value="22">50</option>
        </select>
    </div>
    <div>
        <label for="peso">Peso</label>
        <input type="number" id="peso" name="peso"> kg
    </div>
    <div>
        <label>Género:</label><br>
        <div>
            <input type="radio" id="male" name="sexo" value="hombre">
            <label for="male">Hombre</label>
        </div>
        <div>
            <input type="radio" id="fem" name="sexo" value="mujer">
            <label for="fem">Mujer</label>
        </div>
    </div>
    <div>
        <label>Estado Civil:</label><br>
        <div>
            <input type="radio" id="soltero" name="estado" value="soltero">
            <label for="soltero">Soltero</label>
        </div>
        <div>
            <input type="radio" id="casado" name="estado" value="casado">
            <label for="casado">Casado</label>
        </div>
        <div>
            <input type="radio" id="otro" name="estado" value="otro">
            <label for="otro">Otro</label>
        </div>
    </div>
    <div>
        <label>Aficiones</label>
        <div>
            <input type="checkbox" id="cine" name="cine">
            <label for="cine">Cine</label>
            <input type="checkbox" id="deporte" name="deporte">
            <label for="deporte">Deporte</label>
            <input type="checkbox" id="literatura" name="literatura">
            <label for="literatura">Literatura</label>
            <input type="checkbox" id="musica" name="musica">
            <label for="musica">Música</label>
            <input type="checkbox" id="tebeos" name="tebeos">
            <label for="tebeos">Tebeos</label>
            <input type="checkbox" id="television" name="television">
            <label for="television">Televisión</label>
        </div>
    </div>
    <button type="submit">Enviar</button>
    <button type="reset">Borrar</button>
</form>

</body>
</html>