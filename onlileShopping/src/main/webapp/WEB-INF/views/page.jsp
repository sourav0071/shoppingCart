<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="img" value="/resources/img" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping ${title}</title>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Theme CSS -->
<link href="${css}/bootstrapReasableTheme.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${css}/myApp.css" rel="stylesheet">
<script>
	window.menu = '${title}';
</script>
</head>

<body>

	<div class="wrapper">
		<!-- Navigation -->
		<%@include file="./shared/navBar.jsp"%>

		<!-- Page Content -->
		<div class="content">
			<c:if test="${userClick==true}">
				<%@include file="./home.jsp"%>
			</c:if>
			<c:if test="${userClickAbout==true}">
				<%@include file="./about.jsp"%>
			</c:if>
			<c:if test="${userClickContact==true}">
				<%@include file="./contact.jsp"%>
			</c:if>
		</div>
		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>

		<!-- /.container -->

		<!-- jQuery -->
		<script src="${js}/jquery.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>

		<!-- Self written JavaScript -->
		<script src="${js}/myApp.js"></script>

	</div>

</body>

</html>
