package com.example.zargarshop.controller;

import com.example.zargarshop.dao.CategoryDao;
import com.example.zargarshop.entity.Category;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/add-product")
public class ProductAddController extends HttpServlet {

    CategoryDao categoryDao =  CategoryDao.getInstance();
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Category> categories = categoryDao.getAllCategories();
        req.setAttribute("categories",categories);
        req.getRequestDispatcher("addProduct.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {



    }
}
