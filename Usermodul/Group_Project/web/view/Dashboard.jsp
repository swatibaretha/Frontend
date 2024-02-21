<%-- 
    Document   : Desktop
    Created on : Nov 27, 2023, 11:13:34 PM
    Author     : dell
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="com.UserModul.model.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="preconnect" type="text/css" href="https://fonts.googleapis.com">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@500;600&display=swap" rel="stylesheet">
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
   <link rel="stylesheet" href="css/Home.css">
   <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous"
            />
   <style>
       * {
		font-family: 'Montserrat', sans-serif;
	}
	.bg-light {
		background-color: transparent !important;
	}
	.carousel-item {
		height: 100vh;
		min-height: 300px;
	}
	.carousel-caption {
		bottom: 220px;
	}
	.carousel-caption h5 {
		font-size: 45px;
		text-transform: uppercase;
		letter-spacing: 2px;
		margin-top: 25px;
	}
	.carousel-caption p {
		width: 60%;
		margin: auto;
		font-size: 18px;
		line-height: 1.9;
	}
	.carousel-caption a {
		text-transform: uppercase;
		text-decoration: none;
		background:  #1977cc;
		padding: 10px 30px;
		display: inline-block;
		color: #000;
		margin-top: 15px;
	}
	.navbar-nav a {
		font-size: 15px;
		text-transform: uppercase;
		font-weight: bold;
	}
	.navbar-nav{
		margin-right: -30px;
		background-color: rgba(0,0,0,0.5);
	}
	.navbar-brand 
	{
		width: 25%;
		/* background-color: rgba(0,0,0,0.5); */
	}
	.navbar-light .navbar-brand {
		color: #fff;
		font-size: 20px;
		text-transform: uppercase;
		font-weight: bold;
		letter-spacing: 2px;
	}
	.navbar-light .navbar-brand:focus, .navbar-light .navbar-brand:hover {
		color: #fff;
	}
	.navbar-light .navbar-nav .nav-link {
		color: #fff;
	}
	.navbar-light .navbar-nav .nav-link:focus, .navbar-light .navbar-nav .nav-link:hover {
		color: #fff;
	}
	.w-100 {
		height: 100vh;
	}
	.navbar-toggler {
		padding: 1px 5px;
		font-size: 18px;
		line-height: 0.3;
		background: #fff;
	}
	@media only screen and (max-width: 767px) {
		.navbar-nav {
			text-align: center;
			background: rgba(0, 0, 0, 0.5);
		}
		.carousel-caption {
			bottom: 165px;
		}
		.carousel-caption h5 {
			font-size: 17px;
		}
		.carousel-caption a {
			padding: 10px 15px;
			font-size: 15px;
		}
	}
	   .btn {
		background-color:#4285f4;
            color: #fff;
            font-size: 20px;
            font-weight: 800;
            text-transform: uppercase;
            position: relative;
            border-radius: 0 !important;
            border: none;
            transition:all 0.3s ease 0s;
        }
        .btn:hover,
        .btn.active:hover{
            color: #ffffff;
        }
        .btn:before{
            content: "";
            position: absolute;
            top: -7px;
            left: 0;
            background-color:#2E0014;
            width: 30%;
            height: 4px;
            transition:all 0.3s ease 0s;
        }
        .btn:after{
            content: "";
            position: absolute;
            bottom: -7px;
			background-color: #F48224;
            right: 0;
            width: 30%;
            height: 4px;
            transition:all 0.3s ease 0s;
        }
        .btn:hover:before,
        .btn:hover:after,
        .btn.active:before,
        .btn.active:after{
            width: 100%;
        }

        @media screen and (max-width: 575px){
            .btn{
                margin-bottom: 50px !important;
            }
        }
		.features{
			/* background:rgb(255, 247, 233); */
		}
		 /** Flatted button %placeholder **/
		 .features {
			padding-bottom: 30px;
			margin-top: 30px;
		  }
		  
		  .features .count-box {
			background:rgb(255, 247, 233);
			box-shadow: -10px -5px 40px 0 rgba(0, 0, 0, 0.1);
			padding: 30px;
			width: 100%;
		  }
		  .features .count-box a {
			font-weight: 600;
			margin-top: 20px;
			color: #7b7b7b;
			font-size: 15px;
			font-family: "Poppins", sans-serif;
			transition: ease-in-out 0.3s;
		  }
		  .features .count-box a:hover{
			color: #4285f4;
		  }
		  .features .count-box:hover{
			transform: scale(0.7);
		  }
		.conntain  .icon{
			align-items: center;
			justify-content: center;
		  width: 64px;
		  height: 64px;
		  border: 2px solid #8dc2f1;
		  border-radius: 50px;
		  transition: 0.5s;
		}
		  .conntain:hover .icon {
			background: #3fbbc0;
			/* border-color: #3fbbc0; */
		  }
		  .conntain:hover .icon i{
			color: white;
		  }
		  .conntain .title {
			margin-left: 85px;
			font-weight: 700;
			margin-bottom: 10px;
			font-size: 18px;
		  }
		  
		  .conntain  .title a {
			color: #343a40;
			transition: 0.3s;
		  }
		  
		  .conntain  .title a:hover {
			color: #1977cc;
		  }
		  .conntain .title {
			margin-left: 85px;
			margin-top: -40px;
		  }
		  
		  .conntain .title a {
			text-decoration: none;
			color: #1977cc;
		  }
		  
		  .conntain  .title a:hover {
			color: red;
		  }
		.team_wrapper .card:hover{
			-webkit-transform:translateY(-0.625rem);
			transform:translateY(-0.625rem);
		}
		.hospitals{
			margin: 0;
			padding: 0;
			min-height: 100vh;
			background: #333;
			display: flex;
			justify-content: center;
			align-items: center;
			font-family: consolas;
		}
	
		
		.container .card{
			position: relative;
			cursor: pointer;
		}
		
		.container .card .face{
			width: 300px;
			height: 200px;
			transition: 0.5s;
		}
		
		.container .card .face.face1{
			position: relative;
			background:rgb(230, 153, 20);
			display: flex;
			justify-content: center;
			align-items: center;
			z-index: 1;
			transform: translateY(100px);
		}
		
		.container .card:hover .face.face1{
			background: #ff0057;
			transform: translateY(0);
		}
		
		.container .card .face.face1 .content1{
			opacity: 0.12;
			transition: 0.5s;
		}
		
		.container .card:hover .face.face1 .content1{
			opacity: 1;
		}
		
		.container .card .face.face1 .content1 img{
			max-width: 100px;
		}
		
		.container .card .face.face1 .content h3{
			margin: 10px 0 0;
			padding: 0;
			color: #fff;
			margin-left: 20px;
			text-align: center;
			font-size: 1.5em;
		}
		
		.container .card .face.face2{
			box-shadow: 0 20px 50px rgba(0, 0, 0, 0.6);
			transform: translateY(-100px);
		}
		
		.container .card:hover .face.face2{
			transform: translateY(0);
		}
		
		.container .card .face.face2 .content1 p{
			margin: 0;
			padding: 0;
		}
		
		.container .card .face.face2 .content1 a{
			margin: 15px 0 0;
			display:  inline-block;
			text-decoration: none;
			font-weight: 900;
			color: #333;
			padding: 5px;
			border: 1px solid #333;
		}
		
		.container .card .face.face2 .content1 a:hover{
			background: #333;
			color: #fff;
		}
		@media screen and (max-width:360px) {
			
		}
		
       </style>
