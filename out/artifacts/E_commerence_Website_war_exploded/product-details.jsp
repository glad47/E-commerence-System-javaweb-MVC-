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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product Details - Shoppe</title>
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

<div class="container-fluid ">
    <div class="row mb-sm-5">
        <div class="col ">
            <nav class="navbar navbar-expand-md navbar-light sticky-top  w-100">
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



<!-------------------- Single Product Detials  --------------------->


<div class="up container-fluid d-flex justify-content-center  mtt w-100 ">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:useBean id="listAll" scope="session" type="example.ProductList"/>
        <c:forEach var="item" varStatus="status"  items="${listAll.list}">

    <c:if test="${item.id == param.id}">
        <div class="row w-75 overflow-auto">
            <div class="col-md-6 d-flex justify-content-center  order-md-2 mt-5 ">
                <div  class="card details">
                    <div class="cont2">
                        <h5 class="mt-1 mb-md-2 mb-xl-4">${item.name}</h5>
                        <h1 class="mt-md-3 mt-xl-5">${item.title}</h1>
                        <div class="rating mt-0">
                            <c:forEach begin="${1}" end="${item.rating}">
                                <i class="fa fa-star"></i>
                            </c:forEach>
                            <c:forEach begin="${1}" end="${5 - item.rating}">
                                <i class="fa fa-star-o"></i>
                            </c:forEach>
                        </div>
                        <h4 class="mt-md-3 mt-xl-2">${item.price}$</h4>
                        <form id="addtocart">
                        <select  class="sort mt-md-3 mt-xl-5 ">
                            <option>Select Size</option>
                            <option>XXL</option>
                            <option>XL</option>
                            <option>Large</option>
                            <option>Medium</option>
                            <option>Small</option>
                        </select>
                        <div class="d-flex flex-row mt-md-2 mt-xl-4">

                            <input  class="sort mr-3" type="number" value="1">
                        </form>
                            <a id="added" href="#"  class="add">Add to Cart</a>

                        </div>
                        <h3 class="mt-md-3 mt-xl-5">Product Detials<i class="fa fa-indent"></i></h3>
                        <p class="mt-md-1 mt-xl-3">${item.description}</p>
                    </div>
                </div>
            </div>


    <div class="col-md-6  d-flex justify-content-center order-md-1 mt-md-5  ">

        <div  class="card mb-xs-5 mb-sm-0 details ">
            <img id="show-img"  class="card-img-top p-0" src="${item.src.get(0)}"  alt="">
            <div class="rec card-deck mt-2  ">
                <div  class="card ">
                    <img   class="show card-img-top p-0" src="${item.src.get(0)}"   alt="">
                </div>
                <c:choose>
                    <c:when test="${item.src.size() == 2}">
                        <div class="card ">
                            <img  class="show card-img-top p-0" src="${item.src.get(1)}"  alt="">
                        </div>
                        <div  class="card ">
                            <img class="show card-img-top p-0" src="${item.src.get(0)}"   alt="">
                        </div>
                        <div  class="card ">
                            <img   class="show card-img-top p-0" src="${item.src.get(0)}"  alt="">
                        </div>
                    </c:when>
                    <c:when test="${item.src.size() == 3}">
                        <div class="card ">
                            <img  class="show card-img-top p-0" src="${item.src.get(1)}"  alt="">
                        </div>
                        <div  class="card ">
                            <img class="show card-img-top p-0" src="${item.src.get(2)}"   alt="">
                        </div>
                        <div  class="card ">
                            <img   class="show card-img-top p-0" src="${item.src.get(0)}"  alt="">
                        </div>
                    </c:when>
                    <c:when test="${item.src.size() == 4}">
                        <div class="card ">
                            <img  class="show card-img-top p-0" src="${item.src.get(1)}"  alt="">
                        </div>
                        <div  class="card ">
                            <img class="show card-img-top p-0" src="${item.src.get(2)}"   alt="">
                        </div>
                        <div  class="card ">
                            <img   class="show card-img-top p-0" src="${item.src.get(3)}"  alt="">
                        </div>
                    </c:when>
                    <c:otherwise>

                            <div class="card ">
                                <img  class="show card-img-top p-0" src="${item.src.get(0)}"  alt="">
                            </div>
                            <div  class="card ">
                                <img class="show card-img-top p-0" src="${item.src.get(0)}"   alt="">
                            </div>
                            <div  class="card ">
                                <img   class="show card-img-top p-0" src="${item.src.get(0)}"  alt="">
                            </div>

                    </c:otherwise>
                </c:choose>

