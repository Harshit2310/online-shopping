<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-lg-3">

	<h1 class="my-4">Shop Name</h1>
	<div class="list-group">
		<c:forEach items="${categories}" var="category">
			<a href="${ContextRoot}/show/category/${category.id}/products" class="list-group-item" id="a_${category.name}">${category.name}</a>
		</c:forEach>
	</div>

</div>