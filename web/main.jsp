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
    <title>Shoppe</title>
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
<div class="header">
    <div class="container-fluid h-100">
        <div class="row">
            <div class="col ">
                <nav class="navbar navbar-expand-md navbar-dark sticky-top mb-5 w-100">
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
        <div id="introduction" class=" row">
            <div class="  col-sm-7  m-3 p-3 text-center "  >
                <h1>Add To Your Life<br>A New Style!</h1>
                <p>Being Stylesh Being alive,Bing Confident<br> & Bing Fresh </p>
                <a href="products.jsp"  type="button" class="add p-2 m-2" style="border-radius:30px;" >Explore Now &#8594;</a>
            </div>
            <div class=" col-sm-3 ml-5 mt-3 mr-0 p-3 ">
                <%--                  <img src="img/w.png" width="320"  class="ml-5 mt-3 mr-0 d-block align-content-center" alt="">--%>
                <%--                                <picture>--%>
                <%--                                    <source srcset="img/w2.jpg" media="(min-width: 768px)">--%>
                <%--                                    <source srcset="img/w2.jpg" media="(min-width: 768px)">--%>
                <%--                                    <source srcset="img/w3.jpg" media="(min-width: 576px)">--%>
                <%--                                    <img  class="ml-5 mt-3 mr-0 d-block align-content-center" srcset="img/w.png" alt="responsive image" class="card-img img-fluid">--%>
                <%--                                </picture>--%>

                <picture>
                    <source srcset="img/w.png" media="(minwidth:1400px)">
                    <source srcset="img/w2.jpg" media="(minwidth:768px)">
                    <img srcset="img/w.png" alt="responsive image" class="d-block img-fluid">
                </picture>


            </div>

        </div>

    </div>

</div>
<!-------------------- Featured Categories  --------------------->
<div class="container-fluid mtt">
    <div class="row ">
        <div class="col d-flex justify-content-center ">
            <div class=" rec card-group w-75 h-75 p-2 ">
                <div  class="card ml-3 mr-3 single-product ">
                    <img class="card-img-top" width="350" src="img/user3.jfif" alt="Card image cap">

                </div>
                <div  class="card ml-3 mr-3 single-product ">
                    <img class="card-img-top" width="350" src="img/product2.jfif" alt="Card image cap">

                </div>
                <div  class="card ml-3 mr-3  single-product">
                    <img class="card-img-top" width="350" src="img/product3.jfif" alt="Card image cap">

                </div>
            </div>
        </div>
    </div>

</div>
<!-------------------- Featured Products  --------------------->


<div class="container-fluid mtt ">
    <h2 class="title d-flex justify-content-center">Featured Products</h2>
    <div class="row ">
        <div class="col d-flex justify-content-center ">
            <div class="rec card-deck w-75">
                <div class="card">
                    <img class="card-img-top" src="img/product5.jfif" height="300"  alt="Card image cap">
                    <div class="cont">
                        <h5 class="mb-0">Card title</h5>
                        <div class="rating mt-0">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h6>$50.00</h6>
                    </div>
                </div>
                <div  class="card single-product">
                    <img class="card-img-top" src="img/product6.jfif" height="300"  alt="Card image cap">
                    <div class="cont">
                        <h5 class="mb-0">Card title</h5>
                        <div class="rating mt-0">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h6>$50.00</h6>
                    </div>
                </div>
                <div  class="card single-product">
                    <img class="card-img-top" src="img/product7.jfif" height="300" alt="Card image cap">
                    <div class="cont">
                        <h5 class="mb-0">Card title</h5>
                        <div class="rating mt-0">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h6>$50.00</h6>
                    </div>
                </div>
                <div  class="card single-product">
                    <img class="card-img-top" src="img/product9.jfif" height="300" alt="Card image cap">
                    <div class="cont">
                        <h5 class="mb-0">Card title</h5>
                        <div class="rating mt-0">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h6>$50.00</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


