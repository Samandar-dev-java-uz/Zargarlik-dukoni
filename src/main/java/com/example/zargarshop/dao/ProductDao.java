package com.example.zargarshop.dao;

import com.example.zargarshop.entity.Product;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

import java.util.List;
import java.util.Optional;

public class ProductDao {
    private  static ProductDao productDao;
    private  ProductDao(){}
    public static ProductDao getInstance(){
        if(productDao == null){
            productDao = new ProductDao();
        }
        return productDao;
    }

    public  void save(Product product) {
        EntityManager manager = ManagementFactory.getEntityManager();
        EntityTransaction transaction = manager.getTransaction();
        transaction.begin();
        if(product.getId()==null)
        {
            manager.persist(product);
        }
        else
        {
            manager.merge(product);
        }
        transaction.commit();

    }
    public Optional<Product> findById(Integer id) {
        EntityManager manager = ManagementFactory.getEntityManager();
        Product product = manager.find(Product.class, id);
        return Optional.ofNullable(product);
    }
    public Optional<Product> findByName(String productName) {
        EntityManager manager = ManagementFactory.getEntityManager();
        Product product = manager.find(Product.class, productName);
        return Optional.ofNullable(product);
    }
    public List<Product> findAll() {
        EntityManager manager = ManagementFactory.getEntityManager();
        List<Product> selectPFromProductP = manager.createQuery("select p from Product p", Product.class).getResultList();
        return selectPFromProductP;

    }
}
