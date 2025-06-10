package controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.GuestModel;

public class GuestServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        //GETS NAME AND EMAIL FROM THE FORM PARAMETER
        String inputName = request.getParameter("name");
        String inputEmail = request.getParameter("email");
        
        GuestModel guestModel = new GuestModel(); //CREATE INSTANCE OF GUESTMODEL.JAVA
        int isAuthenticated = guestModel.authenticate(inputName, inputEmail); //CALL VALIDATION METHOD WITH RETURN VALUE OF BOOLEAN DATA TYPE
        RequestDispatcher error = request.getRequestDispatcher("login_guestError.jsp");
        
        switch(isAuthenticated){
            case 1 : {
                HttpSession session = request.getSession();
                session.setAttribute("guestname", inputName);
                response.sendRedirect("welcomeGuest.jsp");
                break;
            }
            case 2: {
                request.setAttribute("err","Name Cannot be Empty.");
                error.forward(request, response);
                break;
            }
            case 3: {
                request.setAttribute("err","Email Cannot be Empty.");
                error.forward(request, response);
                break;
            }
        }
    }
}
