<%--
  Created by IntelliJ IDEA.
  User: KrotSV
  Date: 20.07.2017
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>WelcomePage</title>
  </head>
  <body>
  <h3>Welcome to our system. Please introduce yourself</h3>
  <form action="/sendClientData" method="post">
      <p>Please, enter your first name: <input type="text" name="firstName"/></p>
      <p>Please, enter your last name:   <input type="text" name="lastName"/></p>
      <input type="submit" value="Login"/>
    </form>
  <form action="/goToAdminLoginPage" method="post">
    <input type="submit" value="I'm Admin"/>
  </form>
  </body>
</html>
