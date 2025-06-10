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
            <img src="images/parktext.png" alt="Parks">
        </div>
        <div class="grid-container">
          <div class="card">
              <a href="https://www.spot.ph/things-to-do/the-latest-things-to-do/87654/off-leash-dog-park-opens-in-bonifacio-global-city-a833-20211006" target="_blank">
                  <img src="images/park1.png" alt="Park1">
              </a>
          </div>
          <div class="card">
              <a href="https://www.spot.ph/things-to-do/the-latest-things-to-do/89821/arcovia-city-in-pasig-opens-huge-off-leash-dog-park-a833-20220712" target="_blank">
                  <img src="images/park2.png" alt="Park2">
              </a>
          </div>
          <div class="card">
              <a href="https://www.smsupermalls.com/whats-new/news/sm-by-the-bay-opens-dog-agility-park-in-pasay" target="_blank">
                  <img src="images/park3.png" alt="Park3">
              </a>
          </div>
          <div class="card">
              <a href="https://www.smsupermalls.com/whats-new/lifestyle/sm-aura-premiers-paw-park-now-open-again" target="_blank">
                  <img src="images/park4.png" alt="Park4">
              </a>
          </div>
        </div>
      </main>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
