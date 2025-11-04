package com.example.zargarshop.service;

import com.example.zargarshop.dao.CategoryDao;
import com.example.zargarshop.entity.Category;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;

import java.util.Optional;
import java.util.concurrent.Callable;

public class CategoryService {
    private CategoryService(){}
    CategoryDao  categoryDao =  CategoryDao.getInstance();
    private static CategoryService categoryService;
    public static CategoryService getInstance() {
        if (categoryService == null) {
            categoryService = new CategoryService();

        }
        return categoryService;
    }
    @SneakyThrows
    public void saveCategory(HttpServletRequest req, HttpServletResponse resp) {
        Category category = new Category();
        category.setName(req.getParameter("name"));
        categoryDao.saveCategory(category);
        resp.sendRedirect("/category");
    }
@SneakyThrows
    public void deleteCategory(HttpServletRequest req, HttpServletResponse resp) {
        String id = req.getParameter("id");
        Integer categoryId = Integer.parseInt(id);
        categoryDao.deleteCategory(categoryId);
        resp.sendRedirect("/category");

    }
@SneakyThrows
    public void updateCategory(HttpServletRequest req, HttpServletResponse resp) {
        String id = req.getParameter("id");
        Integer categoryId = Integer.parseInt(id);
        Optional<Category> category = categoryDao.getCategoryById(categoryId);
        if (category.isPresent()) {
            Category category1 = category.get();
            req.setAttribute("category",category1);
            req.getRequestDispatcher("update-category.jsp").forward(req,resp);
        }
    }
@SneakyThrows
    public void saveCategoryUpdate(HttpServletRequest req, HttpServletResponse resp) {
        String id = req.getParameter("id");
        Integer categoryId = Integer.parseInt(id);
        Optional<Category> category = categoryDao.getCategoryById(categoryId);
        if (category.isPresent()) {
            Category category1 = category.get();
            category1.setName(req.getParameter("name"));
            categoryDao.saveCategory(category1);
            resp.sendRedirect("/category");

        }
    }
}
