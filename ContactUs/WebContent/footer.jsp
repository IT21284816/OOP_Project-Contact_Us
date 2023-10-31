<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
footer p{
    padding:0;
    font-size: 0.8em;
    color: hsla(0, 50%, 100%, 0.35);
    margin: 1em 0;
    font-size: 1rem;
}


footer ul{
    list-style: none;
    display: flex;
    margin: 1em 0; 
}

footer ul li a{
    padding: 1em; 
    text-decoration: none;
    color: rgba(255, 255, 255, 0.904);
    transition: 100ms;
}
footer ul li a:hover{
    color: var(--primary);
}

footer{
    width: 100%;
    background: darkorange;
    color: #fff; 
    display: grid;
    place-items: center;
    padding: 2em; 
    font-size: 1.2rem;
}

</style>


</head>
<body>
<br><br>

	
        
    <footer class="sticky-footer">
        <!-- <h2>Footer Stick to the Bottom</h2> -->
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Portfolio</a></li>
            <li><a href="#">Articles</a></li>
            <li><a href="http://localhost:8090/ContactUs/contactUs-form.jsp">Contact</a></li>
        </ul>
        <p> © Copyright  2023 GetYourTrainer Inc. All Rights Reserved.</p>
    </footer>


</body>
</html>