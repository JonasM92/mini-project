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
  <title>Actor List</title>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h3>Actors</h3>
  <table class="table table-striped table-bordered ">
    <c:choose>
      <c:when test="${empty actors}">
        <p>The database appears to be empty</p>
      </c:when>

      <c:otherwise>
        <c:forEach items="${actors}" var="actor" >
          <tr>
            <td align="center" style="vertical-align:middle">${actor.id}</td>
            <td align="center" style="vertical-align:middle"><a href=<c:url value="/home/actor?id=${actor.id}"/> >${actor.name}</a></td>
            <td align="center" style="vertical-align:middle"><img class="img-thumbnail" style="width:25%;height:25%" src="${actor.picture}" /></td>
            <td align="center" style="vertical-align:middle">
              <a class="btn btn-info" href=<c:url value="/home/actor?id=${actor.id}"/> data-toggle="tooltip" title="View Details">
                <span class="glyphicon glyphicon-search"></span>
              </a>
              <a class="btn btn-warning" href=<c:url value="/home/actor/create?id=${actor.id}"/> data-toggle="tooltip" title="Edit">
                <span class="glyphicon glyphicon-pencil"></span>
              </a>
              <a class="btn btn-danger" href=<c:url value="/home/movie/remove?id=${actor.id}"/> data-toggle="tooltip" title="Remove from database">
                <span class="glyphicon glyphicon-remove"></span>
              </a>
            </td>
          </tr>
        </c:forEach>
      </c:otherwise>
    </c:choose>
    <tr>
      <td colspan="4" style="vertical-align: middle;">
        <a class="btn btn-success" href="/home/actor/create" data-toggle="tooltip" title="Add">
          <span class="glyphicon glyphicon-plus"></span>&nbsp Add an actor
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
