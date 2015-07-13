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
<h3>Films</h3>
<table class="table-striped table-bordered ">
  <c:choose>
    <c:when test="${empty movies}">
      <p>The database appears to be empty</p>
    </c:when>

    <c:otherwise>
      <c:forEach items="${movies}" var="movie" >
        <tr>
          <td>${film.id}</td>
          <td><a href=<c:url value="/movie?id=${movie.id}"/> >${movie.title}</a></td>
          <td><img class="img-thumbnail" style="width:25%;height:25%" src="${movie.poster}" /></td>
        </tr>
      </c:forEach>
    </c:otherwise>

  </c:choose>
</table>

</body>
</html>
