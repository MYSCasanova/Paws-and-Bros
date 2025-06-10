<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Paws & Bros - Guest</title>
        <link rel="stylesheet" href="css/guest.css">
    </head>
    <body>
        <header>
            <div class="logo">Paws & Bros</div>
            <%@include file="header.jsp" %>
            <nav>
                <a href="index.jsp">Home</a>
                <a href="guest.jsp" class="active">Guest</a>
            </nav>
        </header>
        <main>
            <div class="guest-form-container">
                <div class="guest-form">
                    <h2>GUEST</h2>
                    <form action="GuestServlet" method="post">
                        <label for="name">Name</label>
                        <input type="text" id="name" name="name" placeholder="Enter your name">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" placeholder="Enter your email">
                        <button type="submit">Submit</button>
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
