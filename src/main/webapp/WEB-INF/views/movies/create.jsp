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
    <title></title>
</head>
<body>
<div class="container">
  <h2>Registration</h2>
  <sf:form action="home/movie/addMovie" commandName="movie" cssClass="form-group">
    <sf:hidden path="id" />
    <label for="title">Title:</label>
    <sf:input path="title" />
    <label for="genre">Genre:</label>
    <sf:input path="genre" />
    <label for="director">Director:</label>
    <sf:input path="director" />
    <label for="length">Length in minutes:</label>
    <sf:input path="length" />
    <label for="summary">Summary:</label>
    <sf:textarea path="summary" />
    <input type="submit" value="Confirm"/>
  </sf:form>
</div>
</body>
</html>
