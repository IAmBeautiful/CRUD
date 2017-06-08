<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Oops...</title>
</head>
<body>
<h1>I am Sorry, It's an Error</h1> <br/>

<h2>
    It looks like an error occurred. <br/>
    Note that the Age field must contain only digits, <br/>
    and also that the Admin field can not be empty, <br/>
    and must contain the value "true" or "false". <br/>
    Please try again!
    <a href="<c:url value="/instruction"/>" target="_blank">Also you can read the instruction!</a> <br/>

</h2>

<a href="<c:url value="/users"/>" target="_blank">Back to users list</a>

</body>
</html>
