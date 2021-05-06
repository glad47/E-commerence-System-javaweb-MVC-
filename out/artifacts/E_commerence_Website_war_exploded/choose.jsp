
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 27-Dec-20
  Time: 8:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "ch" scope = "session" value = "${sessionScope.user}"/>
<c:set var = "cho" scope = "session" value = "${sessionScope.cart}"/>
    <c:choose>
        <c:when test="${not empty ch }">
            <c:choose>
                <c:when test="${not empty cho }">
                    <c:redirect url="cart.jsp"></c:redirect>

                </c:when>
                <c:otherwise>
                    <c:redirect url="empcart.jsp"></c:redirect>


                </c:otherwise>
            </c:choose>
        </c:when>
        <c:otherwise>
            <c:redirect url="account.jsp"></c:redirect>

        </c:otherwise>
    </c:choose>


</body>
</html>
