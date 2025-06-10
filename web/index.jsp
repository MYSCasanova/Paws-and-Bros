<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Paws & Bros</title>
        <link rel="stylesheet" href="css/index.css">
    </head>
    <body>
        <header>
            <div class="logo">Paws & Bros</div>
            <%@include file="header.jsp" %>
            <nav>
                <a href="index.jsp" class="active">Home</a>
                <a href="login.jsp">Login</a>
            </nav>
        </header>

        <main>
            <section class="intro">
                <h1>Join Now!<br>Fur the Better</h1>
                <p>Paws and Bros makes pet care easy. Book vet appointments, track vaccinations, explore pet articles, find pet-friendly spots, and learn first aid all in one place.</p>
            </section>

            <div class="dog-image">
                <img src="images/dog1.png" alt="Dog 1">
                <img src="images/dog2.png" alt="Dog 2">
            </div>

            <aside class="login-box">
                <p>Already have an account?</p>
                <button class="login-btn" onclick="location.href='login.jsp'">Log-in</button>
                <p>Log-in as Guest</p>
                <button class="guest-btn" onclick="location.href='guest.jsp'">Guest</button>
            </aside>
        </main>
    
    <footer>
            <%@include file="footer.jsp" %>
    </footer>
   </body>     
</html>

