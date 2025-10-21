<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.text.NumberFormat, java.util.Locale" %>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>Hóa đơn</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container py-5">

<%
    request.setCharacterEncoding("UTF-8");

    String tenSanPham = request.getParameter("tenSanPham");
    double donGia = Double.parseDouble(request.getParameter("donGia"));
    int soLuong = Integer.parseInt(request.getParameter("soLuong"));
    double tongTien = donGia * soLuong;

    NumberFormat vnd = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));
%>

<h2 class="text-center mb-4">🧾 HÓA ĐƠN ĐẶT HÀNG</h2>

<table class="table table-bordered text-center align-middle">
  <thead class="table-primary">
    <tr>
      <th>Tên sản phẩm</th>
      <th>Đơn giá</th>
      <th>Số lượng</th>
      <th>Tổng tiền</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><%= tenSanPham %></td>
      <td><%= vnd.format(donGia) %></td>
      <td><%= soLuong %></td>
      <td><%= vnd.format(tongTien) %></td>
    </tr>
  </tbody>
</table>

<p class="text-center mt-4 fw-bold text-success">Cảm ơn bạn đã đặt hàng 💚</p>

</div>
</body>
</html>
