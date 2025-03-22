<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" rel="stylesheet">
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
		<div class="container" style="padding-top: 5px;">	
			<h1>Autores</h1>
		</div>
		<div class="container">
			<form action="add" method="post">
				<input type="hidden" id="idAutor" name="idAutor" value="${autores.idAutor}" />
				<div class="form-group"">
					<label class="form-label" for="nombre">Nombre</label>
					<input type="text" class="form-control" id="nombre" name="nombre" value="${autores.nombre}" />
				</div>
				<div class="form-group"">
					<label class="form-label" for="apellido">Apellido</label>
					<input type="text" class="form-control" id="apellido" name="apellido" value="${autores.apellido}" />
				</div>
				<div class="form-group"">
					<label class="form-label" for="pais">Pais</label>
					<input type="text" class="form-control" id="pais" name="pais" value="${autores.pais}" />
				</div>
				<div class="form-group"">
					<label class="form-label" for="direccion">Direccion</label>
					<input type="text" class="form-control" id="direccion" name="direccion" value="${autores.direccion}" />
				</div>
				<div class="form-group"">
					<label class="form-label" for="telefono">Telefono</label>
					<input type="text" class="form-control" id="telefono" name="telefono" value="${autores.telefono}" />
				</div>
				<div class="form-group"">
					<label class="form-label" for="correo">Correo</label>
					<input type="email" class="form-control" id="correo" name="correo" value="${autores.correo}" />
				</div>
				
				<div class="container" style="padding-top: 5px; text-align: right;">
					<div class="row">
						<div class="col-12 col-sm-6 mb-2">
							<button class="btn btn-primary form-control" type="submit">Guardar</button>
						</div>
						<div class="col-12 col-sm-6 mb-2">
							<button class="btn btn-primary form-control btn-cancelar">Cancelar</button>
						</div>
					</div>
				</div>
			</form>
		</div>
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
	<script type="text/javascript">
		$('.btn-cancelar').on('click', function() {
			window.location.href = '${pageContext.request.contextPath}/autores/findAll';
		});
	</script>
</body>
</html>
