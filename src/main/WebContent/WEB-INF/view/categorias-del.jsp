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
<link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.js" rel="stylesheet">
<style>
	body {
		padding: 20px;
	}
	.form-container {
		max-width: 500px;
		margin: 0 auto;
	}
</style>
</head>
<body>
	<div class="form-container">
		<h1 class="text-center mb-4">Categorias</h1>
		<form action="del" method="get" id="deleteForm">
			<input type="hidden" id="idCategoria" name="idCategoria" value="${categoria.idCategoria}" />
			<div class="alert alert-warning" role="alert">
				<strong>¿Desea eliminar el dato?</strong>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-danger" id="confirmDeleteBtn">Eliminar</button>
				<button type="button" class="btn btn-secondary" id="cancelButton">Cancelar</button>
			</div>
		</form>
	</div>
	
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script type="text/javascript">
		$('#cancelButton').on('click', function() {
			alertify.message('Operación cancelada');
			window.location.href = '${pageContext.request.contextPath}/categorias/findAll';
		});
		
		$('#confirmDeleteBtn').submit(function() {
			alertify.confirm(
				'Confirmación',
				'¿Está seguro de que desea eliminar este cliente', 
				function() {
					$('#deleteForm')[0].submit();
				}, 
				function() {
					alertify.message('Operación cancelada');
				}
			);
		});
	</script>
</body>
</html>
