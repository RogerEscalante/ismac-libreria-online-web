<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
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
		<h1>Categorias</h1>
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
						<th data-field="idCategoria" data-sortable="true">id Categoria</th>
						<th data-field="categoria" data-sortable="true">Categoria</th>
						<th data-field="descripcion" data-sortable="true">Descripción</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${categorias}">
						<tr>
							<td>${item.idCategoria}</td>
							<td>${item.categoria}</td>
							<td>${item.descripcion}</td>
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

