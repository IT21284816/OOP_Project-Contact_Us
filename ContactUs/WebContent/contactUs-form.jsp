<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    
    <style>
        .card {
            background-color: #f7f7f7;
            border: 1px solid #e0e0e0;
            border-radius: 10px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            padding: 20px;
        }

        .card-body {
            padding: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .btn-success {
            background-color: #337ab7;
            color: #fff;
            padding: 10px 40px;
            border: none;
            border-radius: 10px;
            text-decoration: none;
            transition: background-color 0.3s, transform 0.2s;
        }

        .btn-success:hover {
            background-color: #449cfc;
            color: #fff;
            transform: scale(1.1);
        }

        textarea.form-control {
            height: 150px; 
        }

        h3 {
            font-size: 24px;
        }

        
        .card {
            margin: auto;
            width: 80%;
            max-width: 500px;
            margin-top: 50px;
        }

        
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }

        .container {
            margin-top: 30px;
        }

       
        .form-control:focus {
            border-color: #449cfc;
            box-shadow: 0 0 5px rgba(68, 156, 252, 0.5);
        }

        
        .error-message {
            color: #ff0000;
            font-size: 12px;
            margin-top: 5px;
        }

        
        input[type="text"],
        input[type="email"],
        textarea {
            padding: 15px;
        }

        input[type="text"]::placeholder,
        input[type="email"]::placeholder,
        textarea::placeholder {
            color: #999;
        }

       
        .form-group {
            position: relative;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            transition: border 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        textarea:focus {
            border: 2px solid #337ab7;
        }

        .btn-success {
            transform-origin: center;
            transition: transform 0.2s, background-color 0.3s;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp" />
<br>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <!-- Form Section (centered) -->
            <div class="card mx-auto text-center">
                <div class="card-body">
                    <c:if test="${user != null}">                         
                        <form name="contactForm" action="update" method="post" onsubmit="return validateForm()">
                    </c:if>
                    <c:if test="${user == null}">
                        <form name="contactForm" action="insert" method="post" onsubmit="return validateForm()">
                    </c:if>
                    <caption>
                        <h3>
                            <c:if test="${user != null}">
                                Edit Contact Us
                            </c:if>
                            <c:if test="${user == null}">
                               Contact Us
                            </c:if>
                        </h3>
                    </caption>
                    <br>
                    <c:if test="${user != null}">
                        <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                    </c:if>
                    <fieldset class="form-group">
                        <input type="text" placeholder="User Name" value="<c:out value='${user.name}' />" class="form-control" name="name" >
                    </fieldset>
                    <fieldset class="form-group">
                        <input type="email" placeholder="User Email" value="<c:out value='${user.email}' />" class="form-control" name="email" >
                    </fieldset>
                    <fieldset class="form-group">
                        <textarea placeholder="Description" class="form-control" name="description" ><c:out value='${user.description}' /></textarea>
                    </fieldset>
                    <button type="submit" class="btn btn-success">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
</div>
<br><br>
<jsp:include page="footer.jsp" />

<script>
function validateForm() {
    var name = document.forms["contactForm"]["name"].value;
    var email = document.forms["contactForm"]["email"].value;
    var description = document.forms["contactForm"]["description"].value;

    if (name === "") {
        alert("User Name must be filled out");
        return false;
    }

    if (email === "") {
        alert("User Email must be filled out");
        return false;
    }
    
    if (description === "") {
        alert("Description must be filled out");
        return false;
    }

    alert("Submit successful!");
    return true;
}
</script>

</body>
</html>
