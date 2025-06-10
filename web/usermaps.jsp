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
        <% //RESET VALIDATION SCRIPLET FOR LOGIN
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            
            if(session.getAttribute("username")==null)
            {
                response.sendRedirect("loginSessionError.jsp");
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
        <h2>Pet Friendly Locations</h2>
        <div class="grid-container">
          <div class="card">
              <a href="userrestau.jsp">
                <img src="images/restaurants.png" alt="Restaurants">
              </a>
          </div>
          <div class="card">
              <a href="userhotel.jsp">
                  <img src="images/hotels.png" alt="Hotels">
              </a>
          </div>
          <div class="card">
              <a href="usermalls.jsp">
                  <img src="images/malls.png" alt="Malls">
              </a>
          </div>
          <div class="card">
              <a href="userparks.jsp">
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
