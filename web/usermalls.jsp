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
            <img src="images/malltext.png" alt="Malls">
        </div>
        <div class="grid-container">
          <div class="card">
              <a href="https://robinsonsmalls.com/mall-info/robinsons-magnolia" target="_blank">
                  <img src="images/mall1.png" alt="Mall1">
              </a>
          </div>
          <div class="card">
              <a href="https://www.smsupermalls.com/mall-directory/sm-aura/information" target="_blank">
                  <img src="images/mall2.png" alt="Mall2">
              </a>
          </div>
          <div class="card">
              <a href="https://megaworld-lifestylemalls.com/malls/uptown-mall" target="_blank">
                  <img src="images/mall3.png" alt="Mall3">
              </a>
          </div>
          <div class="card">
              <a href="https://www.smsupermalls.com/mall-directory/sm-mall-of-asia/information" target="_blank">
                  <img src="images/mall4.png" alt="Mall4">
              </a>
          </div>
        </div>
      </main>
      <footer>
            <%@include file="footer.jsp" %>
    </footer>
    </body>
</html>
