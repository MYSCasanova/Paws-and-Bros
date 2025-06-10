package controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginModel;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        //GET USERNAME AND PASSWORD DECLARED IN THE DEPLOYMENT DESCRIPTOR
        String username = getServletConfig().getInitParameter("username"); 
        String password = getServletConfig().getInitParameter("password");
        
        //GET USERNAME AND PASSWORD FROM THE FORM PARAMETER OF LOGIN.JSP
        String inputUsername = request.getParameter("username");
        String inputPassword = request.getParameter("password");
        
        LoginModel loginModel = new LoginModel(); //NEW INSTANCE OF LOGINMODEL.JAVA
        int isAuthenticated = loginModel.authenticate(username, password, inputUsername, inputPassword); //CALL VALIDATION METHOD WITH RETURN VALUE OF BOOLEAN DATA TYPE
        
        RequestDispatcher error = request.getRequestDispatcher("login_guestError.jsp");
        
        switch(isAuthenticated){
            case 1 : {
                HttpSession session = request.getSession();
                session.setAttribute("username", inputUsername);
                response.sendRedirect("welcomeUser.jsp");
                break;
            }
            case 2: {
                request.setAttribute("err","Username cannot be empty!");
                error.forward(request, response);
                break;
            }
            case 3: {
                request.setAttribute("err","Pawsword cannot be empty!");
                error.forward(request, response);
                break;
            }
            case 4: {
                request.setAttribute("err","Username Incorrect!");
                error.forward(request, response);
                break;
            }
            case 5: {
                request.setAttribute("err","Pawsword Incorrect!");
                error.forward(request, response);
                break;
            }
        }
    }
}


