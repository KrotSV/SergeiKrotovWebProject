<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: krotsv
  Date: 25.07.17
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>History</title>
</head>
<body>
<h3>Account operation history</h3>
<p>Card number: ${cardNumber}; balance: ${balance}</p>
    <table border="1">
<tr>
    <td><b>Date</b></td>
    <td><b>Sum</b></td>
</tr>
<c:forEach items="${sessionScope.history}" var="transaction">
    <tr>
    <td><fmt:formatDate value="${transaction.date}" dateStyle="short"/> </td>
    <td>${transaction.sum}</td>
    </tr>

</c:forEach></table>
<form>
    <p>
    <input type="hidden" name="firstName" value="${sessionScope.client.firstName}">
    <input type="hidden" name="lastName" value="${sessionScope.client.lastName}">
        <button formaction="/sendClientData" formmethod="post">Back</button>
    </p>
</form>
</body>
</html>
