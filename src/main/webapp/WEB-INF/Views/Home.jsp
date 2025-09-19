<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Home - EmployeeDesk</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }

        /* Hero Section with background image + overlay */
        .hero-section {
            position: relative;
            background: url('<c:url value="/resources/images/background.jpg"/>') no-repeat center center/cover;
            min-height: 65vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-align: center;
        }

        .hero-overlay {
            background: rgba(0, 0, 0, 0.55); /* dark overlay for readability */
            padding: 100px 20px;
            width: 100%;
        }

        .hero-section h1 {
            font-size: 3rem;
            font-weight: bold;
            animation: fadeInDown 1.5s ease-in-out;
        }

        .hero-section p {
            font-size: 1.2rem;
            margin-top: 15px;
            animation: fadeInUp 2s ease-in-out;
        }

        /* Action Cards */
        .action-cards .card {
            border-radius: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .action-cards .card:hover {
            transform: translateY(-8px) scale(1.03);
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15);
        }

        .action-cards .btn {
            border-radius: 30px;
            transition: all 0.3s ease;
        }

        .action-cards .btn:hover {
            transform: scale(1.1);
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.2);
        }

        /* Footer */
        footer {
            background: #2c3e50;
            padding: 20px 0;
            text-align: center;
            color: #f1f1f1;
            margin-top: 40px;
        }

        footer p {
            margin: 0;
            font-size: 0.95rem;
        }

        /* Animations */
        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>

<body>

    <!-- Navigation Bar -->
    <jsp:include page="Navbar.jsp" />

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="hero-overlay">
            <div class="container">
                <h1>Welcome to the EmployeeDesk</h1>
                <p class="lead">Easily manage employee data — add, search, update, and remove records.</p>
            </div>
        </div>
    </section>

    <!-- Quick Actions -->
    <section class="container my-5 action-cards">
        <div class="row g-4 text-center">
            <div class="col-md-3">
                <div class="card h-100 border-primary">
                    <div class="card-body">
                        <h5 class="card-title">Add Employee</h5>
                        <p class="card-text">Create a new employee record.</p>
                        <a href="./add" class="btn btn-primary">Add</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card h-100 border-success">
                    <div class="card-body">
                        <h5 class="card-title">Search Employee</h5>
                        <p class="card-text">Find employee details easily.</p>
                        <a href="./search" class="btn btn-success">Search</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card h-100 border-warning">
                    <div class="card-body">
                        <h5 class="card-title">Update Info</h5>
                        <p class="card-text">Modify employee data as needed.</p>
                        <a href="./update" class="btn btn-warning text-white">Update</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card h-100 border-danger">
                    <div class="card-body">
                        <h5 class="card-title">Remove Employee</h5>
                        <p class="card-text">Delete a record from the system.</p>
                        <a href="./remove" class="btn btn-danger">Remove</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <p>&copy; 2025 EmployeeDesk | All rights reserved</p>
        </div>
    </footer>

</body>
</html>
