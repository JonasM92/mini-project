<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 13/07/15
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>New actor</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container">
  <h2>Add New Movie</h2>
  <div class="form">
    <sf:form action="addActor" commandName="actor">
      <sf:hidden path="id" />
      <div class="form-group">
        <label for="name">Name:</label>
        <sf:input path="name" cssClass="form-control"/>
      </div>
      <div class="form-group">
        <label for="g">Gender:</label>
        <sf:input path="g" cssClass="form-control"/>
      </div>
      <div class="form-group">
        <label for="birthDate">Birthdate:</label>
        <sf:input path="birthDate" cssClass="form-control"/>
      </div>
      <div class="form-group">
        <label for="bio">Bio:</label>
        <sf:textarea path="bio" cssClass="form-control"/>
      </div>
      <div class="form-group">
        <label>Picture:</label>
        <input type="file" name="Picture"/>
      </div>
      <div class="form-group">
        <input type="submit" value="Confirm" class="btn btn-success btn-block"/>
      </div>
    </sf:form>
  </div>
</div>
</body>
</html>