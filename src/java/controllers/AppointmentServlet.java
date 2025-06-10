
package controllers;

import java.io.IOException;
import java.util.*;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AppointmentModel;

public class AppointmentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(); // Get the current session
        
        // GET DATAS FROM FORM PARAMETER
            //CONVERT DATE FORMAT
        String dateInput = request.getParameter("date");
        String date = null;
        try {
            // Check if the dateInput is not null or empty
            if (dateInput == null || dateInput.isEmpty()) {
                throw new IllegalArgumentException("Date is required");
            }

            // Parse the input date (assumes the format is "yyyy-MM-dd")
            SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date parsedDate = inputFormat.parse(dateInput);

            // Format the date into "Month Day, Year" format
            SimpleDateFormat outputFormat = new SimpleDateFormat("MMMM dd, yyyy");
            date = outputFormat.format(parsedDate);

        } catch (Exception e) {
            // Handle errors (invalid date format or any other exception)
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid date format. Please use yyyy-MM-dd.");
        }
    
        
        String vetName = request.getParameter("vet-name");
        String petName = request.getParameter("pet-name");
        String clinicName = request.getParameter("clinic-name");
        Random random = new Random();
        int appointmentNum = 10000000 + random.nextInt(90000000); 
        
        // STORE THE DATA INTO A LIST THEN GET THE SESSION ATTRIBUTE
        List<AppointmentModel> appointments = (List<AppointmentModel>) session.getAttribute("appointments");
        if (appointments == null) {
            appointments = new ArrayList<>(); // If no appointments exist, create a new list
        }
        
        // CREATE NEW APPOINTMENT OBJECT AND ADD IT TO THE LIST
        appointments.add(new AppointmentModel(date, vetName, petName, appointmentNum, clinicName));

        // STORE THE UPDATED LIST INTO THE SESSION
        session.setAttribute("appointments", appointments);
        
        // REDIRECT BACK TO USERAPPOINTMENT TO SHOW THE UPDATED LIST
        response.sendRedirect("userappointment.jsp");
    }
}


