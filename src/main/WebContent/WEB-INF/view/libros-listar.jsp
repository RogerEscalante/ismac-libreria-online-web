<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="l" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
	<title>Insert title here</title>
</head>
<body>
	<nav></nav>
	<section>
		<div class="container" style="padding-top: 5px;">
			<h1>Libros</h1>
		</div>
		<div class="container" style="text-align: center;">
			<button class="btn btn-sm btn-primary" id="btnAgregar">
				<i class="fa-solid fa-plus"></i>
			</button>
		</div>
		<div class="table-responsive container">
			<table id="tabla1" name="tabla1" data-search="true" data-pagination="true" data-height="600" class="table table-striped table-sm">
				<thead>
					<tr>
						<th>idLibro</th>
						<th data-sortable="true">titulo</th>
						<th data-sortable="true">editorial</th>
						<th data-sortable="true">numPaginas</th>
						<th data-sortable="true">edicion</th>
						<th data-sortable="true">idioma</th>
						<th data-sortable="true">fechaPublicacion</th>
						<th data-sortable="true">descripcion</th>
						<th data-sortable="true">tipoPasta</th>
						<th data-sortable="true">ISBN</th>
						<th data-sortable="true">numEjemplares</th>
						<th data-sortable="true">portada</th>
						<th data-sortable="true">presentacion</th>
						<th data-sortable="true">precio</th>
						<th data-sortable="true">categoria</th>
						<th data-sortable="true">autor</th>
						<th data-sortable="true">acciones</th>
					</tr>
				</thead>
				<tbody>
					<l:forEach var="item" items="${libros}">
						<tr>
							<td id="idLibro">${item.idLibro}</td>
							<td>${item.titulo}</td>
							<td>${item.editorial}</td>
							<td>${item.numPaginas}</td>
							<td>${item.edicion}</td>
							<td>${item.idioma}</td>
							<td>${fn:substring(item.fechaPublicacion,0,10)}</td>
							<td>${item.descripcion}</td>
							<td>${item.tipoPasta}</td>
							<td>${item.isbn}</td>
							<td>${item.numEjemplares}</td>
							<td>
								<img alt="foto.jpg" width="100" height="100" src="/ismac-libreria-online-web/resources/img/${item.portada}">
							</td>
							<td>${item.presentacion}</td>
							<td>${item.precio}</td>
							<td>${item.categoria.categoria}</td>
							<td>${item.autor.nombre} ${item.autor.apellido}</td>
							<td>
								<button class="btn btn-sm btn-success btnActualizar">
									<i class="fa-solid fa-pen-to-square"></i>
								</button>
								<button class="btn btn-sm btn-danger btnBorrar" onclick="window.location.href='/ismac-libreria-online-web/libros/findOne?idLibro=${item.idLibro}&opcion=2'; return false;">
									<i class="fa-solid fa-trash"></i>
								</button>
							</td>
						</tr>
					</l:forEach>
				</tbody>
			</table>
		</div>
	</section>
	<footer></footer>
	
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
		
		$('#btnAgregar').on('click', function() {
			window.location.href = '${pageContext.request.contextPath}/libros/findOne?opcion=1'
		});
		
		$('#btnActualizar').on('click', '.btnActualizar' function() {
			var idLibro = $(this).closest('tr').find('.idLibro').text();
			window.location.href = '${pageContext.request.contextPath}/libros/findOne?idLibro='+ idLibro +'&opcion=1'
		});
		
		$('#btnEliminar').on('click', function() {
			var idLibro = $(this).closest('tr').find('.idLibro').text();
			window.location.href = '${pageContext.request.contextPath}/libros/findOne?idLibro='+ idLibro +'&opcion=2'
		});
	</script>
</body>
</html>
