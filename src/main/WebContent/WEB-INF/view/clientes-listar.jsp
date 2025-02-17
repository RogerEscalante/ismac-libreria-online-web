<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<nav></nav>
	<section>
		<h1>Clientes</h1>
		<div class="container" style="text-align: center;">
			<button class="btn btn-primary" onclick="window.location.href='/ismac-libreria-online-web/clientes/findOne?opcion=1'; return false;">
				Agregar
			</button>
		</div>
		<div class="table-responsive">
			<table id="tabla1" 
					name="tabla1" 
					data-height="600" 
					data-search="true" 
					data-pagination="true" 
					data-toggle="table" 
					data-tollbar=".toolbar" 
					class="table table-striped table-sm">
				<thead>
					<tr>
						<th data-field="idCliente" data-sortable="true">id Cliente</th>
						<th data-field="cedula" data-sortable="true">Cédula</th>
						<th data-field="nombre" data-sortable="true">Nombre</th>
						<th data-field="apellido" data-sortable="true">Apellido</th>
						<th data-field="direccion" data-sortable="true">Dirección</th>
						<th data-field="telefono" data-sortable="true">Teléfono</th>
						<th data-field="correo" data-sortable="true">Correo</th>
						<th data-field="acciones" data-sortable="true">Acciones</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${clientes}">
						<tr>
							<td>${item.idCliente}</td>
							<td>${item.cedula}</td>
							<td>${item.nombre}</td>
							<td>${item.apellido}</td>
							<td>${item.direccion}</td>
							<td>${item.telefono}</td>
							<td>${item.correo}</td>
							<td>
								<button class="btn btn-success" onclick="window.location.href='/ismac-libreria-online-web/clientes/findOne?idCliente=${item.idCliente}&opcion=1'; return false;">Actualizar</button>
								<button class="btn btn-danger" onclick="window.location.href='/ismac-libreria-online-web/clientes/findOne?idCliente=${item.idCliente}&opcion=2'; return false;">Borrar</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</section>
	<footer>
		<div class="container">
			<p class="m-0 text-center">Copyright &copy; Librerio ABC - 2025</p>
		</div>
	</footer>
	
	
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script type="text/javascript">
		var $tabla = $('#tabla1');
		$(function() {
			$tabla.bootstrapTable({
				sortReset: true
			})
		});
	</script>
</body>
</html>

