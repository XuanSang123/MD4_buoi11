package org.example.baitap1.service;

import java.util.List;

public interface IGenericService<T, E>{
    void add(T t);
    void update(T t);
    void delete(E id);
    T findById(E id);
    List<T> findAll();
}
