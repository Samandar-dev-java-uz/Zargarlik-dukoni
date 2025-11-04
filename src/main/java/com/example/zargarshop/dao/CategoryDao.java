package com.example.zargarshop.dao;

import com.example.zargarshop.entity.Category;
import jakarta.persistence.EntityManager;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;

import java.util.List;
import java.util.Optional;

import static com.example.zargarshop.dao.ManagementFactory.getEntityManager;

public class CategoryDao {
    EntityManager entityManager = getEntityManager();
    private CategoryDao() {}
    private static CategoryDao categoryDao;
    public static CategoryDao getInstance() {
        if (categoryDao == null) {
            categoryDao = new CategoryDao();
        }
        return categoryDao;
    }
    @SneakyThrows
    public Optional<Category>getCategoryById(Integer id) {
        entityManager.getTransaction().begin();
        Category category = entityManager.find(Category.class, id);
        entityManager.getTransaction().commit();
        return Optional.ofNullable(category);

    }
    public void saveCategory(Category category) {
        entityManager.getTransaction().begin();
        if (category == null){
        entityManager.persist(category);}
        else {
            entityManager.merge(category);
        }
        entityManager.getTransaction().commit();
    }
    @SneakyThrows
    public Optional<Category>getCategoryByName(String categoryName) {
        entityManager.getTransaction().begin();
        Category category = entityManager.find(Category.class, categoryName);
        entityManager.getTransaction().commit();
        return Optional.ofNullable(category);

    }
    public List<Category> getAllCategories() {
        entityManager.getTransaction().begin();
        List<Category> categories = entityManager.createQuery(
                "select c from Category c order by c.id", Category.class
        ).getResultList();
        entityManager.getTransaction().commit();
        return categories;
    }
    public void deleteCategory(Integer id) {
        entityManager.getTransaction().begin();
        Category category = entityManager.find(Category.class, id);
        entityManager.getTransaction().commit();
        entityManager.remove(category);
    }
}
