<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="index.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/c8e4d183c2.js" crossorigin="anonymous"></script>
        <style>
            @import "https://use.fontawesome.com/releases/v5.5.0/css/all.css";
            body {background: #F5F6F8;}
            body{
                margin:0px;
                padding: 0px;
                background-color: #dee1ec;
            }
            a{
                text-decoration:none;
            }
            .social a{
                padding: 20px;
                color:#7b7c7c;
                font-size:1.1rem;
            }
            #contact{
                position: absolute;
                left: 50%;
                top: 50%;
                transform: translate(-50%,-50%);
                display: flex;
                align-items: center;
            }
            .social{
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                background-color: #FFFFFF;
                box-shadow: 2px 2px 30px rgba(0,0,0,0.1);
            }
            .social a:hover{
                color:#000000;
                transition: all ease 0.3s;
            }
            .contact-box{
                background-color:#434445;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                padding: 30px 30px;
                box-shadow: 2px 0px 30px rgba(0,0,0,0.1);
            }
            .c-heading h1{
                font-family: Roboto;
                color: #e7eef3;
                font-size: 2.5rem;
                font-weight: lighter;
                margin: 0px;
                padding: 0px;
            }
            .c-heading p{
                font-family: Roboto;
                color:#cecece;
                font-size: 0.8rem;
                font-weight: lighter;
                margin: 0px;
                padding: 0px;
                text-align: center;
            }
            .c-inputs{
                margin: -70px 0px;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }
            .c-inputs input{
                width:250px;
                height: 45px;
                background-color: transparent;
                border: none;
                border-bottom: 1px solid rgba(251,251,251,0.1);
                outline: none;
                margin: 10px 0px;
                padding: 10px;
                box-sizing: border-box;
                color: #f4f4f4;
                display: flex;
            }
            .c-inputs textarea{
                width:250px !important;
                height: 200px !important;
                outline: none;
                background-color: transparent;
                border:1px solid rgba(82,82,82,1);
                color: #f4f4f4;
                padding: 10px;
                font-size: 1.2rem;
                box-sizing: border-box;
            }
            .c-inputs button{
                width:200px;
                height: 40px;
                background-color: #FFFFFF;
                border: none;
                outline: none;
                margin-top: 20px;
                border-radius: 10px;
                box-shadow: 2px 2px 30px rgba(0,0,0,0.1);
                letter-spacing: 1px;
            }
            .c-inputs input:focus{
                border-bottom: 1px solid rgba(252,252,252,1.00);
                transition: all ease 0.5s;
            }
            .c-inputs textarea:focus{
                border: none;
                border-bottom: 1px solid rgba(255,255,255,1.00);
                transition: all ease 0.5s;
                background-color: rgba(0,0,0,0.1);
            }
            .c-inputs button:active{
                transform: scale(1.02);
            }
            .map{
                filter: grayscale(0.2);
                box-shadow: 2px 2px 30px rgba(0,0,0,0.2);
                border: 2px solid #FFFFFF;
            }
            @media(max-width:1100px){
                .map{
                    display: none;
                }
            }
            @media(max-width:450px){
                .social{
                    display: none;
                }
                .contact-box{
                    width: 100%;
                    height: 100vh;
                    box-sizing: border-box;
                }
                #contact{
                    position: static;
                    transform: translate(0,0);
                    width:100%;
                    height: 100vh;
                    box-sizing: border-box;
                }
                .c-heading h1{
                    font-size: 2.2rem;
                    text-align: center;
                }

            }
        </style>

    </head>
    <body>
        <div class="menu">

            <div class="leftmenu">
                <img src="images/logo.png">
            </div>

            <div class="rightmenu">
                <ul>
                    <a href="index.jsp"> <li id="fisrtlist">HOME </li></a>
                    <a href="ask.jsp">  <li>Ask a question </li></a>
                    <a href="aboutus.jsp"> <li> About us</li></a>

                    <a href="login.jsp"><li>Account</li></a>
                </ul>
            </div>

        </div>

        <!--Contact Us Body -->
        <!--contact-form-container------------------->
        <section id="contact">
            <!--socail----------->
            <div class="social">
                <!--icons--------->
                <a href="https://www.facebook.com"><i class="fab fa-facebook-f"></i></a>
                <a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a>
                <a href="https://www.instagram.com"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-dribbble"></i></a>
                <a href="#"><i class="fab fa-behance"></i></a>

            </div>
            <!--contact-box------------->
            <div class="contact-box">
                <!--heading---------->
                <div class="c-heading">
                    <h1>Having Queries?</h1>
                    <p>We will contact you Regarding Question Or Issues</p>
                </div>
                <!--inputs------------------>
                <div class="c-inputs">
                    <form>
                        <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSfN0BPdsCgrRzFxnU69IkKz8GlPArKeZzKLlWp9BLxMfMiDzQ/viewform?embedded=true" width="440" height="400" frameborder="0" marginheight="0" marginwidth="0" >Loading…</iframe>
                    </form>
                </div>

            </div>
            <!--map------------------->
            <div class="map">
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2854.4660022761705!2d86.81605173059921!3d23.739296143415373!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f6ddfce1e72bbd%3A0x1e6491d2aa6f5429!2sRaksha%20Kali%20Mandr!5e0!3m2!1sen!2sin!4v1614254077562!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </section>
    </body>
</html>
