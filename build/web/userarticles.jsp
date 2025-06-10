<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Articles</title>
        <link rel="stylesheet" href="css/articles.css">
    </head>
    <body>
        <% 
            //RESET VALIDATION SCRIPLET FOR LOGIN
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            
            if(session.getAttribute("username") == null) {
                response.sendRedirect("loginSessionError.jsp");
            }
        %>
        
        <header>
            <div class="logo">Paws & Bros</div>
            <%@include file="header.jsp" %>
            <nav>
                <a href="welcomeUser.jsp">Home</a>
                <a href="usermaps.jsp">Maps</a>
                <a href="userarticles.jsp" class="active">Articles</a>
                <a href="usersettings.jsp">Settings</a>
                <a href="userhelp.jsp">Help</a>
            </nav>
        </header>
        
        <main>
            
            
            <div class="parent-container">
                <div class="upper-container">
                    <img src="images/pets.png" alt="Pets" class="pets">
                    <div class="article_text">
                        <h1>Paws, Read, Repeat!</h1>
                        <p>Expert tips, heartfelt advice, and a dash of paw-sitive inspiration—because your pet deserves the best.</p>
                    </div>
                </div>
                <div class="articles">
                    <div class="article-item">
                        <a href="https://www.aspca.org/pet-care/animal-poison-control/people-foods-avoid-feeding-your-pets" target="_blank">
                            <img src="images/article1.png" alt="Hamster eating vegetables" class="art">
                        </a>
                        <p class="image-title">People Foods to Avoid Feeding Your Pets</p>
                    </div>
                    
                    <div class="article-item">
                        <a href="https://tipptotail.com/interactive-play-experiences-benefits/#:~:text=Stress%20Relief%20and%20Mental%20Stimulation,prevents%20boredom%2Drelated%20behavioral%20issues." target="_blank">
                            <img src="images/article2.png" alt="Dog playing with ball" class="art">
                        </a>
                        <p class="image-title">The Science Behind Playtime: <br> Unlocking The Health Benefits For Your Pets</p>
                    </div>
                    
                    <div class="article-item">
                        <a href="https://www.ardmoreah.com/resources/pet-care/living-with-your-new-pet/seasonal-care/" target="_blank">
                            <img src="images/article3.png" alt="Woman giving dog a bath" class="art">
                        </a>
                        <p class="image-title">Seasonal Care for Pets</p>
                    </div>
                    
                    <div class="article-item">
                        <a href="https://bestfriends.org/pet-care-resources/tips-picking-pet-whos-right-your-lifestyle" target="_blank">
                            <img src="images/article4.png" alt="Hedgehog" class="art">
                        </a>
                        <p class="image-title">Tips for Picking a Pet Who's Right for Your Lifestyle</p>
                    </div>
                </div>
                
            </div>
        </main>

        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
