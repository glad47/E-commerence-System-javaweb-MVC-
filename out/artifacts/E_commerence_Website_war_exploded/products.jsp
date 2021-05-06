<%--@elvariable id="con" type=""--%>
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
    <title>All Products - Shoppe</title>
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


    </div>



<!-------------------- Featured Products  --------------------->


<div class="container-fluid mtt ">
    <div class="row d-flex justify-content-between text-center ">
        <div class="col">
            <h2>All Products</h2>
        </div>
        <div  class="col">
            <select id="sort">
                <option>Sort Sorting</option>
                <option>Sort by price</option>
                <option>Sort by popularity</option>
                <option>Sort by sale</option>
            </select>
        </div>

    </div>
    <div id="productList" class="mtt">

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:useBean id="listAll" scope="session" type="example.ProductList"/>
        <c:set var = "num_of_results" scope = "page" value = "${listAll.list.size()}"/>
        <c:set var = "result_per_page" scope = "page" value = "${12}"/>
        <c:set var = "number_of_pages" scope = "page" value = "${(num_of_results div result_per_page)+(1-((num_of_results div result_per_page) mod 1)) mod 1}"/>
        <c:choose>
            <c:when test="${param.pageno == null}">
                <c:set var="pageno" scope="page" value="1"/>
            </c:when>
            <c:otherwise>
                <c:set var="pageno" scope="page" value="${param.pageno}"/>
            </c:otherwise>
        </c:choose>
        <c:set var = "this_page_start_res" scope = "page" value = "${(pageno -1)*result_per_page}"/>
        <c:set var = "this_page_end_res" scope = "page" value = "${this_page_start_res + result_per_page -1}"/>

        <c:forEach var="item" begin="${this_page_start_res}" end="${this_page_end_res}" varStatus="status"  items="${listAll.list}">

        <c:if test="${status.index % 4 == 0}">
            <div class="row mtt">
            <div class="col d-flex justify-content-center ">
            <div class="rec card-deck w-75">
        </c:if>

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
        <c:if test="${(status.index+1) % 4 == 0}">
            </div>
            </div>
            </div>
        </c:if>

    </c:forEach>

    </div>


    <div class="row mt-3">
    <div class="col d-flex justify-content-center">
        <nav id="page" aria-label="...">
            <ul class="pagination">
<%--                <li class="page-item disabled"><a class="page-link" href="#" >Previous</a></li>--%>
<%--                <li class="page-item active"><a class="page-link" href="#">1</a></li>--%>
<%--                <li class="page-item "><a class="page-link" href="#">2 </a></li>--%>
<%--                <li class="page-item"><a class="page-link" href="#">3</a></li>--%>
<%--                <li class="page-item">--%>
<%--                    <a class="page-link" href="#">Next</a>--%>
<%--                </li>--%>
            </ul>
        </nav>
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

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/jquery-3.5.1.js"></script>
<script>
    $(function(){
        var noOfPage = "<c:out value='${number_of_pages}'/>"
        var pageno = "<c:out value='${pageno}'/>"
        var con=1;


        if(pageno == 1){
            $("#page ul").append(` <li class="page-item "><a class="page-link" href="#" >Previous</a></li>`);

        }else{
            $("#page ul").append(` <li class="page-item"><a class="page-link" href="products.jsp?pageno=${pageno-1}" >Previous</a></li>`);

        }


        $("#page ul").append(`<li class="page-item active"><a class="page-link" href="products.jsp?pageno=${pageno}">${pageno}</a></li>`);



        if(noOfPage > pageno){
            $("#page ul").append(`<li class="page-item"> <a class="page-link" href="products.jsp?pageno=${pageno+1}">Next</a></li>`)
        }else{
            $("#page ul").append(` <li class="page-item"> <a class="page-link" href="#">Next</a></li>`)

        }

        $("#sort").change(function(){
           var action= $('#sort').find(":selected").text();
           switch (action){
               case 'Sort by price':

                   $('#productList').load("product_model/byprice.jsp")
                   console.log("price");
                   break;
               case 'Sort by popularity':
                   $('#productList').load("product_model/bydate.jsp")
                   break;
               case 'Sort by sale':
                   $('#productList').load("product_model/byrate.jsp")
                   break;
               default:
                   $('#productList').load("product_model/bynothing.jsp")
                   break;
           }
        })
    })
</script>
</body>
</html>
