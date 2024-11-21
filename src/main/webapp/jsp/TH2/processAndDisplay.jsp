<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Form and Process</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #f4f4f4;
        }
        h2, h3 {
            color: #333;
        }
        form {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
            text-align: left;
            max-width: 400px;
            width: 100%;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            font-size: 1.1em;
            color: #555;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .processed-info {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: left;
            max-width: 400px;
            width: 100%;
        }
    </style>
</head>
<body>
<h2>Enter Your Information</h2>
<form method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>
    <label for="email">Email:</label>
    <input type="text" id="email" name="email" required>
    <input type="submit" value="Submit">
</form>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    if (name != null && email != null) {
%>
<div class="processed-info">
    <h3>Processed Information:</h3>
    <p><strong>Name:</strong> <%= name %></p>
    <p><strong>Email:</strong> <%= email %></p>
</div>
<%
    }
%>
</body>
</html>
