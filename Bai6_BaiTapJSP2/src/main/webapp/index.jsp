<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String hoVaTen = request.getParameter("hoVaTen");
		String email = request.getParameter("Email");
		String soLuong = request.getParameter("soLuong");
	%>
	<h1>Xác nhận đặt hàng</h1>
	<p> Xin cảm ơn <%= hoVaTen %> đã đặt <%= soLuong %> sản phẩm.
	<p>Chúng tôi sẽ gửi xác nhận đến địa chỉ email: <%= email %></p>
</body>
</html>