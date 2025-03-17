<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.js" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<h1>Libros</h1>
	<form action="del" method="get">
		<input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}" />
		<strong>¿Desea eliminar el dato?</strong>
		<br>
		<button type="submit">Guardar</button>
		<button onclick="window.location.href='/ismac-libreria-online-web/libros/findAll'; return false;">Cancelar</button>
	</form>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script type="text/javascript">
		$('#cancelButton').on('click', function() {
			alertify.message('Operación cancelada');
			window.location.href = '${pageContext.request.contextPath}/libros/findAll';
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
