<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Autores</h1>
	<table>
		<thead>
			<tr>
				<th>idAutor</th>
				<th>nombre</th>
				<th>apellido</th>
				<th>pais</th>
				<th>direccion</th>
				<th>telefono</th>
				<th>correo</th>
			</tr>
		</thead>
		<tbody>
			<a:forEach var="item" items="${autores}">
				<tr>
					<td>${item.idAutor}</td>
					<td>${item.nombre}</td>
					<td>${item.apellido}</td>
					<td>${item.pais}</td>
					<td>${item.direccion}</td>
					<td>${item.telefono}</td>
					<td>${item.correo}</td>
				</tr>
			</a:forEach>
		</tbody>
	</table>
</body>
</html>
