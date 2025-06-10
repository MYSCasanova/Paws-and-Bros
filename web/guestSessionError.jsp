<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Invalid Login</title>
        <link rel="stylesheet" href="css/error.css">
    </head>
    <body>
        <!-- Header -->
        <header>
            <div class="logo">Paws & Bros</div>
            <%@include file="header.jsp" %>
            <nav>
                <a href="index.jsp">Home</a>
                <a href="login.jsp">Login</a>
            </nav>
        </header>

        <!-- Main Content -->
        <main>
            <h1>Oh No Bro :(</h1>
            <p class="message">Not Yet Registered!</p>
            <p class="message">Please Register First.</p>
            <button onclick="location.href='guest.jsp'">Register</button>
            
            <div class="image-container2">
            <img src="images/error2.png" alt="Sad Hamster">
        </div>
        </main>

        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>


