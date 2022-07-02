<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="ConnTools.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="Styles.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post">
<input type="text" name="p" placeholder="previous password">
<input type="password" name="l" placeholder="latest password">
<button type="submit" name="save" class="btn btn-primary" value="ok">Change</button>
</form>
<a href="Update_schemes.jsp"><button>Back</button></a>
<%
String e=null;
e=request.getParameter("save");
Searching s=new Searching();
if(e!=null){
	String a,b,c;
	a=request.getParameter("p");
	b=request.getParameter("l");
	c="nareshchikku";
	Usr o=new Usr();
	out.print(o.change(a, b, c));
}
%>
</body>
</html>