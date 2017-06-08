<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TestTask</title>
</head>
<body>
<h3>Test task</h3>
<br/>

<h3>
    Hello! Before use this application, <br/>
    please read the data entry rules <br/>
    or click the Users list below to go to the list. <br/>
</h3>

<br/>

<a href="<c:url value="/instruction"/>" target="_blank">Read Instruction</a>
<br/>
<a href="<c:url value="/users"/>" target="_blank">Go to users list</a>
<br/>
</body>
</html>