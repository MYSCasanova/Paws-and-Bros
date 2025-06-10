<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Paws & Bros</title>
        <link rel="stylesheet" href="css/welcomeGuest.css">
    </head>
    <body>
        <%! // DECLARATION
            String[] name;
            String guestname;
        %> 
        <% // SCRIPTLET
            guestname = (String)session.getAttribute("guestname"); //CONVERTS THE OBJECT TO STRING
            if(guestname==null)
            {
                response.sendRedirect("guestSessionError.jsp");
                return;
            } //USE NOT YET REGISTERED IN ERROR THEN DUPLICATE TO ALL GUEST JSPS
            name = guestname.split(" ");
        %>
        <header>
            <div class="logo">Paws & Bros</div>
            <%@include file="header.jsp" %>
            <nav>
                <a href="welcomeGuest.jsp" class="active">Home</a>
                <a href="guestmaps.jsp">Maps</a>
                <a href="guestarticles.jsp">Articles</a>
                <a href="guestsettings.jsp">Settings</a>
                <a href="guesthelp.jsp">Help</a>
            </nav>
        </header>

        <main class="container">
            <!-- Welcome Card -->
            <div class="welcome-card">
                <img src="images/cat.png" alt="Cat">
                <div class="welcome-card-text">
                    <h2>Hello <%=name[0]%>!</h2>
                    <p>Welcome to Paws & Bros! Let's make your pet's journey as happy and healthy as possible!</p>
                </div>
            </div>


            <div class="grid">
                <!-- Maps Card -->
                <a href="guestmaps.jsp" class="card">
                    <img src="images/maps.png" alt="Maps" class="card-img">
                </a>

            <!-- Articles Card -->
                <a href="guestarticles.jsp" class="card">
                    <img src="images/articles.png" alt="Articles" class="card-img">
                </a>

                <!-- Help Card -->
                <a href="guesthelp.jsp" class="card">
                    <img src="images/help.png" alt="Help" class="card-img">
                </a>
            </div>      
        </main>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
