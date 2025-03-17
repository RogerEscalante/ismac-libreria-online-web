<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
</head>
<body>
	<nav></nav>
	<section>
		<div class="container" style="padding-top: 5px;">
			<h1>Libros</h1>
		</div>
		<div class="container">
			<form action="add" method="post" class="needs-validations" novalidate>
				<input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}" />
				<div class="form-group"">
					<label class="form-label" for="titulo">Titulo</label>
					<input type="text" class="form-control" id="titulo" name="titulo" value="${libro.titulo}" required />
				</div>
				<div class="form-group"">
					<label class="form-label" for="editorial">Editorial</label>
					<input type="text" class="form-control" id="editorial" name="editorial" value="${libro.editorial}" required />
				</div>
				<div class="form-group"">
					<label class="form-label" for="numPaginas">Numero paginas</label>
					<input type="number" class="form-control" id="numPaginas" name="numPaginas" value="${libro.numPaginas}" required />
				</div>
				<div class="form-group"">
					<label class="form-label" for="edicion">Edicion</label>
					<input type="text" class="form-control" id="edicion" name="edicion" value="${libro.edicion}" required />
				</div>
				<div class="form-group"">
					<label class="form-label" for="idioma">Idioma</label>
					<input type="text" class="form-control" id="idioma" name="idioma" value="${libro.idioma}" required />
				</div>
				<div class="form-group"">
					<label class="form-label" for=""></label>
					<input type="date" class="form-control" id="fechaPublicacion" name="fechaPublicacion" value="${fn:substring(libro.fechaPublicacion, 0, 10)}" required />
				</div>
				<div class="form-group"">
					<label class="form-label" for="descripcion">Descripcion</label>
					<input type="text" class="form-control" id="descripcion" name="descripcion" value="${libro.descripcion}" required />
				</div>
				<div class="form-group"">
					<label class="form-label" for="tipoPasta">Tipo pasta</label>
					<input type="text" class="form-control" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta}" required />
				</div>
				<div class="form-group"">
					<label class="form-label" for="isbn">ISBN</label>
					<input type="text" class="form-control" id="isbn" name="isbn" value="${libro.isbn}" required />
				</div>
				<div class="form-group"">
					<label class="form-label" for="numEjemplares">Numero ejemplares</label>
					<input type="number" class="form-control" id="numEjemplares" name="numEjemplares" value="${libro.numEjemplares}" required />
				</div>
				<div class="form-group"">
					<label class="form-label" for="portada">Portada</label>
					<input class="form-control" type="text" id="portada" name="portada" value="${libro.portada}" required />
				</div>
				<div class="form-group"">
					<label class="form-label" for="presentacion">Presentacion</label>
					<input class="form-control" type="text" id="presentacion" name="presentacion" value="${libro.presentacion}" required />
				</div>
				<div class="form-group"">
					<label class="form-label" for="precio">Precio</label>
					<input class="form-control" type="number" step="any" id="precio" name="precio" value="${libro.precio}" required />
				</div>
				<div class="form-group"">
					<label class="form-label" for="idCategoria">Categoria</label>
					<select id="idCategoria" name="idCategoria" class="form-select">
						<c:forEach var="item" items="${categorias}">
							<option value="${item.idCategoria}" ${item.idCategoria == libro.categoria.idCategoria = 'selected' : ''}>${item.categoria}</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group"">
					<label class="form-label" for="idAutor">Autores</label>
					<select id="idAutor" name="idAutor" class="form-select">
						<c:forEach var="item" items="${autores}">
							<option value="${item.idAutor}" ${item.idAutor == libro.autor.idAutor = 'selected' : ''}>${item.nombre} ${item.apellido}</option>
						</c:forEach>
					</select>
				</div>
				<div class="container" style="padding-top: 10px; text-align: right;">
					<button class="btn btn-sm btn-primary "type="submit">Guardar</button>
					<button class="btn btn-sm btn-danger btn-cancelar">Cancelar</button>
				</div>
			</form>
		</div>
	</section>
	<footer></footer>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script type="text/javascript">
		$('.btn-cancelar').on('click', function() {
			window.location.href = '${pageContext.request.contextPath}/libros/findAll';
		});
		(() => {
			'use strict'
			const forms = document.querySelectorAll('.needs-validation')
			Array.from(forms).forEach(form => {
				form.addEventListener('submit', event => {
					if (!form.checkValidation()) {
						event.preventDefault()
						event.stopPropagation()
					}
				}, false)
			})
		})();
	</script>
</body>
</html>
