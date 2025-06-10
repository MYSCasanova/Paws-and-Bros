package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GeneralErrorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Example: Simulate a 404 error
        if (request.getParameter("error") != null && request.getParameter("error").equals("404")) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Page not found");
        }

        // Example: Simulate a 500 error
        else if (request.getParameter("error") != null && request.getParameter("error").equals("500")) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Internal Server Error");
        } else {
            // Normal response for valid requests
            response.getWriter().write("Normal response - no error triggered.");
        }
    }
}
