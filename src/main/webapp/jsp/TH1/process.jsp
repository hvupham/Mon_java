
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Process Information</title>
</head>
<body>
<h2>Processing Data...</h2>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    request.setAttribute("name", name);
    request.setAttribute("email", email);

    RequestDispatcher dispatcher = request.getRequestDispatcher("display.jsp");
    dispatcher.forward(request, response);
%>
</body>
</html>

