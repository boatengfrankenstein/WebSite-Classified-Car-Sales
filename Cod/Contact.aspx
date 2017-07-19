﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
       <title>Lung Daniel</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="source/bootstrap-3.3.6-dist/css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="source/font-awesome-4.5.0/css/font-awesome.css"/>
	<link rel="stylesheet" type="text/css" href="style/slider.css"/>
	<link rel="stylesheet" type="text/css" href="style/mystyle.css"/>
</head>
<body>
    <form runat="server">

        <div class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="AdvanceSearch.aspx">Cautare Masini</a></li>
                        <li id="addCar" runat="server"><a href="AddCar.aspx">Adaugare Masini</a></li>
                            <li id="myCars" runat="server"><a href="MyCars.aspx">Parcul Auto Personal</a></li>
                            <li id="wishList" runat="server"><a href="WishList.aspx">Lista Masinilor Dorite</a></li>
                            <li id="aboutUs" runat="server"><a href="AboutUs.aspx">Despre Noi</a></li>
                        <li id="contact" runat="server"><a href="Contact.aspx">Contact</a></li>
                            
                        </ul>
                    <ul class="nav navbar-nav navbar-right btn-group">
                        <li id="profile" runat="server" role="presentation"><a href="ProfileSettings.aspx">Setari</a></li>
                        <li id="login" runat="server" role="presentation"><a href="login.aspx">Login</a></li>
                        <li id="register" runat="server" role="presentation"><a href="register.aspx">Register</a></li>
                        <li id="logout" runat="server" role="presentation"><a href="logout.aspx">Logout</a></li>
                    </ul>
                   


		
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>
        <div class="allcontain"/>
	<div id="carousel-up" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner " role="listbox">
			<div class="item active">
				<img src="image/oldcar.jpg" alt="oldcar"/>
				<div class="carousel-caption">
					<h2>Contact</h2>
                    <p>Email: lungdanielflaviu@gmail.com<br>
						 Telefon:0751173002</p>
				
				</div>
			</div>
			<div class="item">
				<img src="image/porche.jpg" alt="porche"/>
				<div class="carousel-caption">
					<h2>Contact</h2>
                     <p>Email: lungdanielflaviu@gmail.com<br>
						 Telefon:0751173002</p>
					
				</div>
			</div>
			<div class="item">
				<img src="image/benz.jpg" alt="benz"/>
				<div class="carousel-caption">
					<h2>Contact</h2>
                     <p>Email: lungdanielflaviu@gmail.com<br>
						 Telefon:0751173002</p>
					
				</div>
			</div>
		</div>
        </div>



        <div class="container">
           
            <div class="footer">
                <p class="text-muted small text-center">
                    Lung Daniel Flaviu 2017. <a href="https://ac.utcluj.ro/">Universitatea Tehnica Cluj-Napoca.</a>
                </p>
            </div>
        </div>
    </form>
    <link rel="stylesheet" type="text/css" href="source/bootstrap-3.3.6-dist/css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="source/font-awesome-4.5.0/css/font-awesome.css"/>
	<link rel="stylesheet" type="text/css" href="style/slider.css"/>
	<link rel="stylesheet" type="text/css" href="style/mystyle.css"/>
    <script src="js/jquery-2.2.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>