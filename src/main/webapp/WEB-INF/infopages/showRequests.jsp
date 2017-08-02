<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>ClientDataPage</title>
</head>
<body>
<h3>Card issue requests</h3>
<form>
<table border="1">
    <tr>
        <td></td>
        <td><b>Date</b></td>
        <td><b>ClientId</b></td>
        <td><b>Type card</b></td>
        <td><b>Status</b></td>
    </tr>
    <c:forEach items="${sessionScope.requests}" var="request">
    <tr>
        <td><input type="radio" name="requestChoose" value="${request.requestId}"></td>
        <td><fmt:formatDate value="${request.date}" dateStyle="short" /></td>
        <td>${request.clientId}</td>
        <td>${request.typeCard}</td>
        <td>${request.approval}</td>
    </tr>
</c:forEach></table>
    <p><button type="submit" formaction="/processRequest" name="decision" value="approved">Approve</button>
        <button type="submit" formaction="/processRequest" name="decision" value="rejected">Reject</button>
        <input type="hidden" name="login" value="${sessionScope.login}">
        <input type="hidden" name="password" value="${sessionScope.password}">
        <button formaction="/sendAdminData" formmethod="post">Back</button></p>

</form>
</body>
</html>
