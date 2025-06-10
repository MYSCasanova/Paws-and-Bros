<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Paws & Bros</title>
        <link rel="stylesheet" href="css/welcomeUser.css">
    </head>
    <body>
        <%!String username; %>
        <% //RESET VALIDATION SCRIPLET FOR LOGIN
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            username = (String) session.getAttribute("username");
            if(username==null)
            {
                response.sendRedirect("loginSessionError.jsp"); 
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
            <!-- Welcome Card -->
            <div class="welcome-card">
                <img src="images/cat.png" alt="Cat" class="cat-image">
                <div class="welcome-card-text">
                <h2>Hello <%= username %>!</h2>
                <p>Welcome to Paws & Bros! Let's make your pet's journey as happy and healthy as possible!</p>
                </div>
            </div>

            <!-- Appointment Section -->
            <div class="appointment">
                <h3>APPOINTMENT</h3>
                <p><strong>Date:</strong> December 14, 2024</p>
                <p><strong>Appointment No:</strong> 21239982</p>
                <p><strong>Veterinarian:</strong> Juan Dela Cruz</p>
                <p><strong>Pet Name:</strong> Scottie</p>
                <p><strong>Clinic Name:</strong> Dogs in the City</p>
                <button onclick="location.href='userappointment.jsp'">More Info</button>
            </div>

            <!-- Pet Card -->
            <div class="pet-card">
                <img src="images/scottie.jpg" alt="Scottie" class="pet-image">
                <h3>Scottie</h3>
                <p><strong>Birthday:</strong> September 13, 2023</p>
                <p><strong>Breed:</strong> Norwich Terrier</p>
                <p><strong>Species:</strong> Dog</p>
                <p><strong>Sex:</strong> Male</p>
                <table id="vaccineTable">
                    <thead>
                        <tr>
                            <th>Vaccine</th>
                            <th>Date</th>
                            <th>Next Due</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Editable First Row -->
                        <tr>
                            <td><input type="text" value="Rabies" disabled onblur="disableInput(this)" /></td>
                            <td><input type="date" value="2024-11-19" disabled onblur="disableInput(this)" /></td>
                            <td><input type="date" value="2025-11-19" disabled onblur="disableInput(this)" /></td>
                        </tr>
                        <tr>
                            <td><input type="text" value="DA2PP" disabled onblur="disableInput(this)" /></td>
                            <td><input type="date" value="2024-10-15" disabled onblur="disableInput(this)" /></td>
                            <td><input type="date" value="" onblur="disableInput(this)" /></td>
                        </tr>
                        <tr>
                            <td><input type="text" value="Lyme" onblur="disableInput(this)" /></td>
                            <td><input type="date" value="2024-09-15" onblur="disableInput(this)" /></td>
                            <td><input type="date" value="" onblur="disableInput(this)" /></td>
                        </tr>
                    </tbody>
                </table>
                <button class="add-row">Add Row</button>
            </div>
        </main>
        <script>
            // Function to disable input after the user finishes typing (onblur)
            function disableInput(input) {
                input.disabled = true;
            }

            // JavaScript to add a new row with date pickers and make them fixed after selection
            document.querySelector('.add-row').addEventListener('click', function() {
                // Get the table body where new rows will be inserted
                var tableBody = document.getElementById('vaccineTable').getElementsByTagName('tbody')[0];

                // Create a new row
                var newRow = tableBody.insertRow();

                // Insert new cells in the row
                var cell1 = newRow.insertCell(0);
                var cell2 = newRow.insertCell(1);
                var cell3 = newRow.insertCell(2);

                // Add a text input for Vaccine Name (editable)
                var input1 = document.createElement("input");
                input1.type = "text";
                input1.placeholder = "Vaccine Name";
                input1.addEventListener('blur', function() {
                    disableInput(input1);  // Disable the input when focus is lost
                });
                cell1.appendChild(input1);

                // Add date input for Date (this is the date picker)
                var input2 = document.createElement("input");
                input2.type = "date";  // This is where the dropdown calendar will appear
                input2.addEventListener('blur', function() {
                    disableInput(input2);  // Disable the date input when focus is lost
                });
                cell2.appendChild(input2);

                // Add date input for Next Due (this is also a date picker)
                var input3 = document.createElement("input");
                input3.type = "date";  // Another date picker for the "Next Due" field
                input3.addEventListener('blur', function() {
                    disableInput(input3);  // Disable the next due date input when focus is lost
                });
                cell3.appendChild(input3);
            });
        </script>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>




