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
        <% 
            String guestname = (String)session.getAttribute("guestname"); //CONVERTS THE OBJECT TO STRING
            if(guestname==null)
                response.sendRedirect("guestSessionError.jsp"); //USE NOT YET REGISTERED IN ERROR THEN DUPLICATE TO ALL GUEST JSPS
        %>
        <header>
            <div class="logo">Paws & Bros</div>
            <%@include file="header.jsp" %>
            <nav>
                <a href="welcomeGuest.jsp">Home</a>
                <a href="guestmaps.jsp" class="active">Maps</a>
                <a href="guestarticles.jsp">Articles</a>
                <a href="guestsettings.jsp">Settings</a>
                <a href="guesthelp.jsp">Help</a>
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