<%--                <div class="card ">--%>
<%--                    <img  class="show card-img-top p-0" src="img/product8.jfif"  alt="">--%>
<%--                </div>--%>
<%--                <div  class="card ">--%>
<%--                    <img class="show card-img-top p-0" src="img/product6.jfif"   alt="">--%>
<%--                </div>--%>
<%--                <div  class="card ">--%>
<%--                    <img   class="show card-img-top p-0" src="img/product7.jfif"  alt="">--%>
<%--                </div>--%>
            </div>
        </div>

    </div>


   </div>
    </c:if>
        </c:forEach>
</div>


<%--                        <div class="small-img-row mt-2">--%>
<%--                            <div class="small-img-col">--%>
<%--                                <img src="img/product5.jfif" >--%>
<%--                            </div>--%>
<%--                            <div class="small-img-col">--%>
<%--                                <img src="img/product5.jfif" >--%>
<%--                            </div>--%>
<%--                            <div class="small-img-col">--%>
<%--                                <img src="img/product5.jfif" >--%>
<%--                            </div>--%>
<%--                            <div class="small-img-col">--%>
<%--                                <img src="img/product5.jfif" >--%>
<%--                            </div>--%>
<%--                        </div>--%>

<div class="container-fluid mtt w-100 ">

<div class="row d-flex justify-content-center ">
    <div class="related-prod col d-sm-flex justify-content-sm-around w-75">
        <h1>Related Products</h1>
        <p class="mt-5">View more</p>
    </div>




</div>
    <div class="row mtt">
        <div class="col d-flex justify-content-center ">
            <div class="rec card-deck w-75">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:useBean id="listAllSale" scope="session" type="example.ProductList"/>

    <c:forEach var="item" begin="${0}" end="${3}" varStatus="status"  items="${listAllSale.list}">

                <div  class="card single-product">
                    <a class="gopro" href="product-details.jsp?id=${item.id}">
                        <img class="card-img-top" src="${item.src.get(0)}" height="300"  alt="Card image cap">

                        <div class="cont">
                            <h5 class="mb-0 ">${item.name}</h5>
                            <div class="rating mt-0">
                                <c:forEach begin="${1}" end="${item.rating}">
                                    <i class="fa fa-star"></i>
                                </c:forEach>
                                <c:forEach begin="${1}" end="${5 - item.rating}">
                                    <i class="fa fa-star-o"></i>
                                </c:forEach>
                            </div>
                            <h6>${item.price}$</h6>

                </div>
                    </a>
            </div>
</c:forEach>
            </div>
        </div>
    </div>



</div>


<!------------------- Footer  -------------------->
<div class="footer mtt">
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

<%--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/jquery-3.5.1.js"></script>

<script>
    $(function(){

        var prodImg=$("#show-img")
        $("#added").click(function(){
            var id="<c:out value='${param.id}'/>"
            var size= $("#addtocart select").find(":selected").text()
            var quantity=$("#addtocart input").val()
            if(size == "Select Size" && quantity <= 0 ){
                alert("Please select size and choose correct quantity")
            }else if(size == "Select Size"){
                alert("Please select size")
            }else if(quantity <= 0){
                alert("Please choose correct quantity")
            }else{
                $.ajax({
                    type : 'post',
                    url : 'cartservlet',
                    data: {
                        action:"add",
                        id: id,
                        size:size,
                        quantity:quantity
                    },
                    success : function(data) {
                    if(data == "register"){
                        document.location.href = 'account.jsp',true;
                    }else{
                            alert("The Product Added successfully to your cart")
                        }

                    },
                });
                // $.post("cartservlet",
                //     {
                //         id: id,
                //         size:size,
                //         quantity:quantity
                //     },
                //     function(data, status){
                //
                //
                //     });
            }
        })
        $($(".show")[0]).click(function(){
            prodImg.attr("src",$(this).attr("src") );
        })

        $($(".show")[1]).click(function(){
            prodImg.attr("src",$(this).attr("src") );
        })
        $($(".show")[2]).click(function(){
            prodImg.attr("src",$(this).attr("src") );
        })
        $($(".show")[3]).click(function(){
            prodImg.attr("src",$(this).attr("src") )
        })
    });
</script>
</body>
</html>
