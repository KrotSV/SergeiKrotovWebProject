<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: KrotSV
  Date: 23.07.2017
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ClientAccounts</title>
</head>
<body>
<h3>Client accounts</h3>
<p>${client.firstName} ${client.lastName}</p>
<p>${birthday}</p>
<%--<p>${client.birthday}</p>--%>
<form>
<table border="1">
    <tr>
        <td></td>
        <td><b>CardNumber</b></td>
        <td><b>isBlocked</b></td>
    </tr>
    <c:forEach items="${accounts}" var="account" varStatus="loop">
    <tr>
        <td><input type="radio" name="cardChoose" value="${cards[loop.index].cardNumber}"></td>
        <td>${cards[loop.index].cardNumber}</td>
        <td>${account.status}</td>
    </tr>
</c:forEach></table>
    <p><button type="submit" formaction="/changeCardStatus">Unblock</button>
        <input type="hidden" name="login" value="${login}">
        <input type="hidden" name="password" value="${password}">
        <button formaction="/sendAdminData">Back</button></p>
        <p><button type="submit" formaction="/start">Exit</button></p>
</form>
</body>
</html>
