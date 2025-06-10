package controllers;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.LogoutModel;

public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        LogoutModel logoutModel = new LogoutModel();
        logoutModel.logout(request);
        response.sendRedirect("index.jsp"); //AFTER LOGOUT IT SENDS BACK TO INDEX.JSP
        PrintWriter out = response.getWriter();
        out.close();
    }
}
