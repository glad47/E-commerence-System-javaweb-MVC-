<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<jsp:useBean id="listAllLastest" scope="session" type="example.ProductList"/>--%>
<%--<c:set var = "num_of_results" scope = "page" value = "${listAllLastest.list.size()}"/>--%>
<%--<c:set var = "result_per_page" scope = "page" value = "${12}"/>--%>
<%--<c:set var = "number_of_pages" scope = "page" value = "${(num_of_results div result_per_page)+(1-((num_of_results div result_per_page) mod 1)) mod 1}"/>--%>
<%--<c:choose>--%>
<%--    <c:when test="${param.pageno == null}">--%>
<%--        <c:set var="pageno" scope="page" value="1"/>--%>
<%--    </c:when>--%>
<%--    <c:otherwise>--%>
<%--        <c:set var="pageno" scope="page" value="${param.pageno}"/>--%>
<%--    </c:otherwise>--%>
<%--</c:choose>--%>
<%--<c:set var = "this_page_start_res" scope = "page" value = "${(pageno -1)*result_per_page}"/>--%>
<%--<c:set var = "this_page_end_res" scope = "page" value = "${this_page_start_res + result_per_page -1}"/>--%>

<%--<c:forEach var="item" begin="${this_page_start_res}" end="${this_page_end_res}" varStatus="status"  items="${listAllLastest.list}">--%>

<%--    <c:if test="${status.index % 4 == 0}">--%>
<%--        <div class="row mtt">--%>
<%--        <div class="col d-flex justify-content-center ">--%>
<%--        <div class="rec card-deck w-75">--%>
<%--    </c:if>--%>

<%--    <div  class="card single-product">--%>
<%--        <a class="gopro" href="product-details.jsp?id=${item.id}">--%>
<%--            <img class="card-img-top" src="${item.src.get(0)}" height="300"  alt="Card image cap">--%>

<%--            <div class="cont">--%>
<%--                <h5 class="mb-0 ">${item.name}</h5>--%>
<%--                <div class="rating mt-0">--%>
<%--                    <c:forEach begin="${1}" end="${item.rating}">--%>
<%--                        <i class="fa fa-star"></i>--%>
<%--                    </c:forEach>--%>
<%--                    <c:forEach begin="${1}" end="${5 - item.rating}">--%>
<%--                        <i class="fa fa-star-o"></i>--%>
<%--                    </c:forEach>--%>
<%--                </div>--%>
<%--                <h6>${item.price}$</h6>--%>
<%--            </div>--%>
<%--        </a>--%>
<%--    </div>--%>
<%--    <c:if test="${(status.index+1) % 4 == 0}">--%>
<%--        </div>--%>
<%--        </div>--%>
<%--        </div>--%>
<%--    </c:if>--%>

<%--</c:forEach>--%>