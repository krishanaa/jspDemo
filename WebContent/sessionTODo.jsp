<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>TO DO LIST</title>
</head>
<body>
<!-- step1: create html form -->
<form action="sessionTODo.jsp">

	Add new item:<input type="text" name="theItem"/>
	<input type="submit" value="Submit">
	
</form>



<!-- step2: add new item to To DO list -->
<%
		//get the To do item from the session
		List<String> items=(List<String>) session.getAttribute("myTodoList");
		
		//if the To DO items doesn't exist, then create a new one
		if(items == null){
		     items=new ArrayList<String>();
		     session.setAttribute("myTodoList", items);
		}
		
		//see if there is form data to add
		String theitem=request.getParameter("theItem");
		if(theitem != null){
		items.add(theitem);
		}
 %>
<!-- step3: display all To Do item from session-->
<hr>
<b>To List Items:</b><br>
<ol>

<%
	for(String temp: items){
	out.println("<li>"+ temp +"</li>");
	}
 %>

</ol>

</body>
</html>