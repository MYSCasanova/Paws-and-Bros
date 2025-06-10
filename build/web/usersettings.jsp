<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Paws & Bros</title>
        <link rel="stylesheet" href="css/usersettings.css">
    </head>
    <body>
        <% //RESET VALIDATION SCRIPLET FOR LOGIN
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            
            if(session.getAttribute("username")==null)
            {
                response.sendRedirect("loginSessionError.jsp"); //USE NOT YET LOGGED IN ERROR THEN DUPLICATE TO ALL USER JSPS
            }
        %>
        <header>
            <div class="logo">Paws & Bros</div>
            <%@include file="header.jsp" %>
            <nav>
                <a href="welcomeUser.jsp">Home</a>
                <a href="usermaps.jsp">Maps</a>
                <a href="userarticles.jsp">Articles</a>
                <a href="usersettings.jsp" class="active">Settings</a>
                <a href="userhelp.jsp">Help</a>
            </nav>
        </header>
        
        <main>
            <div class ="settings-background">
                <img src="images/hev.png" class="pfp">
                <p class="sub">Need Assistance? <br> Let us help you get things just right!</p>
                <div class="info">
                    <p><b>Name: </b> Hev Abi</p>
                    <p><b>Birthday: </b> January 31, 2002</p>
                    <p><b>Address: </b> Tomas Morato</p>
                    <p><b>Favorite Clinic: </b> Blessed Veterinary Clinic</p>
                    <p><b>Favorite Doctor: </b> Dr. Seuss</p>
                </div>
                <img src="images/pets_settings.png" class="pets">
                <%-- <button class="logout-btn" onclick="location.href='index.jsp'">Log out</button> --%>
                <form action="LogoutServlet">
                    <button class="logout-btn" type="submit" value="Logout">Log out</button>
                </form>
            </div>
        </main>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
