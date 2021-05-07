<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12-Nov-20
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width", initial-scale="1.0">
    <title>Shopping Cart - Shoppe</title>
    <%--    ####################################################--%>
    <%--    C S S - bootstrap, custom styles--%>
    <%--    ####################################################--%>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <!-- Main CSS -->
    <link rel="stylesheet" href="/styles/main.css" type="text/css">


    <!-- FontAwesome Icons -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Maven+Pro:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i"
          rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">



</head>
<body>
<div class="account-page">
<div class="container-fluid ">
    <div class="row">
        <div class="col ">
            <nav class="navbar navbar-expand-md  navbar-light sticky-top mb-5 w-100">
                <!-- One of the primary actions on mobile is to call a business - This displays a phone button on mobile only -->

                <div class="navbar-toggler-right">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>


                <a class="navbar-brand" href="main.jsp">
                    <img src="img/logo/logo.png" width="125"  class="d-inline-block align-top" alt="">

                </a>

                <div class="collapse navbar-collapse" id="navbar">
                    <nav class="nav d-flex flex-column flex-md-row w-100 justify-content-end  ">
                        <a class="flex-fill text-center nav-link text-dark" href="#about">About</a>
                        <a class="flex-fill text-center nav-link text-dark" href="#services">Services</a>
                        <a class="flex-fill text-center nav-link text-dark" href="#contact">Contact</a>
                        <a class="flex-fill text-center nav-link text-dark mt-1" href="choose.jsp"><i class="fas fa-shopping-bag"></i></a>
                    </nav>
                </div>
            </nav>



        </div>

    </div>


</div>

<!----------------- Account Page  ---------------->

    <div id="acc" class="container-fluid h-100 d-md-flex justify-content-md-between">
        <div class="row   w-100">
            <div class="col-sm-6 mt-md-2">
                <picture>

                    <img srcset="img/w.png" alt="responsive image" class="">
                </picture>
            </div>
            <div class="col-sm-6 mt-md-4">
            <div class="form-container">
                <div class="form-btn">
                    <span id="Log">Login</span>
                    <span id="Reg">Register</span>
                    <hr id="Indicator">
                </div>
                <form id="LoginForm">
                    <input type="text" placeholder="Username">

                    <input type="password" placeholder="Password">
                    <span class="w-100">
                        <small style="color: red;display:none;" id="wrongUP">Wrong Username or Password</small>
                    </span >
                    <a id="sub_log" type="submit" class="add  text-white">Login</a>
                    <a href="#">Forget password</a>
                </form>

                <form id="RegForm">
                    <input type="text"  placeholder="Username">
                    <span class="w-100">
                        <small style="color: red;display:none;" id="takenusername">Registered Username!!</small>
                    </span >
                    <input type="email" placeholder="Email">
                    <span class="w-100">
                        <small style="color: red;display:none;" id="takenemail">Registered Email!!</small></span>
                    <input type="password" placeholder="Password">
                    <a id="sub_reg" type="submit" class="add text-white ">Register</a>
                </form>
            </div>
            </div>
        </div>

    </div>

</div>


<!------------------- Footer  -------------------->
<div class="footer">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-4">
                <h3>Download Our App</h3>
                <p>Download App For Andriod and Iso Moblie Phone.</p>
                <div class="app-logo mt-3">
                    <img width="150" class="rounded" src="img/band/google.png" />
                    <img width="150"  class="rounded" src="img/band/iso.png" />
                </div>
            </div>
            <div class="col-sm-4">
                <img src="img/logo/logo.png" width="100" alt=""/>
                <p>Our Purpose Is To Sustainably Make the Pleasure and Benefits Of Women Clothes To The Many.</p>
            </div>
            <div class="col-sm-2">
                <h3>Useful Links</h3>
                <ul>
                    <li>Coupons</li>
                    <li>Blog Post</li>
                    <li>Return Policy</li>
                    <li>Join Affiliate</li>
                </ul>

            </div>
            <div class="col-sm-2">
                <h3>Follow Us</h3>
                <ul>
                    <li>Facebook</li>
                    <li>Twitter</li>
                    <li>Instagram</li>
                    <li>YouTube</li>
                </ul>
            </div>

        </div>
        <hr class="mt-0">
        <p class="copyright text-center">Copyright 2020 - SHOPPE</p>
    </div>
</div>



<!-- Bootstrap core JS -->


<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script src="js/jquery-3.5.1.js"></script>

<script>
    $(function(){
        var LoginForm=$("#LoginForm");
        var RegForm=$("#RegForm");
        var Indicator=$("#Indicator");
        var clkLog=$("#Log");
        var clkReg=$("#Reg");
        var sub_reg=$("#sub_reg");

        $("input").click(function(){
            $('input').css('border-color','');
            // $('#takenemail').css('visibility','hidden');
            // $('#takenusername').css('visibility','hidden');
            // $('#wrongUP').css('visibility','hidden');
            $('#takenemail').css('display','none');
            $('#takenusername').css('display','none');
            $('#wrongUP').css('display','none');
        })
        $("#sub_log").click(function(){
            var username=$("#LoginForm input[type='text']").val();
            var password=$("#LoginForm input[type='password']").val();
            if(username != "" && password != "") {
                $.ajax({
                    type: 'post',
                    url: 'userservlet',
                    data: {
                        action: "login",
                        username: username,
                        password: password,

                    },
                    success: function (data) {
                        console.log(data)
                        if (data == "login failed") {
                            console.log(data);
                            $("#LoginForm input").css('border-color', 'red')
                            // $("#wrongUP").css('visibility', 'visible')
                            $("#wrongUP").css('display', 'block')
                        } else {
                            document.location.href = 'main.jsp', true;
                        }
                    },
                    async:false
                });
            }else{
                alert("please enter all the required fields")
            }
        })

        sub_reg.click(function(){
            var username=$("#RegForm input[type='text']").val();
            var password=$("#RegForm input[type='password']").val();
            var email=$("#RegForm input[type='email']").val();
            if(username != "" && password!="" && email !=""){
                console.log(username)
                $.ajax({
                    type : 'post',
                    url : 'userservlet',
                    data: {
                        action:"register",
                        username: username,
                        password:password,
                        email:email
                    },
                    success : function(data) {
                        console.log(data)
                        if(data == "email failed"){
                            console.log(data)
                            $("#RegForm input[type='email']").css('border-color','red')
                            $("#takenemail").css('display', 'block')
                            // $("#takenemail").removeClass("display");
                        }else if(data == "username failed"){
                            console.log(data)
                            $("#RegForm input[type='text']").css('border-color','red')
                            $("#takenusername").css('display', 'block')
                            // $("#takenusername").removeClass("display");
                        }else{
                            alert("Registered Successfully, Please Login in")
                        }
                    },
                    async:false
                });
            }else{
                alert("Please enter all required fields")
            }

        });


        clkLog.click(function(){
            LoginForm.css({"transform": "translateX(300px)"});
            RegForm.css({"transform": "translateX(300px)"});
            Indicator.css({"transform": "translateX(0px)"});
        });

        clkReg.click(function(){
            LoginForm.css({"transform": "translateX(0px)"});
            RegForm.css({"transform": "translateX(0px)"});
            Indicator.css({"transform": "translateX(100px)"});
            console.log("yesReg");
        });


    });
</script>
</body>
</html>
