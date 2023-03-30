<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="java.util.Map" %>
<%
  Map<String, String> errores = (Map<String, String>) request.getAttribute("errores");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Formulario de usuarios</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
        crossorigin="anonymous">
</head>
<body>
<div class="container mt-10 shadow mb-5 bg-body rounded-4 d-grid gap-3">
<h3 class="text-center mt-5 mb-3">Formulario de usuarios</h3>
<div class="container">

  <ul class="list-group list-group-flush">
    <%
      if (errores != null && errores.size() > 0) {
      for (String error : errores.values()
      ) {%>
    <li class="list-group-item text-bg-danger rounded-top rounded-4">
      <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-alert-circle" width="24" height="24"
           viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffffff" fill="none" stroke-linecap="round"
           stroke-linejoin="round">
        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
        <circle cx="12" cy="12" r="9"/>
        <line x1="12" y1="8" x2="12" y2="12"/>
        <line x1="12" y1="16" x2="12.01" y2="16"/>
      </svg>
      <%=error%>
    </li>
    <%}%>
  </ul>
  <%}%>
</div>

  <form action="/webapp-form/registro" method="post" style="padding-left: 50px;padding-right: 50px;">
    <div class="mb-3">
      <label for="username" class="form-label fs-4">Nombre</label>
      <div class="mb-1">
        <input type="text" name="username" id="username" placeholder="Tu Username" class="form-control"
               aria-describedby="userHelp">
      </div>
      <%
        if (errores != null && errores.containsKey("username")) {
          out.println("<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"icon icon-tabler icon-tabler-alert-circle\" width=\"16\" height=\"16\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"#ff2825\" fill=\"none\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path stroke=\"none\" d=\"M0 0h24v24H0z\" fill=\"none\"/><circle cx=\"12\" cy=\"12\" r=\"9\" /><line x1=\"12\" y1=\"8\" x2=\"12\" y2=\"12\" /><line x1=\"12\" y1=\"16\" x2=\"12.01\" y2=\"16\" /></svg>");
          out.println("<small id=\"userHelp\" class=\"form-text text-danger\">" + errores.get("username") + "</small>");
        }
      %>
    </div>

    <div class="mb-3">
      <label for="password" class="form-label fs-4">Password</label>
      <div class="mb-1">
        <input type="password" name="password" id="password" placeholder="Tu Password" class="form-control"
               aria-describedby="passwordHelp">
      </div>
      <%
        if (errores != null && errores.containsKey("password")) {
          out.println("<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"icon icon-tabler icon-tabler-alert-circle\" width=\"16\" height=\"16\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"#ff2825\" fill=\"none\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path stroke=\"none\" d=\"M0 0h24v24H0z\" fill=\"none\"/><circle cx=\"12\" cy=\"12\" r=\"9\" /><line x1=\"12\" y1=\"8\" x2=\"12\" y2=\"12\" /><line x1=\"12\" y1=\"16\" x2=\"12.01\" y2=\"16\" /></svg>");
          out.println("<small id=\"passwordHelp\" class=\"form-text text-danger\">" + errores.get("password") + "</small>");
        }
      %>
    </div>

    <div class="mb-3">
      <label for="email" class="form-label fs-4">Email</label>
      <div class="mb-1">
        <input type="email" name="email" id="email" placeholder="Tu Email" class="form-control"
               aria-describedby="emailHelp">
      </div>
      <%
        if (errores != null && errores.containsKey("email")) {
          out.println("<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"icon icon-tabler icon-tabler-alert-circle\" width=\"16\" height=\"16\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"#ff2825\" fill=\"none\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path stroke=\"none\" d=\"M0 0h24v24H0z\" fill=\"none\"/><circle cx=\"12\" cy=\"12\" r=\"9\" /><line x1=\"12\" y1=\"8\" x2=\"12\" y2=\"12\" /><line x1=\"12\" y1=\"16\" x2=\"12.01\" y2=\"16\" /></svg>");
          out.println("<small id=\"emailHelp\" class=\"form-text text-danger\">" + errores.get("email") + "</small>");
        }
      %>
    </div>

    <div class="mb-3">
      <label for="pais" class="form-label fs-4">País</label>
      <div class="mb-1">
        <select name="pais" id="pais" class="form-select" aria-label="Selecciona Un País" aria-describedby="paisHelp">
          <option value="" selected>Selecciona un País</option>
          <option value="ES">España</option>
          <option value="MX">Mexico</option>
          <option value="CO">Colombia</option>
          <option value="PE">Argentina</option>
          <option value="VE">Venezuela</option>
          <option value="CL">Chile</option>
        </select>
      </div>
      <%
        if (errores != null && errores.containsKey("pais")) {
          out.println("<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"icon icon-tabler icon-tabler-alert-circle\" width=\"16\" height=\"16\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"#ff2825\" fill=\"none\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path stroke=\"none\" d=\"M0 0h24v24H0z\" fill=\"none\"/><circle cx=\"12\" cy=\"12\" r=\"9\" /><line x1=\"12\" y1=\"8\" x2=\"12\" y2=\"12\" /><line x1=\"12\" y1=\"16\" x2=\"12.01\" y2=\"16\" /></svg>");
          out.println("<small id=\"paisHelp\" class=\"form-text text-danger\">" + errores.get("pais") + "</small>");
        }
      %>
    </div>

    <div class="mb-3">
      <label for="lenguajes" class="form-label fs-4">Lenguajes de Programación</label>
      <div class="mb-1">
        <select name="lenguajes" id="lenguajes" multiple class="form-select" aria-label="Seleccion de Lenguaje"
                aria-describedby="lenguajeHelp" size="6">
          <option value="java" selected>Java SE</option>
          <option value="jakartaee" selected>Jakarta EE 10</option>
          <option value="spring">Spring Boot</option>
          <option value="js">JavaScript</option>
          <option value="angular" selected>Angular</option>
          <option value="react">React</option>
        </select>
      </div>
      <%
        if (errores != null && errores.containsKey("lenguajes")) {
          out.println("<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"icon icon-tabler icon-tabler-alert-circle\" width=\"16\" height=\"16\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"#ff2825\" fill=\"none\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path stroke=\"none\" d=\"M0 0h24v24H0z\" fill=\"none\"/><circle cx=\"12\" cy=\"12\" r=\"9\" /><line x1=\"12\" y1=\"8\" x2=\"12\" y2=\"12\" /><line x1=\"12\" y1=\"16\" x2=\"12.01\" y2=\"16\" /></svg>");
          out.println("<small id=\"lenguajeHelp\" class=\"form-text text-danger\">" + errores.get("lenguajes") + "</small>");
        }
      %>
    </div>

    <div class="mb-3">
      <div aria-label="Seleccion Rol" aria-describedby="roleHelp">
        <label class="form-label fs-4">Roles</label>
        <div class="w-100"></div>
        <div class="form-check form-check-inline">
          <input type="checkbox" name="roles" value="ROLE_ADMIN" class="form-check-input">
          <label class="form-check-label">Administrador</label>
        </div>
        <div class="form-check form-check-inline">
          <input type="checkbox" name="roles" value="ROLE_USER" checked class="form-check-input">
          <label class="form-check-label">Usuario</label>
        </div>
        <div class="form-check form-check-inline">
          <input type="checkbox" name="roles" value="ROLE_MODERATOR" class="form-check-input">
          <label class="form-check-label">Moderador</label>
        </div>
      </div>
      <%
        if (errores != null && errores.containsKey("roles")) {
          out.println("<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"icon icon-tabler icon-tabler-alert-circle\" width=\"16\" height=\"16\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"#ff2825\" fill=\"none\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path stroke=\"none\" d=\"M0 0h24v24H0z\" fill=\"none\"/><circle cx=\"12\" cy=\"12\" r=\"9\" /><line x1=\"12\" y1=\"8\" x2=\"12\" y2=\"12\" /><line x1=\"12\" y1=\"16\" x2=\"12.01\" y2=\"16\" /></svg>");
          out.println("<small id=\"roleHelp\" class=\"form-text text-danger\">" + errores.get("roles") + "</small>");
        }
      %>
    </div>

    <div class="mb-3">
      <div aria-label="Seleccion Idioma" aria-describedby="idiomaHelp">
        <label class="form-label fs-4">Idiomas</label>
        <div class="w-100"></div>
        <div class="form-check form-check-inline">
          <input type="radio" name="idioma" value="es" class="form-check-input">
          <label class="form-check-label">Español</label>
        </div>
        <div class="form-check form-check-inline">
          <input type="radio" name="idioma" value="en" class="form-check-input">
          <label class="form-check-label">Inglés</label>
        </div>
        <div class="form-check form-check-inline">
          <input type="radio" name="idioma" value="fr" class="form-check-input">
          <label class="form-check-label">Francés</label>
        </div>
      </div>
      <%
        if (errores != null && errores.containsKey("idioma")) {
          out.println("<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"icon icon-tabler icon-tabler-alert-circle\" width=\"16\" height=\"16\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"#ff2825\" fill=\"none\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path stroke=\"none\" d=\"M0 0h24v24H0z\" fill=\"none\"/><circle cx=\"12\" cy=\"12\" r=\"9\" /><line x1=\"12\" y1=\"8\" x2=\"12\" y2=\"12\" /><line x1=\"12\" y1=\"16\" x2=\"12.01\" y2=\"16\" /></svg>");
          out.println("<footer id=\"idiomaHelp\" class=\"form-text text-danger\">" + errores.get("idioma") + "</footer>");
        }
      %>
    </div>

    <div class="mb-3 align-items-center">
      <label for="habilitar" class="form-label fs-4 me-4">Habilitar</label>
      <div class="form-check form-switch form-check-inline">
        <input type="checkbox" name="habilitar" id="habilitar" checked class="form-check-input">
      </div>
    </div>

    <div class="d-grid gap-2 col-6 mx-auto mb-5">
      <input type="submit" value="Enviar Formulario" class="btn btn-primary">
    </div>
    <input type="hidden" name="secreto" value="12345">
  </form>
</div>
</body>
</html>