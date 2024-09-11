<%--
  Created by IntelliJ IDEA.
  User: thaingocphat
  Date: 10/9/24
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
    <h1>Thêm mới sản phẩm</h1>
    <form action="/products" method="post">
        <label for="name">Tên sản phẩm:</label>
        <input type="text" id="name" name="name"><br><br>

        <label for="price">Giá sản phẩm:</label>
        <input type="number" id="price" name="price"><br><br>

        <label for="description">Mô tả sản phẩm:</label>
        <textarea id="description" name="description" rows="4" cols="50"></textarea><br><br>

        <label for="producer">Nhà sản xuất:</label>
        <input type="text" id="producer" name="producer"><br><br>

        <label for="status">Trạng thái:</label>
        <input type="checkbox" id="status" name="status"><br><br>

        <input type="submit" name="action" value="ADD">
    </form>
</body>
</html>
