<%--
  Created by IntelliJ IDEA.
  User: KrotSV
  Date: 26.07.2017
  Time: 0:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Succsess</title>
</head>
<body>
<form>
    <h3>Operation succsessful</h3>
    <input type="hidden" name="firstName" value="${sessionScope.client.firstName}">
    <input type="hidden" name="lastName" value="${sessionScope.client.lastName}">
    <button formaction="/sendClientData" formmethod="post">Back</button>
</form>
</body>
</html>
