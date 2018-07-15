<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TO DO LIST</title>
</head>
<body>
<!-- step1: create html form -->
<form action="todo-session.jsp">

	Add new item:<input type="text" name="theItem"/>
	<input type="submit" value="Submit">
	
</form>

<br>
Item entered: <%=request.getParameter("theItem") %>

</body>
</html>