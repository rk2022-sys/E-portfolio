<%
    HttpSession s = request.getSession(false);
    String name, email;
    name = (String) s.getAttribute("name");
    email = (String) s.getAttribute("email");

    if (email != null) {


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%-- to use google font we included bootstrap api  --%>
        
        <link rel="stylesheet" type="text/css" href="index.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <title>profile:<%=name%></title>

        <style>
            .dropbtn {
                background-color: #999999;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
                margin-top: 20px;
                float:right;
                display: inline-block;
                border-radius:10px;     <%-- for making border circular --%>

            }

            .dropdown {
                position: relative;     <%--  --%>
                display: inline-block;
                float:right;
            }

            .dropdown-content {
                display: none;
                position: absolute;      <%-- div take across from top left most corner  --%>
                background-color: #f1f1f1;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
                margin-top:15px; 
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown-content a:hover {background-color: #ddd;}

            .dropdown:hover .dropdown-content {display: block;}

            .dropdown:hover .dropbtn {background-color: #3e8e41;}



        </style>


    </head>
    <body>          
        <div class="bimage">
            <div class="menu">

                <div class="leftmenu">
                 <img src="images/logo.png">
                </div>



                <div class="rightmenu">
                    <ul>
                        <a href="index.jsp"> <li id="fisrtlist">HOME </li></a>
                         <a href="ask.jsp">  <li>Ask a question </li></a>
                         <a href="aboutus.jsp"> <li> About us</li></a>
                        
                        


                    </ul>
                </div>
                <div class="dropdown">
                    <button class="dropbtn">Account</button>
                    <div class="dropdown-content">
                        <a href="changepassword.jsp">Change-password</a>
                        <a href="Logout">Log-out</a>
                    </div>
                </div>


            </div>
            <div id="demo" class="carousel slide" data-ride="carousel">

                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>

                <!-- The slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="carousel-caption" >
                            <h2><p style="font-size:70px; ">Hello! <span><%=name%></span></p></h2>
                            <div>
                                <p style="font-size:40px">Welcome to Your Portal</p>
                            </div>
                        </div>   


                        <img src="images/c1.jpeg" alt="Los Angeles" width="100%" height="500">
                        <div class="carousel-caption" >
                            <h2><p style="font-size:70px; ">Hello! <span><%=name%></span></p></h2>
                            <div>
                                <p style="font-size:40px">Welcome to Your Portal</p>
                            </div>
                        </div>   


                    </div>


                    <div class="carousel-item">
                        <img src="images/c2.jpeg" alt="Chicago" width="100%" height="500">
                        <div class="carousel-caption" >
                            <h2><p style="font-size:70px; ">Hello! <span><%=name%></span></p></h2>
                            <div>
                                <p style="font-size:40px">Welcome to Your Portal</p>
                            </div>
                        </div>   
                    </div>



                    <div class="carousel-item">
                        <img src="images/c3.jpeg" alt="New York" width="100%" height="500" >
                        <div class="carousel-caption" >
                            <h2><p style="font-size:70px; ">Hello! <span><%=name%></span></p></h2>
                            <div>
                                <p style="font-size:40px">Welcome to Your Portal</p>
                            </div>
                        </div>   



                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>

                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>

                  <center> <form><script src="https://checkout.razorpay.com/v1/payment-button.js" data-payment_button_id="pl_GbmAhM0TqqtHT7" async> </script> </form></center>
            </div>
            <div 

                    

              
        </div>

</body>
</html>
<%} else {
        response.sendRedirect("login.jsp");
    }%>