<!-------------------- Latest Products  --------------------->
<div class="container-fluid mtt ">
    <h2 class="title d-flex justify-content-center">Latest Products</h2>
    <div class="row ">
        <div class="col d-flex justify-content-center ">
            <div class="rec card-deck w-75">
                <div  class="card single-product">
                    <img class="card-img-top" src="img/product14.jfif" height="300"  alt="Card image cap">
                    <div class="cont">
                        <h5 class="mb-0">Card title</h5>
                        <div class="rating mt-0">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h6>$50.00</h6>
                    </div>
                </div>
                <div  class="card single-product">
                    <img class="card-img-top" src="img/product15.jfif" height="300"  alt="Card image cap">
                    <div class="cont">
                        <h5 class="mb-0">Card title</h5>
                        <div class="rating mt-0">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h6>$50.00</h6>
                    </div>
                </div>
                <div  class="card single-product">
                    <img class="card-img-top" src="img/product16.jfif" height="300" alt="Card image cap">
                    <div class="cont">
                        <h5 class="mb-0">Card title</h5>
                        <div class="rating mt-0">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h6>$50.00</h6>
                    </div>
                </div>
                <div   class="card single-product">
                    <img class="card-img-top" src="img/product17.jfif" height="300" alt="Card image cap">
                    <div class="cont">
                        <h5 class="mb-0">Card title</h5>
                        <div class="rating mt-0">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h6>$50.00</h6>
                    </div>
                </div>

            </div>
        </div>
        <div class="col-lg-12 d-flex justify-content-center mt-5">
            <div class="rec card-deck w-75">
                <div  class="card single-product">
                    <img class="card-img-top" src="img/product10.jfif" height="300"  alt="Card image cap">
                    <div class="cont">
                        <h5 class="mb-0">Card title</h5>
                        <div class="rating mt-0">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h6>$50.00</h6>
                    </div>
                </div>
                <div  class="card single-product">
                    <img class="card-img-top" src="img/product11.jfif" height="300"  alt="Card image cap">
                    <div class="cont">
                        <h5 class="mb-0">Card title</h5>
                        <div class="rating mt-0">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h6>$50.00</h6>
                    </div>
                </div>
                <div  class="card single-product">
                    <img class="card-img-top" src="img/product12.jfif" height="300" alt="Card image cap">
                    <div class="cont">
                        <h5 class="mb-0">Card title</h5>
                        <div class="rating mt-0">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h6>$50.00</h6>
                    </div>
                </div>
                <div  class="card single-product">
                    <img class="card-img-top" src="img/product13.jfif" height="300" alt="Card image cap">
                    <div class="cont">
                        <h5 class="mb-0">Card title</h5>
                        <div class="rating mt-0">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h6>$50.00</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-------------------- Offer  --------------------->
<div class="offer mtt ">
    <div class="container-fluid ">
        <div id="off" class="row">

            <div class="col-sm-6 order-md-2 d-block align-content-center justify-content-center">
                <p>Exclusively Available on SHOPPE</p>
                <h1>Stylish Band Shoes</h1>
                <small>This is a longer card with supporting text below as a natural lead-in to additional content.<br>
                    This content is a little bit longer.</small><br>
                <button  type="button" class="add p-2 m-2" style="border-radius:30px;" >Buy Now &#8594;</button>
            </div>
            <div class="col-sm-6 order-md-1 d-flex justify-content-center">
                <%--                <img src="img/offer.png" class="h-75 " />--%>
                <picture>
                    <source srcset="img/offer2.jpg" media="(minwidth:1400px)">
                    <source srcset="img/offer3.jpg" media="(minwidth:1000px)">

                    <source srcset="img/offer4.jpg" media="(minwidth:768px)">
                    <source srcset="img/offer5.jpg" media="(minwidth:500px)">
                    <source srcset="img/offer6.jpg" media="(minwidth:200px)">
                    <img srcset="img/offer.png" alt="responsive image" class="d-block img-fluid">
                </picture>

            </div>
        </div>

    </div>
</div>


<!------------------- Testimonial -------------------->

<div class="container-fluid mtt ">
    <h2 class="title d-flex justify-content-center">Testimonials</h2>
    <div class="row ">
        <div class="col d-flex justify-content-center ">
            <div class="testmoinal card-deck w-75">
                <div  class="card single-product">
                    <i class="fa fa-quote-left"></i>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                        aliquip ex ea commodo consequat.
                    </p>
                    <div class="rating mt-0">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <img src="img/user.jfif"  width="50" />
                    <h3>Sean Parker</h3>
                </div>
                <div  class="card single-product">
                    <i class="fa fa-quote-left"></i>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                        aliquip ex ea commodo consequat.
                    </p>
                    <div class="rating mt-0">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <img src="img/user2.jfif" width="50" />
                    <h3>Sean Parker</h3>
                </div>
                <div  class="card single-product">
                    <i class="fa fa-quote-left"></i>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                        aliquip ex ea commodo consequat.
                    </p>
                    <div class="rating mt-0">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <img src="img/user3.jfif"  width="50" />
                    <h3>Sean Parker</h3>
                </div>
            </div>

        </div>
    </div>
</div>

</div>

<!------------------- Brands  -------------------->
<div class="brands">
    <div class="container-fluid">
        <div class="raw">
            <div class="col d-flex justify-content-center">
                <div class="card-group w-75  p-2 ">
                    <div  class="card ml-3 mr-3 single-product ">
                        <img class="card-img-top sp" width="50" src="img/band/band1.png" alt="Card image cap">

                    </div>
                    <div  class="card ml-3 mr-3 sp2 single-product">
                        <img class="card-img-top" width="70" src="img/band/band2.png" alt="Card image cap">

                    </div>
                    <div  class="card ml-3 mr-3 sp3 single-product ">
                        <img class="card-img-top" width="70" src="img/band/band3.png" alt="Card image cap">

                    </div>
                    <div  class="card ml-3 mr-3 sp4  single-product">
                        <img class="card-img-top sp" width="70" src="img/band/band4.png" alt="Card image cap">

                    </div>
                    <div  class="card ml-3 mr-3 sp5  single-product">
                        <img class="card-img-top" width="70" src="img/band/band5.png" alt="Card image cap">

                    </div>
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

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
