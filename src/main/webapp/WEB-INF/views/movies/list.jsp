<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 13/07/15
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>
<head>
  <title>Movie List</title>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h3>Films</h3>
  <table class="table table-striped table-bordered " >
    <c:choose>
      <c:when test="${empty movies}">
        <p>The database appears to be empty</p>
      </c:when>

      <c:otherwise>
        <c:forEach items="${movies}" var="movie" >
          <tr>
            <td align="center" style="vertical-align:middle">${movie.id}</td>
            <td align="center" style="vertical-align:middle"><a href=<c:url value="/home/movie?id=${movie.id}"/>><h4>${movie.title}</h4></a></td>
            <td align="center" style="vertical-align:middle"><img class="img-thumbnail" style="width:25%;height:25%" src="${movie.poster}" /></td>
            <td align="center" style="vertical-align:middle">
              <a class="btn btn-info" href=<c:url value="/home/movie?id=${movie.id}"/> data-toggle="tooltip" title="View Details">
                <span class="glyphicon glyphicon-search"></span>
              </a>
              <a class="btn btn-warning" href="/home/movie/create" data-toggle="tooltip" title="Edit">
                <span class="glyphicon glyphicon-pencil"></span>
              </a>
              <a class="btn btn-danger" href=<c:url value="/home/movie/remove?id=${movie.id}"/> data-toggle="tooltip" title="Remove from database">
                <span class="glyphicon glyphicon-remove"></span>
              </a>
            </td>
          </tr>
        </c:forEach>
      </c:otherwise>

    </c:choose>
    <tr>
      <td colspan="4" style="vertical-align: middle;">
        <a class="btn btn-success" href="/home/movie/create" data-toggle="tooltip" title="Add">
          <span class="glyphicon glyphicon-plus"></span>&nbsp Add a movie
        </a>
      </td>
    </tr>
  </table>
</div>
<script type="application/javascript">
  $(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();
  });
</script>
</body>
</html>
