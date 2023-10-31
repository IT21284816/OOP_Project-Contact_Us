<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Details</title>
    <!-- Include Bootstrap CSS from a CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .table-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 40vh;
        }

        .custom-table {
            width: 100%;
            margin: 0 auto;
            overflow: auto;
        }

        .list-button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }

        .list-button:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container mt-5">
    <h3 class="card-title text-center">User Details</h3>
    <div class="table-container">
        <table class="table custom-table">
            <tr>
                <th>Name</th>
                <td>${userDetails.name}</td>
            </tr>
            <tr>
                <th>Email</th>
                <td>${userDetails.email}</td>
            </tr>
            <tr>
                <th>Description</th>
                <td>${userDetails.description}</td>
            </tr>
        </table>
    </div>
    <a href="<%=request.getContextPath()%>/list" class="btn list-button">Back to List</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>

<jsp:include page="footer.jsp" />
</body>
</html>
