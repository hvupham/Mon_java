
<html>
<head>
    <title>Form and Process</title>
</head>
<body>
<h2>Enter Your Information</h2>
<form method="post">
    Name: <input type="text" name="name"><br>
    Email: <input type="text" name="email"><br>
    <input type="submit" value="Submit">
</form>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    if (name != null && email != null) {
%>
<hr>
<h3>Processed Information:</h3>
<p>Name: <%= name %></p>
<p>Email: <%= email %></p>
<%
    }
%>
</body>
</html>

