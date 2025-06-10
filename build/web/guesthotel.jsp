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
            <img src="images/hoteltext.png" alt="Hotels">
        </div>
        <div class="grid-container">
          <div class="card">
              <a href="https://www.tripadvisor.com.ph/Hotel_Review-g298450-d17518805-Reviews-Seda_Residences_Makati-Makati_Metro_Manila_Luzon.html" target="_blank">
                <img src="images/hotel1.png" alt="Hotel1">
              </a>
          </div>
          <div class="card">
              <a href="https://www.tripadvisor.com.ph/Hotel_Review-g298452-d13149475-Reviews-Hilton_Manila-Pasay_Metro_Manila_Luzon.html" target="_blank">
                  <img src="images/hotel2.png" alt="Hotel2">
              </a>
          </div>
          <div class="card">
              <a href="https://www.tripadvisor.com.ph/Hotel_Review-g298450-d17840480-Reviews-Coro_Hotel-Makati_Metro_Manila_Luzon.html" target="_blank">
                  <img src="images/hotel3.png" alt="Hotel3">
              </a>
          </div>
          <div class="card">
              <a href="https://www.tripadvisor.com.ph/Hotel_Review-g298451-d23911558-Reviews-The_Westin_Manila-Mandaluyong_Metro_Manila_Luzon.html" target="_blank">
                  <img src="images/hotel4.png" alt="Hotel4">
              </a>
          </div>
        </div>
      </main>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
