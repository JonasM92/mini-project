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
    <sf:form action="addUser" commandName="user" cssClass="form-horizontal">
        <sf:hidden path="id" cssClass="form-control"/>
      <div class="form-group">
        <label for="email">E-mail Address:</label>
        <sf:input path="email" cssClass="form-control"/>
      </div>
      <div class="form-group">
        <label for="userName">Username:</label>
        <sf:input path="userName" cssClass="form-control"/>
      </div>
      <div class="form-group">
        <label for="password">Password:</label>
        <sf:input path="password" cssClass="form-control"/>
      </div>
      <input type="submit" value="Confirm" class="btn btn-success btn-block"/>
    </sf:form>
  </div>
</body>
</html>
