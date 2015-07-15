<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <title>New movie</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
</head>
<body>
<div class="container">
  <h2>Add New Movie</h2>
  <div class="form">
    <sf:form action="addMovie" commandName="movie">
      <sf:errors path="*"/>
    <sf:hidden path="id" />
    <div class="form-group">
      <label for="title">Title:</label>
      <sf:input path="title" cssClass="form-control"/>
    </div>
    <div class="form-group">
      <label for="poster">Poster (url)</label>
      <sf:input path="poster" cssClass="form-control"/>
    </div>
    <div class="form-group">
      <label for="genre">genre</label>
      <sf:select path="genre" items="${genres}" itemLabel="genre" itemValue="id" cssClass="form-control"/>
    </div>
    <div class="form-group">
      <label for="length">Length in minutes:</label>
      <sf:input path="length" cssClass="form-control"/>
    </div>
    <div class="form-group">
      <label for="director">Director:</label>
      <sf:input path="director" cssClass="form-control"/>
    </div>
    <div class="form-group">
      <label for="cast">Cast</label>
      <sf:select multiple="true" path="cast" items="${actors}" cssClass="form-control"/>
    </div>
    <div class="form-group">
      <label for="summary">Summary:</label>
      <sf:textarea path="summary" cssClass="form-control"/>
    </div>
    <div class="form-group">
      <label for="trailer">Trailer (youtube url)</label>
      <sf:input path="trailer" cssClass="form-control"/>
    </div>
    <div class="form-group">
      <input type="submit" value="Confirm" class="btn btn-success btn-block"/>
    </div>
    </sf:form>
  </div>
</div>
</body>
</html>
