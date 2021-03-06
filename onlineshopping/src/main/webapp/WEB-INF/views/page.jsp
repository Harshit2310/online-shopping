<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="ContextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping -${title}</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script>
window.menu = '${title}';
window.ContextRoot = '${ContextRoot}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">


<!-- Bootstrap Solar Theme -->
<link href="${css}/bootstrap-solar-theme.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="${css}/datatables.css" rel="stylesheet">
<link href="${css}/datatables.min.css" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>
<body>
	<div class="wrapper">

		<!-- Navigation -->
		<%@include file="/WEB-INF/shared/navbar.jsp"%>

		<!-- Page Content -->
		<div class="content">
		
			<!-- Loading the home content -->
			<c:if test="${userClickHome == true }">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Loading the About Us content -->
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Loading the Contact Us content -->
			<c:if test="${userClickContact == true }">
				<%@include file="contacts.jsp"%>
			</c:if>
			
			<!-- Loading the Contact Us content -->
			<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%@include file="listProducts.jsp"%>
			</c:if>
			
			<!-- Loading the Single product page content -->
			<c:if test="${userClickShowProduct}">
				<%@include file="singleProduct.jsp"%>
			</c:if>
	
		</div>
		<!-- Footer -->
		<%@include file="/WEB-INF/shared/footer.jsp"%>

		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/bootstrap.min.js"></script>

		<!-- Jquery Data-Table -->
		<script src="${js}/datatables.js"></script>		
		<script src="${js}/datatables.min.js"></script>		



		<!-- Self Coded JavaScript  -->
		<script src="${js}/myapp.js"></script>

	</div>
</body>
</html>