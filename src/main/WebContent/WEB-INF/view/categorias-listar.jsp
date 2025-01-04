<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Categorias</h1>
	<table>
		<thead>
			<tr>
				<th>idCategoria</th>
				<th>categoria</th>
				<th>descripcion</th>
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
</body>
</html>
