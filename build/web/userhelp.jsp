<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Paws & Bros</title>
        <link rel="stylesheet" href="css/help.css">
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
                <a href="usersettings.jsp">Settings</a>
                <a href="userhelp.jsp" class="active">Help</a>
            </nav>
        </header>
        
        <main>
            <div class="container">
                <div class="button_side">
                <h1>Pet Emergency? Click the <br> Button for Immediate Help!</h1>
                <a href="https://www.phoenixlegacyofcompassion.org/veterinary-emergency-clinics.html" target="_blank">
                    <img src="images/help_btn.png" class="button">
                </a>
                </div>
            
                <div class="line"></div>
            
                <div class="video_side">
                    <div class="videos">
                        <iframe width="500" height="300"
                            class="video"
                            src="https://www.youtube.com/embed/p4JW-o0hqTg?si=M7pqbZrJ2ku1nN_e"
                            frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            referrerpolicy="strict-origin-when-cross-origin"
                            allowfullscreen>               
                        </iframe>
                    
                        <iframe width="500" height="300"
                            class="video"
                            src="https://www.youtube.com/embed/NmC4d_53WJg?si=EU9TBedv4Y_ymgnU" 
                            title="YouTube video player" 
                            frameborder="0" 
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
                            referrerpolicy="strict-origin-when-cross-origin" 
                            allowfullscreen>
                        </iframe>
                    </div>
                </div>
            </div>
        </main>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
