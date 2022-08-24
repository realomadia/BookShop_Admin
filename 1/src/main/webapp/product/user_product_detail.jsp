<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
String sId = (String)session.getAttribute("sId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품게시판</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/header.css" rel="stylesheet">
<link href="css/sidebar.css" rel="stylesheet">
<link href="css/productDetail.css" rel="stylesheet">
<script src="js/productDetail.js" type="text/javascript"></script>
</head>
<body>
<!-- 헤더 a -->
<jsp:include page="/inc/header.jsp"/>
<!-- 헤더 끝 -->


<!-- 상품 조회 시작 -->
<section class="productDetail">
	<h1>사용자 상품 상세 조회</h1>
	<section class="productImg">
		<img src="upload/${product.pd_file }">
	</section>
	<section class="productInfo">
		<div class="productTitle">
			책 제목
			<h1>${product.pd_subject }</h1>
		</div>
		<div class="productName">
			지은이 (작가명)
			<em>${product.pd_name }</em>
		</div>
		<div class="productType">
			분류
			<em>${product.pd_type }</em>
		</div>
		<div class="productContent">
			책 설명
			<em>${product.pd_content }</em>
		</div>
		<div class="productPrice">
			가격
			<em>${product.pd_price }원</em>
		</div>
		<div class="productQuan">
			판매중
			<div class="productQuanButton">
				<span class="quanText">수량</span>
				<input type="button" value="-" class="quanButton" onclick="quanPlus(-1)">
				<input type="text" value="1" class="quanInput" maxlength="4" onkeyup="quanCount()"onchange="quanCount()">
				<input type="button" value="+" class="quanButton" onclick="quanPlus(1)">
			</div>
		</div>
		<div class="productButton">
			<input type="button" value="바로구매" onclick="location.href='ProductDetail.po'">
			<input type="button" value="장바구니">
			<input type="button" value="찜하기">
		</div>
	</section>
</section>
<!-- 상품 조회 시작 끝 -->
 
<section style="position: relative; clear: both;"></section>

<!-- 사이드바 -->
<jsp:include page="/inc/sidebar.jsp"/>
<!-- 사이드바 끝 -->

<section style="position: relative; clear: both;"></section>


</body>
</html>