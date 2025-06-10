<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Paws & Bros - Login</title>
        <link rel="stylesheet" href="css/login.css">
    </head>
    <body>
        <header>
            <div class="logo">Paws & Bros</div>
            <%@include file="header.jsp" %>
            <nav>
                <a href="index.jsp">Home</a>
                <a href="login.jsp" class="active">Login</a>
            </nav>
        </header>
        <main>
            <div class="login-form-container">
                <div class="login-form">
                    <h2>Welcome Back User!</h2>
                    <form action="LoginServlet" method="post">
                        <label for="username">Username</label>
                        <input type="text" id="username" name="username" placeholder="Enter your username">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" placeholder="Enter your password">
                        <button type="submit">Submit</button> <!-- He used <input type="submit" value="login">-->
                    </form>
                </div>
            </div>
            <div class="pets">
                <img src="images/pets2.png" alt="Cats and Dogs">
            </div>
        </main>
            <footer>
                <%@include file="footer.jsp" %>
            </footer>
    </body>
</html>
