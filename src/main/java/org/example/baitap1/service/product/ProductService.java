package org.example.baitap1.service.product;

import org.example.baitap1.models.Product;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class ProductService implements IProductService{
    private List<Product> products = new ArrayList<>();

    public ProductService() {
        products.add(new Product(1, "DT 1", 100, "MXS 1", "mỹ 1", false));
        products.add(new Product(2, "PD 2", 200, "HPP 2", "hung 2", true));
       }
    @Override
    public void add(Product product) {
        product.setId(getNewId());
        products.add(product);
    }
    @Override
    public void update(Product product) {
        Product update = findById(product.getId());
        if (update!= null) {
            update.setName(product.getName());
            update.setPrice(product.getPrice());
            update.setDescription(product.getDescription());
            update.setProducer(product.getProducer());
            update.setStatus(product.isStatus());
        }
    }
    @Override
    public void delete(Integer id) {
        Product del = findById(id);
        if (del!= null) {
            products.remove(del);
        }
    }
    @Override
    public List<Product> findAll() {
        System.out.println("Danh sach san pham: " + products);
        return products;
    }
    @Override
    public Product findById(Integer id) {
        return products.stream().filter(p -> p.getId() == id)
                .findFirst().orElse(null);
    }
    private int getNewId(){
        return products.stream()
                .map(Product::getId)
                .max(Comparator.naturalOrder())
                .orElse(0) + 1;
    }
}
