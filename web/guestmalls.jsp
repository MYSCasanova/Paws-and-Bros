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
