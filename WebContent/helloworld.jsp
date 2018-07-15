<%@ page import="dasila.kamal.jsp.*" %>
<html>
<body>
<h3>Hello World of JAva!</h3>
The time on the server is <%= new java.util.Date() %>

<br><br>
<!-- JSP expression -->
<h3>JSP expression</h3>
Converting a string to uppercase: <%= new String("Hello World").toUpperCase() %>
<br><br>
25 multiplied by 4 equals=  <%=25*4 %>
<br><br>
Is 75 less than 50=  <%= 75<50 %>

<br><br>
<!-- Jsp Scriptlet -->
<h3>Jsp Scriptlet</h3>
<%
for(int i=1;i<=5;i++){
out.println("<br> I am Coder"+i);
}
 %>

<br><br>
<!-- Jsp Declaration -->
<h3>Jsp Declaration</h3>

<%!
String makeItLower(String data){
return data.toLowerCase();
} 
 %>
 
 Lower case "Hello world": <%=makeItLower("heLLo World") %>

<br><br>
<!-- Jsp Declaration through Java Class -->
<h3>Jsp Declaration through Java Class</h3>
Let's have some Fun: <%=dasila.kamal.jsp.FunUtils.makeItUpper("fun In CoDeing") %>

Again do some Fun:<%=FunUtils.makeItLower("Fun in LOWER") %>

<br><br>
<!-- Jsp Built In Objects -->
<h3>Jsp Built In Objects</h3>
Request user agent: <%=request.getHeader("User-Agent") %>

<br><br>
Request language: <%=request.getLocale() %>


<br><br>
<!-- header footer call -->
<jsp:include page="my-header.html"/>
<jsp:include page="my-footer.jsp"/>




</body>

</html>