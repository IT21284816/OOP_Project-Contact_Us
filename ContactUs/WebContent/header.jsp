<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
<link rel="stylesheet" type="text/css" href="header.css">

<style type="text/css">

@charset "ISO-8859-1";
:root
{
    --green: orange;
    --dark-color: darkorange;
    --black: #444;
    --light-color: #666;
    --border: .1rem solid rgba(0,0,0,.1);
    --border-hover: .1rem solid var(--black);
    --box-shadow:0 .5rem 1rem rgba(0,0,0,.1);
}

*{
    font-family: 'Poppins', sans-serif;
    margin: 0; padding: 0;
    box-sizing: border-box;
    outline: none; border: none;
    text-decoration: none;
    
    transition: all .2s linear;
    transition: width none;
}

html
{
    font-size: 62.5%;
    overflow-x: hidden;
    scroll-padding-top: 5rem;
    scroll-behavior: smooth;
}

html::-webkit-scrollbar
{
    width: 1rem;
}

html::-webkit-scrollbar-track
{
    background: transparent;
}

html::-webkit-scrollbar-thumb
{
    background: var(--black);
}

section 
{
    padding:5rem 9%;
}

.heading
{
    text-align: center;
    margin-bottom: 2rem;
    position: relative;
}

.heading::before
{
    content: '';
    position: absolute;
    top:50%; left: 0;
    transform: translateY(-50%);
    width: 100%;
    height: .01rem;
    background: rgba(0,0,0,.1);
    z-index: -1;
}

.heading span
{
    font-size: 3rem;
    padding: .5rem 2rem;
    color: var(--black);
    background: #fff;
    border: var(--border);
}

.btn
{
    margin-top: 1rem;
    display: inline-block;
    padding: .9rem 3rem;
    border-radius: .5rem;
    color: black;
    background: peachpuff;
    font-size: 1.7rem;
    cursor: pointer;
    font-weight: 500;
}

.btn:hover
{
    background: orange;
}

.header .header-1
{
    background: #fff;
    padding: 1.5rem 9%;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.header .header-1 .logo
{
    font-size: 2.5rem;
    font-weight: bolder;
    color: var(--black);
}

.header .header-1 .logo i
{
    color:darkgreen;
}

.header .header-1 .search-form
{
    width: 50rem;
    height: 5rem;
    border: var(--border);
    overflow: hidden;
    background: #fff;
    display: flex;
    align-items: center;
    border-radius: 0.5rem;
}

.header .header-1 .search-form input
{
    font-size: 1.6rem;
    padding: 0 1.2rem;
    height: 100%;
    width: 100%;
    text-transform: none;
    color:darkgreen;
}

.header .header-1 .search-form label
{
    font-size: 2.5rem;
    padding-right: 1.5rem;
    color: darkgreen;
    cursor: pointer;
}

.header .header-1 .search-form label:hover
{
    color: darkgreen;
}


#search-btn
{
    display: none;
}

.header .header-2
{
    background: var(--dark-color);
}

.header .header-2 .navbar
{
    text-align: center;
}

.header .header-2 .navbar a
{
    color: #fff;
    display: inline-block;
    padding: 1.2rem;
    font-size: 1.7rem;
}

.header .header-2 .navbar a:hover
{
    background: var(--green);
}

.header .header-2.active
{
    position:fixed;
    top:0; left:0; right:0;
    z-index: 1000;
}

</style>
</head>
<body>


 <!-- header selection starts -->

    <header class="header">

        <div class="header-1">

            <a href="#" class="logo"> <i class="fas fa-book"></i> Online Tour Guide </a>

            <form action="" class="search-form">
                <input type="search" name="" placeholder="search here---" id="search-box">
                <label for="search-box" class="fas fa-search"></label>
            </form>

            <div class="icons">
                <div id="search-btn" class="fas fa-search"></div>
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-shopping-cart"></a>
                <div id="login-btn" class="fas fa-user"></div>
            </div>

        </div>

        <div class="header-2">
            <nav class="navbar">
                <a href="<%=request.getContextPath()%>/list">home</a>
                <a href="#featured">featured</a>
                <a href="#arrived">arrivals</a>
                <a href="http://localhost:8090/LoginAndRegister/login.jsp">Login</a>
                <a href="http://localhost:8090/LoginAndRegister/user-insert.jsp">Register</a>
            </nav>
        </div>

    </header>

   

    <div class="login-form-container">

        <div id="close-login-btn" class="fas fa-times"></div>

    </div>

</body>
</html>