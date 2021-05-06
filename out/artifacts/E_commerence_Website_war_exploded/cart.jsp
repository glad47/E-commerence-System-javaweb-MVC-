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

<!-------------- Cart Items Details  -------------->
<div class="container-md-fluid w-100 d-md-flex justify-content-md-center ">
    <div id="cart" class="row">
        <div class="col ">
<table class="table">
    <thead>
    <tr class="fir">
        <th scope="col">Product</th>
        <th scope="col">Quantity</th>
        <th scope="col">Size</th>
        <th scope="col">Subtotal</th>
    </tr>
    </thead>
    <tbody>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<c:set var = "ch" scope = "session" value = "${sessionScope.cart}"/>--%>
<%--<c:if test="${empty ch == false} ">--%>
<c:set var = "ch" scope = "session" value = "${sessionScope.cart}"/>
<c:if test="${empty ch} == ture ">
    <c:redirect url="products.jsp"></c:redirect>
</c:if>
<jsp:useBean id="cart" scope="session" type="example.Cart"/>
<c:forEach var="item" varStatus="status"  items="${cart.items}">
    <tr class="itm">
        <td>
            <div class=" main-con d-flex flex-row">
                <img src="${item.product.src.get(0)}" />
                <div class="mt-md-3" >
                    <h4>${item.product.name}</h4>
                    <p class="price">${item.product.price}<span>$</span></p>
                    <a id="${item.id}" href="#">Remove</a>
                </div>
            </div>
        </td>
        <div>
        <td><input type="number" class="quant" value="${item.quantity}"/></td>
        <td><select  class="sort">
            <option>${item.size}</option>
            <option>XXL</option>
            <option>XL</option>
            <option>Large</option>
            <option>Medium</option>
            <option>Small</option>
        </select>
        </td>
            <input type="hidden" value="${item.id}">
        </div>
        <td class="here"><p>${item.quantity * item.product.price}<span>$</span></p></td>
    </tr>

</c:forEach>
    </tbody>
    <tfoot>

    <table class="table tab-inside  w-50  float-md-right ">
        <hr class="this">
        <thead>

        </thead>

        <tbody>
        <tr>
            <th scope="row ">Subtotal</th>
            <th id="subtotal" class="text-md-right"></th>

        </tr>
        <tr>
            <th scope="row">Tax</th>
            <th id="tax" class="text-md-right"></th>
        </tr>
        <tr>
            <th scope="row">Total</th>
            <th id="total" class="text-md-right"></th>

        </tr>
        <tr>
            <th colspan="2">  <a id="pay" class="add" href="#">Pay Now</a></th>
        </tr>
        </tbody>
        <tfoot>

        </tfoot>
    </table>

    </tfoot>

</table>

<%--            </c:if>--%>
<%--            <c:if test="${empty ch == true }">--%>

<%--                <td colspan="4" class="text-center m-5 p-5">No Items in The Cart</td>--%>
<%--                </tr>--%>
<%--                </tbody>--%>
<%--            </table>--%>
<%--            </c:if>--%>


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
    var tot=0.0;

    $.ajax({
        type : 'post',
        url : 'cartservlet',
        data: {
            action:"total",
        },
        success : function(data) {
            if(data !=null){

                $("#subtotal").html(data + "$")
                tot=parseFloat(data)
                $.ajax({
                    type : 'post',
                    url : 'cartservlet',
                    data: {
                        action:"tax",
                    },
                    success : function(data) {
                        $("#tax").html(data + "$")
                        tot=tot+parseFloat(data)
                        $("#total").html(tot.toString() + "$")

                    },
                });
            }else{
                $("#subtotal").html("0$")
                $("#tax").html("0$")
                $("#total").html("0$")
            }

        },
    });
    $(".main-con a").click(function(){
        var id=this.id;
        $.ajax({
            type : 'post',
            url : 'cartservlet',
            data: {
                action:"removeitem",
                line_id: id,
            },
            success : function(data) {
                $.ajax({
                    type : 'post',
                    url : 'cartservlet',
                    data: {
                        action:"total",
                    },
                    success : function(data) {
                        $("#subtotal").html(data + "$")
                        tot=parseFloat(data)
                        $.ajax({
                            type : 'post',
                            url : 'cartservlet',
                            data: {
                                action:"tax",
                            },
                            success : function(data) {
                                $("#tax").html(data + "$")
                                tot=tot+parseFloat(data)
                                $("#total").html(tot.toString() + "$")
                                $("#" + id).parents(".itm").slideDown('slow',function(){
                                    $("#" + id).parents(".itm").remove()
                                })
                            },
                        });
                    },
                });
            },
        });
    })

    $(".quant").change(function(){
        var quantity=$(this).val()
        // console.log(quantity)
        var size=$(this).parents("td").siblings("td").children(".sort").find(":selected").text()
        // console.log(size)
        var id=$(this).parents("td").siblings("input").val()
        // console.log(id)
        var price=$(this).closest("tr").find(".price").html()
        // console.log(price)
        var res=$(this).parents("td").siblings(".here").children('p')

        var fin=parseFloat(parseFloat(price) * quantity)
        // console.log(fin)
        if(quantity > 0){
            $.ajax({
                type : 'post',
                url : 'cartservlet',
                data: {
                    action:"update",
                    id: id,
                    size:size,
                    quantity:quantity
                },
                success : function(data) {
                    $.ajax({
                        type : 'post',
                        url : 'cartservlet',
                        data: {
                            action:"total",
                        },
                        success : function(data) {
                            $("#subtotal").html(data + "$")
                            tot=parseFloat(data)
                            $.ajax({
                                type : 'post',
                                url : 'cartservlet',
                                data: {
                                    action:"tax",
                                },
                                success : function(data) {
                                    $("#tax").html(data + "$")
                                    tot=tot+parseFloat(data)
                                    $("#total").html(tot.toString() + "$")
                                     res.html("<p>"+ fin +".0$</p>")
                                },
                            });
                        },
                    });
                },
            });
        }else{
            alert("please enter value greater than 0, you can remove the item by clicking remove")
            $(this).val(1)
        }
    })

    $(".sort").change(function(){
        var quantity=$(this).parents("td").siblings("td").children("input").val()
        // console.log(quantity)
        var size=$(this).find(":selected").text()
        // console.log(size)
        var id=$(this).parents("td").siblings("input").val()
        // console.log(id)
        if(quantity > 0){
            $.ajax({
                type : 'post',
                url : 'cartservlet',
                data: {
                    action:"update",
                    id: id,
                    size:size,
                    quantity:quantity
                },
                success : function(data) {
                    $.ajax({
                        type : 'post',
                        url : 'cartservlet',
                        data: {
                            action:"total",
                        },
                        success : function(data) {
                            $("#subtotal").html(data + "$")
                            tot=parseFloat(data)
                            $.ajax({
                                type : 'post',
                                url : 'cartservlet',
                                data: {
                                    action:"tax",
                                },
                                success : function(data) {
                                    $("#tax").html(data + "$")
                                    tot=tot+parseFloat(data)
                                    $("#total").html(tot.toString() + "$")

                                },
                            });
                        },
                    });
                },
            });
        }else{
            alert("please enter value greater than 0, you can remove the item by clicking remove")
        }
    })

    $("#pay").click(function(){
        $.ajax({
            type : 'post',
            url : 'cartservlet',
            data: {
                action:"payment",
            },
            success : function(data) {
                if(data == "success"){
                    alert("Payment Successful")
                    document.location.href = 'main.jsp',true;
                }

            },
        });
    })
})
</script>
</body>
</html>
