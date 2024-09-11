
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<a href="/products?action=ADD">Thêm mới sản phẩm</a>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Tên sản phẩm</th>
        <th>Giá sản phẩm</th>
        <th>Mô tả sản phẩm</th>
        <th>Nhà sản xuất</th>
        <th>Trạng thái</th>
        <th>Thao tác</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.producer}</td>
            <td>${product.status ? 'Còn hàng' : 'Hết hàng'}</td>
            <td>
                <a href="/products?action=DETAIL&id=${product.id}">Chi tiết</a>
                <a href="/products?action=EDIT&id=${product.id}">Sửa</a>
                <a href="/products?action=DELETE&id=${product.id}">Xóa</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

