<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Paws & Bros</title>
        <link rel="stylesheet" href="css/maps.css">
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
        <h2>Pet Friendly Locations</h2>
        <div class="grid-container">
          <div class="card">
              <a href="guestrestau.jsp">
                <img src="images/restaurants.png" alt="Restaurants">
              </a>
          </div>
          <div class="card">
              <a href="guesthotel.jsp">
                  <img src="images/hotels.png" alt="Hotels">
              </a>
          </div>
          <div class="card">
              <a href="guestmalls.jsp">
                  <img src="images/malls.png" alt="Malls">
              </a>
          </div>
          <div class="card">
              <a href="guestparks.jsp">
                  <img src="images/parks.png" alt="Parks">
              </a>
          </div>
        </div>
      </main>
      <footer>
        <%@include file="footer.jsp" %>
      </footer>      
    </body>
</html>
