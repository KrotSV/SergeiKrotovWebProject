<%--
  Created by IntelliJ IDEA.
  User: krotsv
  Date: 25.07.17
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cardNotChoose</title>
</head>
<body>
<form>
<h3>Please, choose card</h3>
<input type="hidden" name="firstName" value="${sessionScope.client.firstName}">
<input type="hidden" name="lastName" value="${sessionScope.client.lastName}">
<button formaction="/sendClientData" formmethod="post">Back</button>
</form>
</body>
</html>
