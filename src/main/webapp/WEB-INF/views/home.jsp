<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title>Home</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    </head>
    <body>
        <div class="header" align="right">
            <a href="user/login">login</a>
            <a href="user/register">register</a>
            <a href="user/logout">logout</a>
        </div>
        <div class="container">
            <h1>Home</h1>
            <p>This is the home page.</p>
            <div class="form-group">
                <a href="movies" class="btn btn-primary btn-block">Movies</a>
            </div>
            <div class="form-group">
                <a href="actors" class="btn btn-primary btn-block">Actors</a>
            </div>
        </div>
    </body>
</html>
