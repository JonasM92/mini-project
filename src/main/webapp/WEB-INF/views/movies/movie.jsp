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
  <title></title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
</head>
<body>
<div class="container">
  <table class="table table-striped table-bordered">
    <tr>
      <th align="center" style="vertical-align:middle" colspan="2">
        <h3>
          ${movie.title}&nbsp
          <a class="btn btn-warning" href="/home/movie/create" data-toggle="tooltip" title="Edit">
            <span class="glyphicon glyphicon-pencil"></span>
          </a>
        </h3>

      </th>
    </tr>
    <tr>
      <td align="center" style="vertical-align:middle" rowspan="3"><img src="${movie.poster}"/></td>
      <td align="center" style="vertical-align:middle" >Genre: ${movie.genre}</td>
    </tr>
    <tr>
      <td align="center" style="vertical-align:middle">Duration: ${movie.length}</td>
    </tr>
    <tr>
      <td align="center" style="vertical-align:middle">Director: ${movie.director.name}</td>
    </tr>
    <tr>
      <td align="center" style="vertical-align:middle" colspan="2">Summary:</br>${movie.summary}</td>
    </tr>
    <tr>
      <td align="center" style="vertical-align:middle" colspan="2" align="center"><iframe width="560" height="315" src="https://www.youtube.com/embed/${movie.trailer.split("=")[1]}" frameborder="0" allowfullscreen></iframe></td>
    </tr>
  </table>
  <nav>
    <ul class="nav nav-tabs">
      <li><a href="">Cast</a></li>
      <li><a href="">Reviews</a></li>
      <li><a href="">Comments</a></li>
    </ul>
  </nav>
  <a href="/home/movies">Back</a>
</div>
<script type="application/javascript">
  $(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();
  });
</script>
</body>
</html>
