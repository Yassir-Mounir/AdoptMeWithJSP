<%-- 
    Document   : Profile
    Created on : Jun 3, 2021, 7:49:16 PM
    Author     : DellE5570
--%>
<%
    if (session.getAttribute("id") == null) {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
        return;
    }
%>
<%@page import="newpackage.Connexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="${pageContext.request.contextPath}/PNG/logo1111.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Header.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Footer.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" 
              integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" 
              crossorigin="anonymous" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>MY PROFILE</title>
    </head>
    <script type="text/javascript">
        function f1() {
            var navbar = document.getElementById('nav');
            navbar.classList.toggle('show');
        }
        var x;
        function Confirmation()
        {
            if (x.value === "Delete My Profile")
            {
                if (window.confirm("Do You Want To Delete Your Profile ?"))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else if (x.value === "Modify")
            {
                if (window.confirm("Do You Want To Change Your Information ?"))
                {
                    return true;
                }
                else
                {
                    return false;
                }
                return true;
            } else if (x.name === "delete")
            {
                if (window.confirm("Do You Want To delete This Pet ?"))
                {

                    return true;
                }
                else
                {
                    return false;
                }
                return true;
            }
        }
        function  recuperer_etat(b)
        {
            x = b;
        }

    </script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@1,300&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

        html,
        body {
            height: fit-content;
            padding: 0;
            margin: 0;
            font-family: 'Poppins', sans-serif !important;
            width: 100%;
            height: 100%;
            overflow-x: hidden;
            /* to hide extra right space in iPhone 5/SE */
            font-size: 100%;
            vertical-align: baseline;
            background: transparent;
        }

        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;

        }

        .main-div {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
            height: 400px;
        }

        .first-child img {
            border-radius: 50%;
            width: 200px;
            height: 200px;
        }

        .first-child {
            background-color: #584545;
            border-radius: 40px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            width: 300px;
            height: 400px;
            margin: 10px;

        }

        .second-child {
            background-color: #856b6b;
            border-radius: 40px;
            width: 800px;
            height: 400px;
            margin: 10px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-evenly;
        }

        .information {
            display: flex;
            justify-content: space-around;
        }
        .bigger{
            margin: 60px;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        #ligne {
            background-color: gray;
            height: 1px;
            width: 650px;
        }
        .submit{
            margin-top: 30px;
            margin-left: 50%;
        }


        #inputid{
            background: none;
            border: none;
            font-size: 20px;
            color: whitesmoke;
        }

        #inputid{
            background: none;
            border: none;
            font-size: 20px;
            color: whitesmoke;
            width: 150px;
        }
        .container{
            /* background-color: whitesmoke; */
            margin: 80px 0px 80px 0px;


        }
        .father{
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: space-around;

        }
        .child{
            /* border: 1px solid black ; */
            border-radius: 20px;
            /* margin: 20px 40px 20px 10px ; */
            margin-left: 2%;
            margin-bottom: 10%;
            margin-right: 2%;
            background-color: #856b6b;
            display: flex;
            flex-direction: column;
            align-items: center;
            box-shadow: rgba(49, 49, 99, 0.315) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
            transition: 1s;
            height: fit-content;
            width:fit-content;
        }

        p{
            padding: 0px 25px;
        }
        h2{
            margin-bottom: -20px;
        }
        .separation{
            height: 1px;
            width: 240px;
            background-color:rgba(22, 22, 22, 0.253);
        }
        .myanimal{
            background-color: #584545;
            border-radius: 40px;
            text-align: center;
            color: whitesmoke;
            margin: 0 20px;
        }
        .fa-trash-alt{
            color: whitesmoke;
            padding:20px;
            background-color: none;
        }
        .fa-trash-alt:hover{
            color: red;
        }
    </style>
    <body>
        <header>
            <div class="toggle-btn" onclick="f1();">
                <span></span>
                <span></span>
                <span class="bottom-span"></span>
            </div>

            <div class="logo">
                <a href="${pageContext.request.contextPath}/index.jsp" class="logo"><img src="${pageContext.request.contextPath}/PNG/logo1111.png"/></a>
            </div>
            <nav id="nav">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/index.jsp">HOME</a></li>
                    <li><a href="${pageContext.request.contextPath}/JSP/Pets.jsp">PETS</a></li>
                    <li><a href="${pageContext.request.contextPath}/JSP/About.jsp">ABOUT</a></li>
                        <%if (session.getAttribute("id") != null) {%>
                    <li><a href="#">MY PROFILE</a></li>
                    <li>  <form method="POST" action="${pageContext.request.contextPath}/Authen">
                            <input type="submit" value="DISCONNECT" name="act" class="linkish" style="background-color: transparent; border: 0; color: whitesmoke; cursor: pointer;
                                   display: inline;  outline: none;  font-size:  16px;  text-transform: uppercase;"/> </form></li>

                    <%   } else {%>
                    <li><a href="${pageContext.request.contextPath}/JSP/SignIn.jsp">SIGN IN</a></li>              
                        <% }%>
                </ul>
            </nav>
        </header>
        <%
            ResultSet R = Connexion.Seconnecter().createStatement().executeQuery("select * from proprietaire where ID_PRO='" + request.getSession().getAttribute("id") + "'");
            R.next();
        %>
        <form action="${pageContext.request.contextPath}/MAJ" method="post" onsubmit="return Confirmation();">
            <div class="bigger">
                <div class="main-div">
                    <div class="first-child">
                        <img src="${pageContext.request.contextPath}/PNG/DefaultProfile.jpg">
                        <p style="color: whitesmoke; font-size: 20px;"><%out.print("Hello : " + R.getObject(2) + " " + R.getObject(3));%></p>
                        <p style="color: whitesmoke;"><%=R.getObject(5)%></p>
                    </div>
                    <div class="second-child">
                        <div class="">
                            <h4 style="text-transform: uppercase;">Information</h4>
                            <div id="ligne"></div>
                            <div class="information">
                                <div class="full-name" style="color: whitesmoke;">
                                    <br> Full Name : <br>
                                    <input type="text" value="<%=R.getObject(2)%>"
                                           id="inputid" name="mdnom">
                                    <input type="text" value="<%=R.getObject(3)%>"
                                           id="inputid" name="mdprenom">
                                </div>
                                <div class="City" style="color: whitesmoke;">
                                    <br> City : <br>
                                    <input type="text" value="<%=R.getObject(5)%>"
                                           style="background: none; border: none;font-size: 20px; color: whitesmoke;" name="mdville">
                                </div>
                            </div>
                        </div>
                        <div class="">
                            <h4 style="text-transform: uppercase;">Contact</h4>
                            <div id="ligne"></div>
                            <div class="information" style="color: whitesmoke;">
                                <div class="phone-number">
                                    <br> Phone : <br>
                                    <input type="text"  value="<%=R.getObject(4)%>"
                                           style="background: none; border: none; font-size: 20px; color: whitesmoke;" name="mdtele">
                                </div>
                                <div class="email">
                                    <br> E-mail : <br>
                                    <input type="text" value="<%=R.getObject(6)%>"
                                           style="background: none; border: none; font-size: 20px; width: 250px; color: whitesmoke;" name="mdemail">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    if (request.getAttribute("message") != null) {
                        out.print("<p style='color: red '>" + request.getAttribute("message") + "</p>");
                    }
                %>
                <div class="submit">
                    <input type="submit" value="Modify" name="maj" onclick="recuperer_etat(this)" style="background-color: #584545; border: none; border-radius: 5px; font-size: 18px; padding: 5px 10px; color: whitesmoke;">
                    <input type="submit" value="Post Adoption Request" name="maj" style="background-color: #584545; border: none; border-radius: 5px; font-size: 18px; padding: 5px 10px; margin-left: 10px; color: whitesmoke;">
                    <input type="submit" value="Delete My Profile" name="maj" onclick="recuperer_etat(this)" style="background-color: #584545; border: none; border-radius: 5px; font-size: 18px; padding: 5px 10px; margin-left: 10px; color: whitesmoke;" >
                </div>
            </div>
        </form>
        <form action="${pageContext.request.contextPath}/deletanimal" method="post" onsubmit="return Confirmation();">
            <div class="myanimal">
                <h2 style="padding: 20px"> My Animals </h2>
                <div class="container">
                    <div class="father">  
                        <%
                            R = Connexion.Seconnecter().createStatement().executeQuery("select * from animal where ID_PRO ='" + request.getSession().getAttribute("id") + "'");
                            while (R.next()) {
                                if (R.getObject(6).equals("dog")) {
                                    out.print(" <div class = 'child' style='width:300px'>  "
                                            + "<img style='margin-top:10px; padding:20px 10px;' src='" + request.getContextPath() + "/PNG/dog.png' width='150' height='150'>"
                                            + "<h2 style = ' text-shadow:none;' > NAME : " + R.getObject(3) + " </h2>"
                                            + "<h3> RACE : " + R.getObject(6) + " </h3>"
                                            + "<div class = 'separation' > </div>"
                                            + "<p style = 'text-transform:capitalize;'> description of the animal <br> </p> <p style ='width:fit-content;'>" + R.getObject(9) + " </p>"
                                            + "<button style='background-color: #856b6b; border:none;' type='submit' name='delete' value='" + R.getObject(1) + "' onclick='recuperer_etat(this)'><i class='far fa-trash-alt fa-2x'></i></button>"
                                            + "</div>");
                                }
                                if (R.getObject(6).equals("cat")) {
                                    out.print(" <div class = 'child' style='width:300px'>  "
                                            + " <img style ='margin-top:10px; padding:20px 10px; 'src ='" + request.getContextPath() + "/PNG/cat.png' width='150' height='150'>"
                                            + "<h2 style = ' text-shadow:none;' > NAME : " + R.getObject(3) + " </h2>"
                                            + "<h3> RACE : " + R.getObject(6) + " </h3>"
                                            + "<div class = 'separation' > </div>"
                                            + "<p style = 'text-transform:capitalize;'> description of the animal <br> </p> <p style ='width:fit-content;'>" + R.getObject(9) + " </p>"
                                            + "<button style='background-color: #856b6b; border:none;' type='submit' name='delete' value='" + R.getObject(1) + "' onclick='recuperer_etat(this)'><i class='far fa-trash-alt fa-2x'></i></button>"
                                            + "</div>");
                                }
                                if (R.getObject(6).equals("bird")) {
                                    out.print(" <div class = 'child' style='width:300px'>  "
                                            + " <img style ='margin-top:10px;  padding:20px 10px;'src = '" + request.getContextPath() + "/PNG/bird.png' width='150' height='150'>"
                                            + "<h2 style = ' text-shadow:none;' > NAME : " + R.getObject(3) + " </h2>"
                                            + "<h3> RACE : " + R.getObject(6) + " </h3>"
                                            + "<div class = 'separation' > </div>"
                                            + "<p style = 'text-transform:capitalize;'> description of the animal <br> </p> <p style ='width:fit-content;'>" + R.getObject(9) + " </p>"
                                            + "<button style='background-color: #856b6b; border:none;' type='submit' name='delete' value='" + R.getObject(1) + "' onclick='recuperer_etat(this)'><i class='far fa-trash-alt fa-2x'></i></button>"
                                            + "</div>");
                                }
                                if (R.getObject(6).equals("fish")) {
                                    out.print(" <div class = 'child' style='width:300px'>  "
                                            + " <img style ='margin-top:10px;  padding:20px 10px;'src = '" + request.getContextPath() + "/PNG/fish.png' width='150' height='150'>"
                                            + "<h2 style = ' text-shadow:none;' > NAME : " + R.getObject(3) + " </h2>"
                                            + "<h3> RACE : " + R.getObject(6) + " </h3>"
                                            + "<div class = 'separation' > </div>"
                                            + "<p style = 'text-transform:capitalize;'> description of the animal <br> </p> <p style ='width:fit-content;'>" + R.getObject(9) + " </p>"
                                            + "<button style='background-color: #856b6b; border:none;' type='submit' name='delete' value='" + R.getObject(1) + "' onclick='recuperer_etat(this)'><i class='far fa-trash-alt fa-2x'></i></button>"
                                            + "</div>");
                                }

                            }

                        %>
                    </div>
                </div>
            </div>
        </form>
        <%                                    if (request.getAttribute("msg") != null) {
                out.print("<p style='color: red '>" + request.getAttribute("message") + "</p>");
            }
        %>








        <footer>
            <div class="footer-top">
                <div class="footer-top-items">
                    <h2>Adopt Me</h2>
                    <p>It's a platform which allows you to publish and also allows you to find animals to adopt all around Morocco.</p>
                    <h2>FOLLOW US</h2>
                    <br>
                    <a class="fab fa-facebook-f social-icon" href="https://www.facebook.com/"></a>
                    <a class="fab fa-twitter social-icon" href="http://www.twitter.com/"></a>
                    <a class="fab fa-instagram social-icon" href="http://www.instagram.com/"></a>
                    <a class="fab fa-youtube social-icon" href="http://www.youtube.com/"></a>
                </div>
                <div class="footer-top-items">
                    <h2>USEFUL LINKS</h2>
                    <ul>
                        <li><a href="../index.jsp">Home</a></li>
                        <!-- <li><a href="#">Prestataires</a></li> -->
                        <li><a href="${pageContext.request.contextPath}/JSP/About.jsp">About US</a></li>
                        <!--<li><a href="${pageContext.request.contextPath}/JSP/SignUp.jsp">Join US ?</a></li>-->
                        <%if (session.getAttribute("id") != null) {%>
                        <li></li>
                            <%   } else {%>
                        <li><li><a href="${pageContext.request.contextPath}/JSP/SignUp.jsp">Join US ?</a></li></li>              
                            <% }%>
                        <li><a href="${pageContext.request.contextPath}/JSP/ContactUs.jsp">Contact US</a></li>
                    </ul>
                </div>
                <div class="footer-top-items">
                    <h2>FIND US</h2>
                    <div class="tpitems">
                        <i class="fa fa-map-pin icon" aria-hidden="true"></i><span>&nbsp;&nbsp;Rue Ibnou Nafis Résidence Ben Omar, IMM 375 Etage 4 N 21 Mâarif , Grand Casablanca,Morocco .
                        </span>
                        <br>
                        <br>
                        <i class="fa fa-phone icon" aria-hidden="true"></i><span>&nbsp;&nbsp;&nbsp;+212 5 22 54 26 88</span>
                        <br>
                        <br>
                        <i class="fa fa-envelope icon" aria-hidden="true"></i><span>&nbsp;&nbsp;&nbsp;contact@AdoptMe.com</span>
                    </div>   
                </div>
            </div>
            <div class="footer-bottom">
                &copy;&nbsp;&nbsp;<b>Copyright 2021
                    By</b>&nbsp;&nbsp;<b>ADOPT.ME</b>&nbsp;
            </div>
        </footer>



    </body>
</html>
