function getXMLHttpRequest() {
	if (window.ActiveXObject) {
		try {
			return new ActiveXObject("Msxml2.XMLHTTP");
		} catch(e) {
			try {
				return new ActiveXObject("Microsoft.XMLHTTP");
			} catch(e1) { return null; }
		}
	} else if (window.XMLHttpRequest) {
		return new XMLHttpRequest();
	} else {
		return null;
	}
}
var httpRequest = null;

function sendRequest(url, params, callback, method) {
	//1. XMLHttpRequest 객체 생성
	httpRequest = getXMLHttpRequest();
	var httpMethod = method ? method : 'GET';
	if (httpMethod != 'GET' && httpMethod != 'POST') {
		httpMethod = 'GET';
	}
	var httpParams = (params == null || params == '') ? null : params;
	var httpUrl = url;
	//GET방식 - url?parameter
	if (httpMethod == 'GET' && httpParams != null) {
		httpUrl = httpUrl + "?" + httpParams;
	}
	//3. 응답처리를 위한 Handler Class mapping	
	httpRequest.onreadystatechange = callback;
	//2. 요청보내기 
	httpRequest.open(httpMethod, httpUrl, false);
	httpRequest.setRequestHeader(
		'Content-Type', 'application/x-www-form-urlencoded');

	//POST방식 - parameter send()메서드로 body에 setting
	httpRequest.send(httpMethod == 'POST' ? httpParams : null);
}
