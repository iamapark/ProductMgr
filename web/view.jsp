<%@ page  contentType="text/html; charset=utf-8"  %>
<html>
<!--  작성하시오. -->
<head>
	<title>상품 정보</title>
	<style>
		tr{
			background-color:gray;
		}
	</style>
	<script>
		function deleteItem(){
			var pCode = document.viewForm.pCode;
			if(confirm("삭제하시겠습니까?"))
				location.href = "product?action=delete&pCode=" + pCode.value;
		}
		
		function go2List(){
			location.href = "product?action=list";
		}
	</script>
</head>
<body>
<center>
	<h1>상품정보 보기</h1>
	<h3>USER : ${sessionScope.MEMBERID}  <a href="product?action=logout">로그아웃</a></h3>
	
	<form name="viewForm" action="product?action=update" method="post">
	<table>
		<tr style="background-color:gray;">
			<td>상품 코드</td>
			<td>
				<input type="text" readonly name="pCode" value="${product.pCode}" />
			</td>
		</tr>
		<tr>
			<td>상품 이름</td>
			<td>
				<input type="text" name="pName" value="${product.pName}" />
			</td>
		</tr>
		<tr>
			<td>상품 가격</td>
			<td>
				<input type="text" name="price" value="${product.price}" />
			</td>
		</tr>
		<tr>
			<td>상품 수량</td>
			<td>
				<input type="text" name="quantity" value="${product.quantity}" />
			</td>
		</tr>
		<tr style="background-color:white;">
			<td colspan="2">
				<textarea rows="15" cols="50" name="pDesc" value="${product.pDesc}"   ></textarea>
			</td>
		</tr>
	</table>
	
		<input type="button" value="삭제하기" onclick="deleteItem();"/> &nbsp;
		<input type="submit" value="수정하기" /> &nbsp;
		<input type="button" value="목록보기" onclick="go2List();" />
		
	</form>
</center>	
</body>
</html>		
