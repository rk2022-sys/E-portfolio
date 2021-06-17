<%
    HttpSession s = request.getSession(false);
    String email = (String) s.getAttribute("email");
    if (email != null) {
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="login.css">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/duotone.css" integrity="sha384-R3QzTxyukP03CMqKFe0ssp5wUvBPEyy9ZspCB+Y01fEjhMwcXixTyeot+S40+AjZ" crossorigin="anonymous"/>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/fontawesome.css" integrity="sha384-eHoocPgXsiuZh+Yy6+7DsKAerLXyJmu2Hadh4QYyt+8v86geixVYwFqUvMU8X90l" crossorigin="anonymou
              <meta charset="utf-8">
              <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <title>JSP Page</title>
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
                        <li> About-us</li>
                        <li>contact</li>
                        <a href="login.jsp"><li>Account</li></a>
                    </ul>
                </div>

            </div>

        </div>
        <div class="container" style="position: absolute; top: 100px; left: 100px;">
            <div class="row">
                <div class="col-lg-4"></div>
                <div class="col-lg-4 middle"style="height:500px;margin-bottom: 100px;">

                    <h3 style="text-align: center">Change-password</h2>
                        <form action="Change_Password" method="post">
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-envelope" aria-hidden="true"></i>
                                            </i></span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Email" name="email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email">Old-password:</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-unlock-alt" aria-hidden="true"</i>
                                            </i></span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Old-password" name="opass">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="pwd">New-Password:</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                    </div>
                                    <input type="password" class="form-control" placeholder="New-password" name="npass">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="pwd">Retype-NewPassword:</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                    </div>
                                    <input type="password" class="form-control" placeholder="confirm-password" name="rpass">
                                </div>
                            </div>
                            <a href="login.jsp">Log-in</a>
                            <button type="submit" class="btn btn-dark"style="float:right;">Submit</button>
                        </form>







                </div>
                <div class="col-lg-4"></div>
            </div>
        </div>


    </body>
</html>
<% } else {
    response.sendRedirect("login.jsp");

    

}%>
