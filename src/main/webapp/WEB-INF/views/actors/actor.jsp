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
  <table class="table table-bordered table-striped">
    <tr>
      <th align="center" style="vertical-align:middle" colspan="2">
        <h3>
          ${actor.name}&nbsp
          <a class="btn btn-warning" href="/home/actor/create" data-toggle="tooltip" title="Edit">
            <span class="glyphicon glyphicon-pencil"></span>
          </a>
        </h3>
      </th>
    </tr>
    <tr>
      <td align="center" style="vertical-align:middle" rowspan="2"><img src="${actor.picture}"/></td>
      <td align="center" style="vertical-align:middle">${actor.g}</td>
    </tr>
    <tr>
      <td align="center" style="vertical-align:middle">${actor.birthDate.toString().split(" ")[0]}</td>
    </tr>
    <tr>
      <td align="center" style="vertical-align:middle" colspan="2">${actor.bio}</td>
    </tr>
  </table>
</div>
</body>
</html>