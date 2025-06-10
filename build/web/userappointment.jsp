<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.AppointmentModel" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Paws & Bros</title>
        <link rel="stylesheet" href="css/appointment.css">
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
                <a href="welcomeUser.jsp" class="active">Home</a>
                <a href="usermaps.jsp">Maps</a>
                <a href="userarticles.jsp">Articles</a>
                <a href="usersettings.jsp">Settings</a>
                <a href="userhelp.jsp">Help</a>
            </nav>
        </header>

        <main class="container">
            <!-- Appointment Section -->
            <div id="appointment-section">
                <div class="appointment">
                    <h3>APPOINTMENT</h3>
                    <p><strong>Date:</strong> December 14, 2024</p>
                    <p><strong>Appointment No:</strong> 21239982</p>
                    <p><strong>Veterinarian:</strong> Juan Dela Cruz</p>
                    <p><strong>Pet Name:</strong> Scottie</p>
                    <p><strong>Clinic Name:</strong> Dogs in the City</p>
                </div>
                <% 
                    // Retrieve the list of appointments stored in the session
                    List<AppointmentModel> appointments = (List<AppointmentModel>) session.getAttribute("appointments");

                    // Check if the list is not null
                    if (appointments != null && !appointments.isEmpty()) {
                        for (AppointmentModel appointment : appointments) {
                %>
                        <div class="appointment">
                            <h3>APPOINTMENT</h3>
                            <p><strong>Date:</strong> <%= appointment.getDate() %></p>
                            <p><strong>Appointment No:</strong> <%= appointment.getAppointmentNum() %></p>
                            <p><strong>Veterinarian:</strong> <%= appointment.getVetName() %></p>
                            <p><strong>Pet Name:</strong> <%= appointment.getPetName() %></p>
                            <p><strong>Clinic Name:</strong> <%= appointment.getClinicName() %></p>
                        </div>
                <%  
                        }
                    }
                %>
            </div>

            <!-- Add Appointment Button -->
            <button id="add-appointment-btn" class="add-button">+ Add Appointment</button>

            <!-- Modal -->
            <div id="appointment-modal" class="modal"> 
                <div class="modal-content">
                    <h3>Add Appointment</h3>
                    <form id="appointment-form" action="AppointmentServlet" method="POST">
                        <label for="date">Date:</label>
                        <input type="date" id="date" name="date" required>

                        <label for="vet-name">Veterinarian Name:</label>
                        <input type="text" id="vet-name" name="vet-name" required>

                        <label for="pet-name">Pet Name:</label>
                        <select id="pet-name" name="pet-name" required>
                            <option value="" disabled selected>Select a pet</option>
                            <option value="Scottie">Scottie</option>
                        </select>
                        
                        <label for="clinic-name">Clinic Name:</label>
                        <input type="text" id="clinic-name" name="clinic-name" required>

                        <button type="submit">Submit</button>
                        <button type="button" id="close-modal-btn">Cancel</button>
                    </form>
                </div>
            </div>
        </main>
        <script>
           document.addEventListener('DOMContentLoaded', function() {
                const form = document.getElementById('appointment-form');
                const modal = document.getElementById('appointment-modal');
                const addAppointmentBtn = document.getElementById('add-appointment-btn');
                const closeModalBtn = document.getElementById('close-modal-btn');

                // Open the modal when "Add Appointment" button is clicked
                addAppointmentBtn.addEventListener('click', function() {
                    modal.style.display = 'flex';
                });

                // Close the modal when the close button is clicked
                closeModalBtn.addEventListener('click', function() {
                    modal.style.display = 'none';
                });
            });

        </script> 
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>