</head>

<body>
    <%  
    try {
        response.setHeader("Cache-Control", "NO-Cache");
        response.setHeader("Cache-Control", "NO-Store");
        UserDAO dao=(UserDAO)session.getAttribute("udao");
        int userid=dao. getUserID();
        String name=dao.getName();
        String email=dao.getEmail();
        String phone=dao.getPhone();
        String address=dao.getAddres();
        String dob=dao.getDob();
        
        String profile=dao.getProfilephoto();
        String pass=dao.getPassword();
        System.out.println(dob);
        
        
        
%>

    <!--hjgjhghjghjghjghjg-->
<!--    this comment by kriti-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"><img class="img-fluid w-75" src="images/logo.png" alt=""></a> <button aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler" data-bs-target="#navbarSupportedContent" data-bs-toggle="collapse" type="button"><span class="navbar-toggler-icon"></span></button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav   mb-2 mb-lg-0 " >
					<li class="nav-item">
						<a class="nav-link" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="HealthH.jsp">Health Welfare</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="Ecom.jsp">Buy & Sells</a>
					</li>
                    <li class="nav-item">
						<a class="nav-link" href="Doctor.jsp">Doctors</a>
					</li>
                    <li class="nav-item">
						<a class="nav-link" href="Ambulance.jsp">Ambulance</a>
					</li>
                    <li class="nav-item">
						<a class="nav-link" href="Campaign.jsp">Campaign</a>
					</li>
                    <li class="nav-item">
						<a class="nav-link" href="proje_1.jsp">Hospital</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="">Logout</a>
					</li>
                                        <li class="nav-item">
						<a class="nav-link" data-bs-toggle="modal" data-bs-target="#staticBackdrop" href="">Profile</a>
					</li>
                     <li class="nav-item">
						<a class="nav-link" href="ABOUT_US.jsp">About Us</a>
					</li>
                    <li class="nav-item">
						<a class="nav-link" href="">Language</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

<!--profile-->









<!-- Button trigger modal -->
<!--<button type="button" class="btn btn-primary" >
  Launch static backdrop modal
</button>-->

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">USER PROFILE</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <div class="offcanvas-body">
           
                    <center>
                        <fieldset>
                            <legend>
                                <font face="cursive" size="6" color="white">UPDATE</font>
                            </legend>
                            <i id="logo1" class="fa-solid fa-user"></i>
                            <div class="offcanvas-body">
                                <h2>Profile</h2>

                                <div class="card-body">
                                    <form action="../UpdateController">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td>Name</td>
                                                    <td>:</td>
                                                    <td>
                                                        <input
                                                            type="text"
                                                            value="<%= session.getAttribute("name") %>"
                                                            id="Myname"
                                                            disabled
                                                            name ="Myname"
                                                            />
                                                        <div id="udisplay"></div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Mobile</td>
                                                    <td>:</td>
                                                    <td>
                                                        <input
                                                            type="text"
                                                            value="<%= session.getAttribute("phone") %>"
                                                            id="mobile"
                                                            disabled
                                                            name="mobile"
                                                            />
                                                        <div id="mdisplay"></div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Email</td>
                                                    <td>:</td>
                                                    <td>
                                                        <input
                                                            type="email"
                                                            value="<%= session.getAttribute("email") %>"
                                                            id="email"
                                                            disabled
                                                            name="email"
                                                            />
                                                        <div id="edisplay"></div>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td>DOB</td>
                                                    <td>:</td>
                                                    <td>
                                                        <input
                                                            type="text"
                                                            value="<%= session.getAttribute("dob") %>"
                                                            id="email"
                                                            disabled
                                                            name="dob"
                                                            />
                                                        <div id="edisplay"></div>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td>ADDRESS</td>
                                                    <td>:</td>
                                                    <td>
                                                        <input
                                                            type="text"
                                                            value="<%= session.getAttribute("address") %>"
                                                            id="email"
                                                            disabled
                                                            name="address"
                                                            />
                                                        <div id="edisplay"></div>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td>Profile</td>
                                                    <td>:</td>
                                                    <td>
                                                        <input
                                                            type="text"
                                                            value="<%= session.getAttribute("profile_photo") %>"
                                                            id="email"
                                                            disabled
                                                            name="profile"
                                                            />
                                                        <div id="edisplay"></div>
                                                    </td>
                                                </tr>
<!--                                                <tr style="display: none" id="btn">
                                                    <td><input type="submit" value="Save" /></td>
                                                </tr>-->
                                            </tbody>
                                        </table>
                                    </form>
                                             <li class="nav-item">
                                             <a type="button" class="nav-link ms-4" data-bs-toggle="modal" data-bs-target="#staticBackdrop1">
                                                Update
                                                 </a>
                                                 </li>
                                    <!--<button id="enableButton">Edit</button>-->
                                </div>
                            </div>
                            </div>
                          </center>
                        </fieldset>                                  
    <br>
    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <!--<button type="button" class="btn btn-primary">Understood</button>-->
      </div>
    </div>
  </div>
</div>




<!-- Modal -->
        <form onsubmit=" return validate()" action="..//UpdateController" class="form" method="post">
            <div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered  modal-fullscreen-md-down modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">Update</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">
                            
                            <div class="input-box">
                                <label>Full Name</label>
                                <input onclick="checkName()" onfocus="checkName()" onkeyup="checkName()" type="text" id="name" name="name" placeholder="Enter your name" value="<%= name%>">
                                <span id="ndisplay" style="color:red;"></span>
                            </div>
                            <div class="input-box">
                                <label>EMAIL</label>
                                <input onclick="checkEmail()"  type="text" id="email" name="email" placeholder="Enter email name" value="<%= email %>">
                                <span id="fdisplay" style="color:red;"></span>
                            </div>
                            <div class="column">
                                <div class="input-box">
                                    <label>PROFILE</label>
                                    <input type="text"  name="profile" placeholder="Enter profile photo Name" value="<%= profile%>" >
                                </div>
                                <div class="input-box">
                                    <label>ADDRESS</label>
                                    <input   type="text" id="add" name="address" placeholder="Enter Address" value="<%= address%>">
                                    <span id="" style="color:red;"></span>
                                </div>
                            </div>
                            <div class="column">
                                <div class="input-box">
                                    <label> MOBILE</label>
                                    <input onclick="checkMobile()" onkeyup="checkMobile()" type="text" id="mobile" name="mobile" maxlength="10" placeholder="Enter 10-digit Mobile Number" value="<%= phone %>">
                                    <span id="mdisplay" style="color:red;"></span>
                                </div>
                                <div class="input-box">
                                    <label>Birth Date</label>
                                    <input type="date" onmouseout="checkdate()" id="Date"  name="dob" placeholder="Enter birth date" value="<%= dob%>">
                                </div>
                            </div>

                            <button class="btn1" type="submit">Submit</button>


                        </div>
                    </div>
                </div>
            </div>  
        </form>







<!--profile-->
	<div class="carousel slide" data-bs-ride="carousel" id="carouselExampleIndicators">
		<div class="carousel-indicators">
			<button aria-label="Slide 1" class="active" data-bs-slide-to="0" data-bs-target="#carouselExampleIndicators" type="button"></button> <button aria-label="Slide 2" data-bs-slide-to="1" data-bs-target="#carouselExampleIndicators" type="button"></button> <button aria-label="Slide 3" data-bs-slide-to="2" data-bs-target="#carouselExampleIndicators" type="button"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img alt="" class=" img-fluid w-100" src="images/H2.avif">
				<div class="carousel-caption">
					<h5 class="animated bounceInRight" style="animation-delay: 1s">SANJEEVNI</h5>
					<p class="animated bounceInLeft d-none d-md-block font-monospace" style="animation-delay: 2s">We Provide <span class="text-primary">Health Care Services</span> That You Can Trust!</p>
					<p class="animated bounceInRight" style="animation-delay: 3s"><a href="ABOUT_US.HTML">Learn More</a></p>
				</div>
			</div>
			<div class="carousel-item">
				<img alt="" class="img-fluid d-block w-100" src="images/liv8.jpg">
				<div class="carousel-caption">
					<h5 class="animated bounceInRight" style="animation-delay: 1s">SANJEEVNI</h5>
					<p class="animated bounceInLeft d-none d-md-block font-monospace" style="animation-delay: 2s">We Provide <span class="text-primary">Health Care Services</span> That You Can Trust!</p>
					<p class="animated bounceInRight" style="animation-delay: 3s"><a href="ABOUT_US.HTML">Learn More</a></p>

				</div>
			</div>
			<div class="carousel-item">
				<img alt="..." class="img-fluid d-block w-100" src="images/H3.avif">
				<div class="carousel-caption">
					<h5 class="animated bounceInRight" style="animation-delay: 1s">SANJEEVNI</h5>
					<p class="animated bounceInLeft d-none d-md-block font-monospace" style="animation-delay: 2s">We Provide <span class="text-primary">Health Care Services</span> That You Can Trust!</p>
					<p class="animated bounceInRight" style="animation-delay: 3s"><a href="ABOUT_US.HTML">Learn More</a></p>

				</div>
			</div>
		</div><button class="carousel-control-prev" data-bs-slide="prev" data-bs-target="#carouselExampleIndicators" type="button"><span aria-hidden="true" class="carousel-control-prev-icon"></span> <span class="visually-hidden">Previous</span></button> <button class="carousel-control-next" data-bs-slide="next" data-bs-target="#carouselExampleIndicators" type="button"><span aria-hidden="true" class="carousel-control-next-icon"></span> <span class="visually-hidden">Next</span></button>
	</div>
    <div class="container my-5 p-5 " data-aos="zoom-in-up" data-aos-offset="200">
        <div class="container my-5 p-5">
        <div class="row row-cols-lg-2 row-cols-md-1 row-cols-1">
            <div class="col p-2 mt-5" data-aos="fade-right" data-aos-offset="200">
                <img class="img-fluid"
                    src="https://www.medibrandox.com/MediBrandBackEndImages/BlogImage/medical-and-hospital-website-design-mumbai-india-l.jpg"
                    alt="">
            </div>
            <div class="col p-3" data-aos="fade-left" data-aos-offset="200">
                <h1 class="text-center fw-bold" data-aos="zoom-in-up" data-aos-offset="300">AboutUs</h1>
                <p>People Use different online websites to sell medical equipment, buy medical products, New or
                    Refurbished hospital equipment and Used medical instruments in India.We in provide all type
                    of services at one single platform. Use can search and buy any type of medical equipment for free.
                    If you want to sell your products then post your ad for free. We have a list of top hospital
                    equipment suppliers, manufacturers and exporters in all over world.
                </p>
                <div class="text-center my-5">
                     <a href="ABOUT_US.jsp" class="btn btn-primary m-auto">View More</a>
                </div>
            </div>
        </div>
    </div>
    </div>
<div class="row row-cols-1 text-center  my-5 p-5"><h1 class="fw-bold"data-aos="fade-up" data-aos-offset="300" >Buy & Sell</h1></div>
    <div class="container my-5">
        <div class="row row-cols-lg-3 row-cols-md-2 row-cols-1 row-cols-sm-2">
            <div class="col text-center">
                <img class="img-fluid" src="https://medicomart.in/media/listing/28619_1.jpg" alt="">
                <h2>Stryker 1188</h2>
                <p>
                    <a href="Ecom.jsp" class="btn btn-primary m-auto mt-4">View More</a>
                    <a href="" class="btn btn-primary m-auto mt-4">Shop Now</a>
                 </p>

            </div>
            <div class="col text-center">
                <img class="img-fluid" src="https://medicomart.in/media/listing/28947_1.jpg" alt="">
                <h2>Stryker 1188</h2>
                <p>
                    <a href="Ecom.jsp" class="btn btn-primary m-auto mt-4">View More</a>
                    <a href="" class="btn btn-primary m-auto mt-4">Shop Now</a>
                </p>
            </div>
            <div class="col text-center">
                <img class="img-fluid" src="https://medicomart.in/media/listing/28946_1.jpg" alt="">
                <h2>Stryker 1188</h2>
                <p>
                    <a href="Ecom.jsp" class="btn btn-primary m-auto mt-4">View More</a>
                    <a href="" class="btn btn-primary m-auto mt-4">Shop Now</a>
                
                 </p>
            </div>
            <div class="col text-center ">
                <img class="img-fluid" src="https://medicomart.in/media/listing/28942_1.jpg" alt="">
                <h2>Stryker 1188</h2>
                <p>
                    <a href="Ecom.jsp" class="btn btn-primary m-auto mt-4">View More</a>
                    <a href="" class="btn btn-primary m-auto mt-4">Shop Now</a>
                 </p>
            </div>
            <div class="col text-center">
                <img class="img-fluid" src="https://medicomart.in/media/listing/29129_1.jpg" alt="">
                <h2>Stryker 1188</h2>
                <p>
                    <a href="Ecom.jsp" class="btn btn-primary m-auto mt-4">View More</a>
                    <a href="" class="btn btn-primary m-auto mt-4">Shop Now</a>
                 </p>
            </div>
            <div class="col text-center">
                <img class="img-fluid" src="https://medicomart.in/media/listing/28942_1.jpg" alt="">
                <h2>Stryker 1188</h2>
                <p>
                    <a href="Ecom.jsp" class="btn btn-primary m-auto mt-4">View More</a>
                    <a href="" class="btn btn-primary m-auto mt-4">Shop Now</a>
                 </p>
            </div>
        </div>
    </div>
    <div class="text-center my-5">
        <a href="Ecom.jsp" class="btn btn-primary m-auto">View More</a>
   </div>
    <div class=" welfare" data-aos="fade-up" data-aos-offset="300">
        <div class="container my-5 p-5">
            <div class="row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 row-cols-1" data-aos="zoom-in-up" data-aos-offset="300">
                <div class="col p-5 m-auto" data-aos="fade-left" data-aos-offset="300">
                    <h1 class="fw-bold">Health Welfare</h1>
                    <p>People Use different online websites to sell medical equipment, buy medical products, New or Refurbished hospital equipment and Used medical instruments in India.Sanjeevnni in provide all type of services at one single platform. Use can search and buy any type of medical equipment for free. If you want to sell your products then post your ad for free. We have a list of top hospital equipment suppliers, manufacturers and exporters in all over world.  </p>
                    <div class="text-center my-5">
                      <a href="HealthWelfare.jsp" class="btn btn-primary">View More</a>
                   </div>
                </div>
                <div class="col p-3 m-auto" data-aos="fade-right" data-aos-offset="300">
                    <img class="img-fluid" src="https://medulance.com/assets/images/testimonils.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
    <div class="features">
        <div class="container my-5">
            <div class="row row-cols-lg-4 row-cols-md-2 row-cols-sm-2 row-cols-1">
                <div class="col" data-aos="zoom-in-up" data-aos-offset="300">
                    <div class="count-box">
                    <img src="images/25.png" alt="">
                    <span data-purecounter-start="0" data-purecounter-end="95" data-purecounter-duration="1" class="purecounter"></span>
                    <p><strong>7 Days return Policy</strong> </p>
                    <a href="#">Find out more &raquo;</a>
                   </div>
                </div>
                <div class="col"data-aos="zoom-in-down" data-aos-offset="300">
                    <div class="count-box">
                    <img src="images/24.png" alt="">
                    <span data-purecounter-start="0" data-purecounter-end="95" data-purecounter-duration="1" class="purecounter"></span>
                    <p><strong>Fast Delivery</strong> </p>
                    <a href="#">Find out more &raquo;</a>
                   </div>
                </div>
                <div class="col" data-aos="zoom-in-up" data-aos-offset="300">
                    <div class="count-box">
                    <img src="images/26.png" alt="">
                    <span data-purecounter-start="0" data-purecounter-end="95" data-purecounter-duration="1" class="purecounter"></span>
                    <p><strong>Quality Products</strong> </p>
                    <a href="#">Find out more &raquo;</a>
                   </div>
                </div>
                <div class="col" data-aos="zoom-in-down" data-aos-offset="300">
                    <div class="count-box">
                    <img src="images/27.png" alt="">
                    <span data-purecounter-start="0" data-purecounter-end="95" data-purecounter-duration="1" class="purecounter"></span>
                    <p><strong>24/7 Services</strong> </p>
                    <a href="#">Find out more &raquo;</a>
                   </div>
                </div>
            </div>
        </div>
    </div>
    <div class="Ambulance" data-aos="fade-up" data-aos-offset="300">
        <div class="container my-5 p-5">
            <div class="section-title text-center">
                <h1 class=" fw-bold mb-5" data-aos="zoom-in-up" data-aos-offset="300">Ambulance Booking</h1>
                <p class="p ms-5 fs-4">Medulance also has a 24*7*365 days functional emergency helpline number present across pan India, where people can reach out to us for ambulances Support.</p>
              </div>
            <div class="row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 row-cols-1  d-flex justify-content-center align-items-stretch position-relative" >
                    <a href=""><img class="img-fluid  p-5 mt-5" src="https://medulance.com/assets/images/ambulances.png" alt="" data-aos="zoom-in-up" data-aos-offset="300"></a>
                <div class="conntain">
                    <div class="col py-2 fs-5" data-aos="zoom-in-up" data-aos-offset="300">
                        <div class="icon d-flex fs-3 "><i class="fa-solid fa-notes-medical" style="color:#0077B6;"></i></div>
                        <h4 class="title mb-3"><a href="">EMERGENCY</a></h4>
                        <p class="ms-5">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</p>
                        <p>
                            <a href="Ambulance.jsp" class="btn btn-primary m-auto ms-5 mt-2">View More</a>
                            <a href="Ambulance.jsp" class="btn btn-primary m-auto float-end ms-5 mt-2">Book Now</a>
                         </p>
                    </div>
                    <div class="col py-2 fs-5" data-aos="zoom-in-up" data-aos-offset="300">
                        <div class="icon d-flex fs-3"><i class="fa-solid fa-truck-medical" style="color:#0077B6;"></i></div>
                        <h4 class="title mb-3"><a href="">SERVICES </a></h4>
                        <p class="ms-5">Explicabo est voluptatum asperiores consequatur magnam. Et veritatis odit. Sunt aut deserunt minus aut eligendi omnis</p>
                        <p>
                            <a href="Ambulance.jsp" class="btn btn-primary m-auto ms-5 mt-2">View More</a>
                            <a href="Ambulance.jsp" class="btn btn-primary m-auto float-end ms-5 mt-2">Book Now</a>
                         </p>
                    </div>
                </div>
           </div>
            <!-- <a href="" class="btn btn-primary mx-auto">View More</a> -->
            </div> 
        </div>
        <section id="team" class="team_wrapper wrapper " data-aos="zoom-in-down" data-aos-offset="300">
            <div class="container mb-2">
                <div class="row" data-aos="zoom-in-down" data-aos-offset="300">
                    <div class="col-sm-12 text-center mb-5 mt-5">
                        <h1 class="text-black fw-bold " >Our Expert Doctors</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-6 mb-4">
                        <div class="card rounded-3" data-aos="zoom-in-up" data-aos-offset="300">
                            <div class="team-img">
                                <img decoding="async" src="images/doctor2.jpg" class="img-fluid p-5" style="height: 290px; width: 400px;">
                            </div>
                            <div class="team-info pt-3 text-center ">
                                <h5>Darry Milin</h5>
                                <p>Oral Surgeon</p>
                               
                                <p>
                                    <a href="Doctor.jsp" class="btn btn-primary m-auto mt-4">View More</a>
                                    <a href="" class="btn btn-primary m-auto mt-4">Book Appointment</a>
                                 </p>
                            </div>
    
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 mb-4">
                        <div class="card rounded-3" data-aos="zoom-in-down" data-aos-offset="300">
                            <div class="team-img">
                                <img decoding="async" src="images/doctor1.avif" class="img-fluid p-5" style="height:280px;">
                            </div>
                            <div class="team-info pt-4 text-center">
                                <h5>Salman Ahmed</h5>
                                <p>Oral Surgeon</p>
                                <p>
                                    <a href="Doctor.jsp" class="btn btn-primary m-auto mt-4">View More</a>
                                    <a href="" class="btn btn-primary m-auto mt-4">Book Appointment</a>
                                 </p>
                            </div>
    
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 mb-4">
                        <div class="card rounded-3" data-aos="zoom-in-up" data-aos-offset="300">
                            <div class="team-img">
                                <img decoding="async" src="images/doctor3.webp"  style="height: 290px;" class="img-fluid p-5 ">
                            </div>
                            <div class="team-info pt-3 text-center ">
                                <h5>Santa Binte</h5>
                                <p>Oral Surgeon</p>
                                <p>
                                    <a href="Doctor.jsp" class="btn btn-primary m-auto mt-4">View More</a>
                                    <a href="" class="btn btn-primary m-auto mt-4">Book Appointment</a>
                                 </p>
                            </div>
    
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="text-center my-5">
                <div class="btn btn-primary">View More</div>
            </div>
        </section>
        <div class="row row-cols-1 text-center  my-5 p-5" data-aos="fade-up" data-aos-offset="300"><h1 class="fw-bold">Our TieUp Hopitals </h1></div>
        <div class="Hospitals"data-aos="fade-up" data-aos-offset="300" >
            <div class="container my-5 mb-5 d-flex justify-content-between">
                <div class="card" data-aos="fade-up-left" data-aos-offset="300">
                    <div class="face face1" >
                        <div class="content">
                            <img src="images/log1.png" class="ms-4">
                            <h3>Shri Aurobindo Hospital</h3>
                        </div>
                    </div>
                    <div class="face face2">
                        <div class="content1">
                            <p>One of the best multi-specialty clinics in Indore, Shri Aurobindo Hospital and Research Centre has 350 beds and the most advanced medical equipment and technology.</p>
                                <a href="proje_1.jsp">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="card" data-aos="fade-up" data-aos-offset="300">
                    <div class="face face1">
                        <div class="content">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuhdfBFzeGlm3YUcrXLWY87TGNwJSzkOF_jA&usqp=CAU">
                            <h3>Vedant Hospital</h3>
                        </div>
                    </div>
                    <div class="face face2">
                        <div class="content1">
                            <p>One of the prime hospitals in Indore is the Vedant Hospital in Vijay Nagar. With almost two hundred beds, it has a cath lab, state-of-the-art operating theatres and the latest technology.</p>
                                <a href="proje_1.jsp">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="card" data-aos="fade-up-right" data-aos-offset="300">
                    <div class="face face1">
                        <div class="content">
                            <img class="ms-4" src="images/hosp1.png">
                            <h3>Apollo Hospital</h3>
                        </div>
                    </div>
                    <div class="face face2">
                        <div class="content1">
                            <p>One of the healthcare centres that provide the best care in Indore,Apollo is known for having excellent equipment and trained medical professionals.</p>
                                <a href="proje_1.jsp">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                        
        <!--modal-->
        
        
        
        
        
        
        
        
        <div class="text-center my-5">
            <div class="btn btn-primary">View More</div>
        </div>
        <div class="row row-cols-1 text-center  my-5 p-5"><h1 class="fw-bold" data-aos="fade-up" data-aos-offset="300">On Going Campaign</h1></div>
        <div class="Camp">
            <div class="container my-5 p-5 fs-5">
                <div class="row row-cols-lg-4 row-cols-md-2 row-cols-sm-2 row-cols-1">
                    <div class="col" data-aos="zoom-in-down" data-aos-offset="300">
                       <img src="images/camp.jpg"  class="img-fluid p-2" alt="">
                       <h3>Eye Checkup  Camp</h3>
                       <p>Location:Vijay Nagar</p>
                       <p>Date:30/10/2023</p>
                       <a href="" class="btn btn-primary m-auto mt-4">View Details</a>
                    </div>
                    <div class="col" data-aos="zoom-in-up" data-aos-offset="300">
                        <img src="images/camp2.jpg"  class="img-fluid p-2" alt="">
                       <h3>Blood Donation Camp</h3>
                       <p>Location:Marimata</p>
                       <p>Date:30/10/2023</p>
                       <a href="" class="btn btn-primary m-auto mt-4">View Details</a>
                    </div>
                    <div class="col" data-aos="zoom-in-down" data-aos-offset="300">
                        <img src="images/camp3.jpg" class="img-fluid p-2" alt="">
                       <h3>Throid Checkup Camp</h3>
                       <p>Location:Rajwada</p>
                       <p>Date:30/10/2023</p>
                       <a href="" class="btn btn-primary m-auto mt-4">View Details</a>
                    </div>
                    <div class="col" data-aos="zoom-in-up" data-aos-offset="300">
                        <img src="images/can.jpg" class="img-fluid p-1" alt="">
                        <h3>Cancer Related Camp</h3>
                        <p>Location:Bangali Chouraha</p>
                        <p>Date:30/10/2023</p>
                        <a href="" class="btn btn-primary m-auto mt-4">View Details</a>
                     </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center my-5">
            <div class="btn btn-primary">View More</div>
        </div>
        <div class="row row-cols-1 text-center  my-5 p-4" data-aos="fade-up" data-aos-offset="300"><h1 class="fw-bold">Upcoming Campaign</h1></div>
        <div class="Camp">
            <div class="container my-5 p-5 fs-5">
                <div class="row row-cols-lg-4 row-cols-md-2 row-cols-sm-2 row-cols-1">
                    <div class="col" data-aos="zoom-in-down" data-aos-offset="300">
                       <img src="images/eye.jpg"  class="img-fluid p-2" alt="">
                       <h3>Eye Checkup  Camp</h3>
                       <p>Location:Vijay Nagar</p>
                       <p>Date:30/10/2023</p>
                       <a href="" class="btn btn-primary m-auto mt-4">View Details</a>
                    </div>
                    <div class="col" data-aos="zoom-in-up" data-aos-offset="300">
                        <img src="images/blood.jpg"  class="img-fluid p-2" alt="">
                       <h3>Blood Donation Camp</h3>
                       <p>Location:Marimata</p>
                       <p>Date:30/10/2023</p>
                       <a href="" class="btn btn-primary m-auto mt-4">View Details</a>
                    </div>
                    <div class="col" data-aos="zoom-in-down" data-aos-offset="300">
                        <img src="images/Thy.jpg" class="img-fluid p-2" alt="">
                       <h3>Throid Checkup Camp</h3>
                       <p>Location:Rajwada</p>
                       <p>Date:30/10/2023</p>
                       <a href="" class="btn btn-primary m-auto mt-4">View Details</a>
                    </div>
                    <div class="col" data-aos="zoom-in-up" data-aos-offset="300">
                        <img src="images/Cane.jpg" class="img-fluid p-1 mt-2" alt="">
                        <h3>Cancer Related Camp</h3>
                        <p>Location:Bangali Chouraha</p>
                        <p>Date:30/10/2023</p>
                        <a href="" class="btn btn-primary m-auto mt-4">View Details</a>
                     </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center my-5">
            <div class="btn btn-primary">View More</div>
        </div>
       
        <div class="Camp ms-4">
            <div class="container my-5 mt-5">
                <div class="text-center my-5 mt-5 mb-5 ">
                    <h1>What Our<span class="text-primary">Client Says</span></h1>
                    <hr class="w-25 m-auto">
                </div>

                <div class="row">
                    <div class="col-sm-12 col-md-4 col-lg-4 col-12 ">
                        <div class="card" data-aos="zoom-in-up" data-aos-offset="200">
                            <div class="card-body">
                                <img src="images/Client1.jpg" alt="" class="img-fluid rounded-circle border border-primary p-2" >
                              <h5 class="card-title mt-4">Bratt Watson</h5>
                              <p class="card-text">Grate Experience.can now reach to customers from  all over indiawhich wouldnot havebeenpossible otherwise</p>
                              <div class="social">
                                <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                                <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                                <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                                <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                                <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                              </div>
                            </div>
                          </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-12 ">
                        <div class="card" data-aos="zoom-in-down" data-aos-offset="200">
                            <div class="card-body">
                                <img src="images/Client2.jpg" alt="" class="img-fluid rounded-circle border border-primary p-2" >
                              <h5 class="card-title mt-4">Pratikshya Rai</h5>
                              <p class="card-text ">Grate Experience.can now reach to customers from  all over indiawhich wouldnot havebeenpossible otherwise</p>
                              <div class="social">
                                <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                                <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                                <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                                <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                                <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                              </div>
                            </div>
                          </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-12 ">
                        <div class="card" data-aos="zoom-in-left" data-aos-offset="200">
                            <div class="card-body">
                                <img src="images/Client3.jpg" alt="" class="img-fluid rounded-circle border border-primary p-2">
                                 <h5 class="card-title mt-4">Mr. Sunil. J Vishwa Kumar</h5>
                                <p class="card-text">Grate Experience.can now reach to customers from  all over indiawhich wouldnot havebeenpossible otherwise</p>
                                <div class="social">
                                    <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                                    <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                                    <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                                    <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                                    <a href=""><i class="fa-solid fa-star fa-2xs" style="color: #f5d60a;"></i></a>
                                  </div>
                            </div>
                          </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
        <div class="footer bg-dark">
            <div class="container-fluid">
                <div class="row row-cols-lg-4 row-cols-md-4 row-cols-sm-2 row-cols-1">
                    <div class="col">
                        <div class="last text-white">
                            <h5 class="mt-5"><img src="images/logo.png" style="width:70%" alt=""></h5>
                            <p>Sanjeevani aims to provide overall health 
                                welfare and awareness and to cover
                                the gap between the peoples and the medications</p>
                            <div class="link">
                                <ul class="list-unstyled e">
                                    <li><a href="#" class="text-white text-decoration-none"><i class="fa fa-home me-3 p-0 "></i> Polo Ground Indore</a></li>
                                    <li><a href="#" class="text-white text-decoration-none"><i class="fa fa-phone me-3"></i>+91 8827343481</a></li>
                                    <li><a href="#" class="text-white text-decoration-none"><i class="fa fa-envelope me-3"></i>sb360879@gmail.com</a></li>
                                </ul>
                            </div>
                            <ul class="social-network d-flex align-items-center justify-content-sm-around p-0 list-unstyled">
                                <li class=""><a href="#"><i class="fab fa-facebook-f "></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                <li><a href="#"><i class="fab fa-instagram-v"></i></a></li>
                            </ul>
                        </div> 
                    </div>
                    <div class="col">
                        <div class="last text-white">
                            <h5 class="mt-5">Company</h5>
                            <ul class="link-widget p-0 list-unstyled text-white">
                                <li><a href="#" class="text-white text-decoration-none">About Us</a></li>
                                <li ><a href="#" class="text-white text-decoration-none">Blog</a></li>
                                <li ><a href="#" class="text-white text-decoration-none">Contact Us</a></li>
                                <li ><a href="#" class="text-white text-decoration-none">FAQs</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col">
                        <div class="last text-white">
                            <h5 class="mt-5">Services</h5>
                            <ul class="link-widget p-0 list-unstyled">
                                <li><a href="#" class="text-white text-decoration-none">My Account</a></li>
                                <li><a href="#" class="text-white text-decoration-none">Terms and Conditions</a></li>
                                <li><a href="#" class="text-white text-decoration-none">Login</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col">
                        <div class="last text-white">
                            <h5 class="mt-5">NewsLetter</h5>
                            <p>Subscribe to our weekly Newsletter and receive updates via email.</p>
                             <input type="email" class="form-control bg-transparent" placeholder="Enter Your Email Here">
                             <button type="submit" class="main-btn rounded-2 mt-3 fs-5 border-white  bg-primary text-white">Submit</button>
                            <a href="https://play.google.com/store/apps/details?id=com.sanjeevani.sanjeevanidoctorapp&hl=en&gl=US"><img class="img-fluid" src="images/playstore.png" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid copyright-section bg-dark ">
            <p class="p-0 bg-dark text-white p-3 text-center">Copyright <a href="#" class="text-white">© CODE4EDUCATION.</a> All Rights Reserved</p>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>

    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<!--    <script>
        AOS.init();
        
    // Function to enable editing of input fields
    function enableEditing() {
    var Myname = document.getElementById("Myname");
    var mobile = document.getElementById("mobile");
    var email = document.getElementById("email");
    var dob = document.getElementById("dob");
    var address = document.getElementById("address");
    var profile = document.getElementById("profile");
    var btnRow = document.getElementById("btn");

    Myname.disabled = false;
    mobile.disabled = false;
    email.disabled = false;
    dob.disabled = false;
    address.disabled = false;
    profile.disabled = false;
    btnRow.style.display = "table-row";

    var enableButton = document.getElementById("enableButton");
    enableButton.style.display = "none";
}

// Adding event listener to the "Edit" button
var enableButton = document.getElementById("enableButton");
enableButton.addEventListener("click", enableEditing);
</script>-->
</body>

</html>
<%} 
catch(Exception e){
 out.print(e);
}%>