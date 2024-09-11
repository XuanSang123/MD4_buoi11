<%--
  Created by IntelliJ IDEA.
  User: thaingocphat
  Date: 10/9/24
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
    <h1>Thông tin sản phẩm</h1>
    <a href="/products?action=GETALL">Quay lại danh sách sản phẩm</a>
    <table border="10" cellspacing="10" cellpadding="10">
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Giá sản phẩm</th>
            <th>Mô tả sản phẩm</th>
            <th>Nhà sản xuất</th>
            <th>Trạng thái</th>
        </tr>
        <tr>
            <td>${products.id}</td>
            <td>${products.name}</td>
            <td>${products.price}</td>
            <td>${products.description}</td>
            <td>${products.producer}</td>
            <td>${products.status? 'Còn hàng' : 'Hết hàng'}</td>
        </tr>
    </table>
</body>
</html>
