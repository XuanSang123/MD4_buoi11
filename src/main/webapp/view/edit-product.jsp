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
    <h1>Sửa thông tin sản phẩm</h1>
    <form action="/products" method="post">
        <input type="hidden" name="id" value="${products.id}">

        <label for="name">Tên sản phẩm:</label>
        <input type="text" id="name" name="name" value="${products.name}"><br><br>

        <label for="price">Giá sản phẩm:</label>
        <input type="number" id="price" name="price" value="${products.price}"><br><br>

        <label for="description">Mô tả sản phẩm:</label>
        <textarea id="description" name="description" rows="4" cols="50">${products.description}</textarea><br><br>

        <label for="producer">Nhà sản xuất:</label>
        <input type="text" id="producer" name="producer" value="${products.producer}"><br><br>

        <label for="status"> Trạng thái:</label>
         <input type="checkbox" id="status" name="status" ${products.status? 'checked' : ''}><br><br>

        <input type="submit" name="action" value="UPDATE">
    </form>
</body>
</body>
</html>
