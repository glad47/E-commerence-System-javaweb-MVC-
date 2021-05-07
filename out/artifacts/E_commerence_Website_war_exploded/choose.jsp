
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


<c:if test="${sessionScope.user != null && sessionScope.cart!=null }">
    <c:redirect url="cart.jsp"></c:redirect>
</c:if>
<c:if test="${sessionScope.user != null && sessionScope.cart==null }">
    <c:redirect url="empcart.jsp"></c:redirect>
</c:if>
<c:if test="${sessionScope.user == null  }">
    <c:redirect url="account.jsp"></c:redirect>
</c:if>





</body>
</html>
