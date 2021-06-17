<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <link rel="stylesheet" href="login.css">


        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/duotone.css" integrity="sha384-R3QzTxyukP03CMqKFe0ssp5wUvBPEyy9ZspCB+Y01fEjhMwcXixTyeot+S40+AjZ" crossorigin="anonymous"/>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/fontawesome.css" integrity="sha384-eHoocPgXsiuZh+Yy6+7DsKAerLXyJmu2Hadh4QYyt+8v86geixVYwFqUvMU8X90l" crossorigin="anonymou
              <meta charset="utf-8">
              <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
    <body>
        <div class="bgimage">
            <div class="menu">

                <div class="leftmenu">
                    <img src="images/logo.png">
                </div>

                <div class="rightmenu">
                    <ul>
                        <a href="index.jsp"> <li id="fisrtlist">HOME </li></a>
                         <a href="aboutus.jsp"> <li> About us</li></a>
                        <li>contact</li>
                        <a href="login.jsp"><li>Account</li></a>
                    </ul>
                </div>

            </div>

        </div>





        <div class="container" style="position: absolute; top: 90px; left: 60px;">
            <div class="row">
                <div class="col-lg-4"></div>
                <div class="col-lg-4 middle"style="height:560px;margin-bottom: 100px;">

                    <h2 style="text-align: center">Sign-up</h2>
                    <form action="Register" method="post">
                        <div class="form-group">
                            <label for="email">Name:</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-user"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Username" name="name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-envelope-square"></i>
                                        </i></span>
                                </div>
                                <input type="email" class="form-control" placeholder="email" name="email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Password:</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                </div>
                                <input type="password" class="form-control" placeholder="password" name="pass">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Confirm Password:</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                </div>
                                <input type="password" class="form-control" placeholder="confirmpassword" name="cpass">
                            </div>
                        </div>
                        <div class="form-group">
                            <label >Dob:</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-calendar-week"></i></span>
                                </div>
                                <input type="date" class="form-control" placeholder="Date of Birth" name="dob">
                            </div>

                        </div>
                        <a href="login.jsp">Log-in</a>
                        <button type="submit" class="btn btn-dark"style="float:right;">Sign-up</button>
                    </form>







                </div>
                <div class="col-lg-4"></div>
            </div>
        </div>

    </body>
</html>
