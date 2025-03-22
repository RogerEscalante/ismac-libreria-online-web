<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
</head>
<body>
	<nav class="navbar bg-primary">
		<ul class="nav d-flex w-100">
			<li class="nav-item">
				<a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/">Home</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath}/clientes/findAll">Clientes</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath}/categorias/findAll">Categorias</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath}/autores/findAll">Autores</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath}/libros/findAll">Libros</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath}/facturacion/">Facturación</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath}/acercade/">Acerca de</a>
			</li>
			<li class="nav-item ms-auto">
				<a class="nav-link" href="${pageContext.request.contextPath}/login/">Iniciar sesión</a>
			</li>
		</ul>
	</nav>
	<section>
		<h1>HOLA MUNDO DESDE TOMCAT!!</h1>
		<p>Este es un ejemplo de proyectos de venta de libros programado con spring framework, bootstrap y mysql.</p>
	</section>
	<footer class="bg-dark text-white text-center py-3">
		<div class="container">
			<p>&copy; 2025 Librería ABC. Todos los derechos reservados.</p>
			<p>Desarrollador por <strong>ismac libreria</strong></p>
		</div>
	</footer>
	
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
</body>
</html>
