<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Paws & Bros</title>
        <link rel="stylesheet" href="css/mapsinner.css">
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
                <a href="usermaps.jsp" class="active">Maps</a>
                <a href="userarticles.jsp">Articles</a>
                <a href="usersettings.jsp">Settings</a>
                <a href="userhelp.jsp">Help</a>
            </nav>
        </header>

      <main>
        <div class="label">
            <img src="images/restautext.png" alt="Restaurants">
        </div>
        <div class="grid-container">
          <div class="card">
              <a href="https://booky.ph/biz/under-the-balete-paltok/about/" target="_blank">
                <img src="images/restau1.png" alt="Restaurant1">
              </a>
          </div>
          <div class="card">
              <a href="https://booky.ph/biz/la-guada-birria-joya-lofts-towers/about/" target="_blank">
                  <img src="images/restau2.png" alt="Restaurant2">
              </a>
          </div>
          <div class="card">
              <a href="https://booky.ph/biz/yakiniku-like-sm-megamall/about/" target="_blank">
                  <img src="images/restau3.png" alt="Restaurant3">
              </a>
          </div>
          <div class="card">
              <a href="https://booky.ph/biz/cafe-mary-grace-sm-sucat/about/" target="_blank">
                  <img src="images/restau4.png" alt="Restaurant4">
              </a>
          </div>
        </div>
      </main>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
