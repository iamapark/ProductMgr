<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import ="dto.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype HTML>
<HTML>
<!--  작성하세요 -->
<head>
	<title>상품 리스트</title>
	<script src="js/httpRequest.js"></script>
	<script>
		function plus(obj){
			var amount = document.getElementById(obj).value;
			location.href = "product?action=stock&pCode=" + obj + "&amount=" + amount;
		}
		
		function minus(obj){
			var amount = document.getElementById(obj).value;
			location.href = "product?action=release&pCode=" + obj + "&amount=" + amount;
		}
	</script>
	<style>
		tr{
			background-color:silver;
		}
	</style>
</head>
<body style="margin:auto;">
<center>
	<h1>상품목록 보기</h1>
	<h3>USER: ${sessionScope.MEMBERID} <a href="product?action=logout">로그아웃</a></h3>
	<form name="listForm">
	<table>
		<tr style="background-color:gray;">
			<td>상품코드</td>
			<td>상품이름</td>
			<td>상품가격</td>
			<td>상품수량</td>
			<td>상품설명</td>
		</tr>
	<c:forEach   items="${requestScope.productList}" var="product">
		<tr>
			<td>${product.pCode}</td>
			<td>
				<a href="product?action=view&pCode=${product.pCode}">${product.pName}</a>
			</td>
			<td>${product.price}</td>
			<td>
				${product.quantity}
				<input type="text" id="${product.pCode}" style="width:50px;"  />
				<input type="button" onclick="plus(${product.pCode});" value="입고"/>
				<input type="button" onclick="minus(${product.pCode});" value="출고"/>
			</td>
			<td>${product.pDesc}</td>
		</tr>
	</c:forEach>
	</table>
	</form>
	<a href="product?action=go&nextPage=product.jsp">상품등록</a>
</center>
</body>
</HTML>
