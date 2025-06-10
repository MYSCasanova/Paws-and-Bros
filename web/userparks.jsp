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
