<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
String msg = (String) request.getAttribute("msg");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Update Employee</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100vh;
            font-family: 'Poppins', sans-serif;
            background-color: #680747;
        }

        .main-container {
            display: flex;
            width: 90%;
            max-width: 1200px;
            height: 120vh;
            margin: auto;
            background-color: #ffffff;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            margin-top: 50px;
        }

        .form-section {
            flex: 1;
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .image-section {
            flex: 1;
            background-image: url('https://images.unsplash.com/photo-1522071820081-009f0129c71c?crop=entropy&cs=tinysrgb&w=1080&h=1080&fit=crop'); 
            background-size: cover;
            background-position: center;
        }

        h2 {
            color: #4a69bd;
            font-weight: 600;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #555;
        }

        input {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 10px;
            font-size: 16px;
            box-sizing: border-box;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        input:focus {
            outline: none;
            border-color: #4a69bd;
            box-shadow: 0 0 8px rgba(74, 105, 189, 0.2);
        }

        .submit-btn {
            width: 100%;
            padding: 15px;
            background-color: #4a69bd;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 18px;
            cursor: pointer;
            margin-top: 10px;
            transition: background-color 0.3s, transform 0.2s;
        }

        .submit-btn:hover {
            background-color: #3b5394;
            transform: translateY(-2px);
        }

        @media (max-width: 768px) {
            .main-container {
                flex-direction: column;
                height: auto;
            }
            .image-section {
                display: none;
            }
            .form-section {
                padding: 30px;
            }
        }
    </style>
</head>

<body>

    <jsp:include page="Navbar.jsp" />

    <div class="main-container">

        <div class="form-section">
            <h2>Update Employee</h2>

            <form action="./update" method="post">
                <div class="form-group">
                    <label for="empId">Employee ID</label>
                    <input type="text" id="empId" name="id" placeholder="Enter Employee ID" required>
                </div>

                <div class="form-group">
                    <label for="fullName">Full Name</label>
                    <input type="text" id="fullName" name="name" placeholder="e.g., John Doe">
                </div>

                <div class="form-group">
                    <label for="emailAddress">Email Address</label>
                    <input type="email" id="emailAddress" name="email" placeholder="e.g., example@domain.com">
                </div>

                <div class="form-group">
                    <label for="contactNumber">Contact Number</label>
                    <input type="tel" id="contactNumber" name="contact" placeholder="e.g., 9876543210">
                </div>

                <div class="form-group">
                    <label for="designation">Designation</label>
                    <input type="text" id="designation" name="designation" placeholder="e.g., Software Engineer">
                </div>

                <div class="form-group">
                    <label for="salary">Salary</label>
                    <input type="number" id="salary" name="salary" placeholder="e.g., 50000">
                </div>

                <button type="submit" class="submit-btn">Update Employee</button>
            </form>
        </div>

        <div class="image-section"></div>
    </div>

    <%
        if (msg != null) {
    %>
        <h3><%= msg %></h3>
    <%
        }
    %>

</body>
</html>
