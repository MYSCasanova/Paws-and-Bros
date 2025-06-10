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
        </header>

        <!-- Main Content -->
        <main>
            <h1>Oh No Bro :(</h1>
            <h1>404 Page Not Found</h1>
            <p class="message">Something went wrong.</p>
            <button onclick="history.back()">Go back</button>
            
            <div class="image-container">
                <img src="images/error3.png" alt="Sad Hamster">
            </div>
        </main>

        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>


