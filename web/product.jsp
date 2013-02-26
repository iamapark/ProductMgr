<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
	<title>상품 등록 페이지</title>
<script LANGUAGE="JavaScript" >

function confirmation(){
	var pCode = document.productForm.pCode;
	var pName = document.productForm.pName;
	var price = document.productForm.price;
	var quantity = document.productForm.quantity;
	var pDesc = document.productForm.pDesc;
	
	//상품코드 입력 확인
	if(pCode.value == null || pCode.value.length==0){
		alert("상품 코드를 입력하십시오.");
		pCode.focus(); clear();
		return;
	}
	
	

	//상품코드  숫자 및 길이 확인
	else if(pCode.value.length != 4){
		alert("상품코드는 숫자 4자리로 입력하십시오.");
		pCode.focus(); clear();
		return;
	}
	
	
	
	//상품이름 입력확인	
	else if(pName.value == null || pName.value.length==0){
		alert("상품명을 입력하십시오.");
		pName.focus(); clear();
		return;
	}
	
	

	//상품가격 입력확인	
	else if(price.value == null || price.value.length == 0){
		alert("상품가격을 입력하십시오.");
		price.focus(); clear();
		return;
	}
	
	
	

	//상품가격이 숫자인지 확인
	else if(isNaN(price.value)){
		alert("상품가격은 숫자로 입력하십시오.");
		price.focus(); clear();
		return;
	}

	
	
	//상품수량 입력확인	
	else if(quantity.value == null || quantity.value.length == 0){
		alert("상품수량을 입력하십시오.");
		quantity.focus(); clear();
		return;
	}

	
	

	//상품수량이 숫자인지 확인
	else if(isNaN(quantity.value)){
		alert("상품수량은 숫자로 입력하십시오.");
		quantity.focus(); clear();
		return;
		
	}else{
		document.productForm.submit();
	}

}

	function clear(){
		document.productForm.reset();
	}


//-->
</script>
</head>

<body>

<!--상품등록 타이틀 테이블 시작//-->
<table width="80%" cellpadding="0" cellspacing="0"  align="center" >
	<tr bgcolor="#F3F3F3" height=25><td   valign="middle" ></td></tr>
	<tr  align="center" height=50>
		<th   valign="middle"  bgcolor="#9999FF" align="center">
			<center><FONT  face="Monotype Corsiva" size=5 COLOR="#FFFFFF"><STRONG>상품 등록 화면</STRONG>
			</FONT></center>
		</th>
	</tr>
</table>
<!--상품 등록 타이틀 끝//-->
<center>
<h5>USER : ${sessionScope.user}&nbsp;&nbsp;<a href="product?action=logout">로그아웃</a></h5>

<!--상품정보 입력 FORM 테이블시작//-->
<FORM name="productForm" action="product?action=save" method="post" >
	<!--상품정보 입력 테이블 시작//-->
	<Table cellpadding="0" cellspacing=1" border="0" width="80%" bgcolor="#EAEAEA" align="center">
		<!-- 필수입력필드표기 -->
		<tr>
			<td bgcolor="#FFFFFF" height="35"  valign="middle" align="right" colspan="3">
				<img src="images/Indent_squareOrange.gif" hspace="7" vspace="3">&nbsp; 표시는 필수 입력 사항입니다.
			</td>
		</tr>	
		<!--상품코드 입력-->
		<tr>
			<td bgcolor="#FFFFFF" width="30%" rowspan="4" align="center" valign="middle">
				<IMG SRC="images/computer.jpg"  HEIGHT="98" BORDER="0" ALT="">
			</td>
			<td bgcolor="#FFFFFF" height="35" width="15%" valign="middle">
				<img src="images/Indent_squareOrange.gif" hspace="7" vspace="3">상품코드
			</td>
			<td bgcolor="#FFFFFF" height="35" >&nbsp;&nbsp;
				<input type="text" name="pCode" size="30" MAXLENGTH="30" >
			</td>			
		</tr>	
		<!--상품명-->
		<tr>
		   <td bgcolor="#FFFFFF" height="35" width="15%" valign="middle">
				<img src="images/Indent_squareOrange.gif" hspace="7" vspace="3">상&nbsp;&nbsp;품&nbsp;&nbsp;명
			</td>
			<td bgcolor="#FFFFFF" height="35" >&nbsp;&nbsp;
				<span class="info">
					<input type="text" name="pName" size="30" MAXLENGTH="30">&nbsp;
				</span>
			</td>			
		</tr>	
		<tr>
			<td bgcolor="#FFFFFF" height="35" width="15%" valign="middle">
				<img src="images/Indent_squareOrange.gif" hspace="7" vspace="3">가&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;격
			</td>
			<td bgcolor="#FFFFFF" height="35">&nbsp;&nbsp;
				<span class="info">
					<input type="text" name="price" size="30" MAXLENGTH="30">&nbsp;
				</span>
			</td>			
		</tr>	
			<tr>
			<td bgcolor="#FFFFFF" height="35" width="15%" valign="middle">
				<img src="images/Indent_squareOrange.gif" hspace="7" vspace="3">수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;량
			</td>
			<td bgcolor="#FFFFFF" height="35">&nbsp;&nbsp;
				<span class="info">
					<input type="text" name="quantity" size="30" MAXLENGTH="30">&nbsp;
				</span>
			</td>			
		</tr>	
		<tr>
			<td bgcolor="#FFFFFF" height="35" align="middle">
				<img src="images/Indent_squareGray.gif" hspace="7" vspace="3">상&nbsp;품&nbsp;설&nbsp;명
			</td>
			<td bgcolor="#FFFFFF" height="35" colspan="2">&nbsp;&nbsp;
				<span class="info">
					<TEXTAREA NAME="pDesc" ROWS="10" cols=60></TEXTAREA>
				&nbsp;
				</span>
			</td>			
		</tr>	
	</table>
	<!--기본입력 테이블 끝//-->
	<br>
	<Table cellpadding="0" cellspacing=1" border="0" width="80%" bgcolor="#EAEAEA" align="center">
		<tr>
			<td align="center" height="30" valign="middle">
				<a href="javascript:confirmation()"><img src="images/ok.gif" width="64" height="29" vspace="12" hspace="2" alt="확인" border=0></a>
				<a href="javascript:clear()"><img src="images/cancel.gif" width="64" height="29" vspace="12" hspace="2" alt="취소"  border=0></a>
			</td>
		</tr>
	</table>
</FORM>
<!--정보입력 테이블끝//-->
</center>
</body>
</html>