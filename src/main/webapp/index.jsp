<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Filter Demo</title>
<style type="text/css">
	body{
		padding: 2rem;
	}
	
	.card{
		padding: 1rem;
		font-size: 1.4rem;
		background-color: silver;
		box-shadow: 1px 1px 2px gray;
		border-radius: 0.4rem;
	}
	
	.action{
		padding: 2rem 0;
	}
</style>
</head>
<body>

<h1>Hello Filter</h1>
<div class="action">
	<% String hello = getServletContext().getContextPath().concat("/hello"); %>
	<a href="<%=hello%>">Hello Servlet</a>
</div>
<% if(request.getAttribute("message") != null){ %>

	<div class="card">
		<%= request.getAttribute("message") %>
	</div>
<%} %>

</body>
</html>