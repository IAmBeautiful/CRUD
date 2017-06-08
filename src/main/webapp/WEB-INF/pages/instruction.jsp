<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My first application</title>
</head>
<body>
<h2>

    Be sure to follow these rules, otherwise there
    will be a mistake or Bad Request! <br/>
    <br/>
    In the user addition table, all data must be completed. <br/>
    The "Age" field should consist only of digits, and the "Admin" <br/>
    field can not be empty and must contain the "True" value from "False".<br/>
    <br/>
    You can search by various parameters, including only by name, <br/>
    age or status, but as with the addition of the user, the "Admin" <br/>
    field can not be empty.<br/>
    <br/>
    You can always read the instructions again in the main menu
    <br/>
    Have a nice work!
    <br/>
    <br/>
    <a href="<c:url value="/users"/>" target="_blank">Let's go to users list</a>

</h2>
</body>
</html>
