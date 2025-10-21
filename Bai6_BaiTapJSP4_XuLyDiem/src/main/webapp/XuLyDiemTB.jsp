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
	 // Lấy giá trị từ form
    String diemToanStr = request.getParameter("diemToan");
    String diemLyStr   = request.getParameter("diemLy");
    String diemHoaStr  = request.getParameter("diemHoa");

    // Ép kiểu sang double
    double diemToan = Double.parseDouble(diemToanStr);
    double diemLy   = Double.parseDouble(diemLyStr);
    double diemHoa  = Double.parseDouble(diemHoaStr);

    // Tính điểm trung bình
    double diemTB = (diemToan + diemLy + diemHoa) / 3;
	%>
	
	<%-- Hiển thị kết quả --%>
	<p>Điểm trung bình của bạn là <%= diemTB %></p>
	
	<%
	    if (diemTB >= 9) {
	%>
	        <p>Bạn thuộc học lực Xuất sắc</p>
	<%
	    } else if (diemTB >= 8) {
	%>
	        <p>Bạn thuộc học lực Giỏi</p>
	<%
	    } else if (diemTB >= 6.5) {
	%>
	        <p>Bạn thuộc học lực Khá</p>
	<%
	    } else if (diemTB >= 5) {
	%>
	        <p>Bạn thuộc học lực Trung bình</p>
	<%
	    } else {
	%>
	        <p>Bạn thuộc học lực Yếu</p>
	<%
	    }
	%>



</body>
</html>