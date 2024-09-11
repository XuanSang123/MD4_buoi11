package org.example.baitap1.controller;
import org.example.baitap1.models.Product;
import org.example.baitap1.service.product.IProductService;
import org.example.baitap1.service.product.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet(value = "/products")
public class ProductController extends HttpServlet {
    private IProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null){
            switch (action){
                case "GETALL":
                    List<Product> productList = productService.findAll();
                    request.setAttribute("products", productList);
                    request.getRequestDispatcher("/view/list-product.jsp").forward(request, response);
                    break;
                case "DELETE":
                    Integer idDel = Integer.parseInt(request.getParameter("id"));
                    productService.delete(idDel);
                    response.sendRedirect("/products?action=GETALL");
                    break;
                case "DETAIL":
                    Integer idDetail = Integer.valueOf(request.getParameter("id"));
                    request.setAttribute("products", productService.findById(idDetail));
                    request.getRequestDispatcher("/view/detail-product.jsp").forward(request, response);
                    break;
                case  "EDIT":
                    Integer idEdit = Integer.valueOf(request.getParameter("id"));
                    request.setAttribute("products", productService.findById(idEdit));
                    request.getRequestDispatcher("/view/edit-product.jsp").forward(request, response);
                    break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action != null) {
            switch (action) {
                case "ADD":
                    Boolean statusAdd = request.getParameter("status") != null;
                    Product newProduct = new Product(
                            0,
                            request.getParameter("name"),
                            Double.parseDouble(request.getParameter("price")),
                            request.getParameter("description"),
                            request.getParameter("producer"),
                            statusAdd);  // Sử dụng biến status đã kiểm tra
                    productService.add(newProduct);
                    response.sendRedirect("/products?action=GETALL");
                    break;
                case "UPDATE":
                    Boolean statusUpdate = request.getParameter("status") != null;
                    Product updateProduct = new Product(
                            Integer.parseInt(request.getParameter("id")),
                            request.getParameter("name"),
                            Double.parseDouble(request.getParameter("price")),
                            request.getParameter("description"),
                            request.getParameter("producer"),
                            statusUpdate);  // Sử dụng biến status đã kiểm tra
                    productService.update(updateProduct);
                    response.sendRedirect("/products?action=GETALL");
                    break;
            }
        }
    }
}

