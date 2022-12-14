<%@page import="com.madforgolf.persistence.MemberDAO"%>
<%@page import="com.madforgolf.domain.MemberVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../include/header.jsp" %>

<!-- ##### Breadcrumb Area Start ##### -->
    <div class="breadcrumb-area">
        <!-- Top Breadcrumb Area -->
        <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(${pageContext.request.contextPath }/resources/img/bg-img/24.jpg);">
            <h2>wishList</h2>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">wishList</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
<!-- ##### Breadcrumb Area End ##### --> 



	<div class="checkout_area mb-100">
		<div class="container">
	
	<h1> ๐WishList </h1> 
	๋์ ์ฐ ๋ชฉ๋ก<br><br><br>
<%-- 	${pm } --%>
				
				<div class="box-body">
				<table class="table table-bordered">
					<tbody>
						<tr>
<!-- 							<th style="width: 200px">์ ์ ์์ด๋</th> -->
							<th style="width: 200px">ํ๋งค์</th>
							<th>์ํ๋ช</th>
							<th>๊ฐ๊ฒฉ</th>
<!-- 							<th>์ฐ</th> -->
						</tr>

						<c:forEach var="vo" items="${likeList }">
						<tr>
							<td>
							<span class="badge bg-orange"><a href="/product/seller?prod_num=${vo.prod_num }">${vo.seller_id }</a></span>
							</td>
							<td><a href="/product/productDetail?prod_num=${vo.prod_num}">${vo.prod_name }</a></td>
							<td><a href="/product/productDetail?prod_num=${vo.prod_num}">${vo.price }</a></td>
<%-- 							<td>${vo.check }</td> --%>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
	
			</div>
		</div>
	
<!-- ======================================== ํ์ด์ง ๋ค๋น๋ฐ ======================================== -->
			<!-- Pagination -->
			<nav aria-label="Page navigation">
				<ul class="pagination">
					<c:if test="${pm.prev }">
<%-- 						${pm.prev }๊ฒฐ๊ณผ๊ฐ ์ฐธ(true)์ผ ๋ --%>
						<li class="page-item"><a id="ProductAreaPage" class="page-link" href="likeListAll?page=${pm.startPage-1 }&buyer_id=${user_id }"><i class="fa fa-angle-left"></i></a></li>
<!-- 						ํ์ฌ ์์นํ ํ์ด์ง ๋ธ๋ญ์ ์ฒซ๋ฒ์งธ ํ์ด์ง๋ณด๋ค -1์ธ ํ์ด์ง๋ก ์ด๋  -->
							</c:if>
								<c:forEach var="idx" begin="${pm.startPage }" end="${pm.endPage }">
								<li class="page-item" <c:out value="${pm.vo.page == idx?'class=active':'active' }"/>>
								<a id="ProductAreaPage" class="page-link" href="likeListAll?page=${idx }&buyer_id=${user_id }">${idx }</a></li>
							</c:forEach>
							
							<c:if test="${pm.next }">
<%-- 								${pm.next }๊ฒฐ๊ณผ๊ฐ ์ฐธ(true)์ผ ๋  --%>
								<li class="page-item"><a id="ProductAreaPage" class="page-link" href="likeListAll=${pm.endPage+1 }&buyer_id=${user_id }"><i class="fa fa-angle-right"></i></a></li>
<!-- 								ํ์ฌ ์์นํ ํ์ด์ง ๋ธ๋ญ์ ๋ง์ง๋ง ํ์ด์ง๋ณด๋ค +1์ธ ํ์ด์ง๋ก ์ด๋  -->
							</c:if>
						</ul>
					</nav>
<!-- ======================================== ํ์ด์ง ๋ค๋น๋ฐ ======================================== -->
	

	
	
	
	
<%@ include file="../include/footer.jsp" %>
