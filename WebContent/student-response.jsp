<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Response Action</title>
</head>
<body>
Student is Confirmed: ${param.firstName} ${param.lastName}
<br><br>
Student's Country : ${param.Country } 
<br><br>
Student's favorite Language: ${param.favLang }
<br><br>
Student's Qualification:<!--   ${param.qual}${param.qual}${param.qual} show only one first value-->
<ul>
  <%
      String[] langs=request.getParameterValues("qual");
      if(langs!=null){
      for(String temp : langs){
      out.println("<li>"+temp+"</li>");
      }
  }else{out.println("<li>"+null+"</li>");}
   %>
   ${param.qual1 }
   ${param.qual2 }

</ul>
</body>
</html>