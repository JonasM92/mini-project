<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 13/07/15
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Register</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
  <div class="container">
    <h2>Registration</h2>
    <sf:form action="/addUser" commandName="user" cssClass="form-group">
      <sf:hidden path="id" />
      <label for="email">E-mail Address:</label>
      <sf:input path="email" />
      <label for="userName">Username:</label>
      <sf:input path="userName" />
      <label for="password">Password:</label>
      <sf:input path="password" />
      <input type="submit" value="Confirm"/>
    </sf:form>
  </div>
</body>
</html>
