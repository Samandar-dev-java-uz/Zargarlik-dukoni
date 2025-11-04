package com.example.zargarshop.controller;

import com.example.zargarshop.service.CategoryService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/delete-category")
public class CategoryDeleteController extends HttpServlet {
    CategoryService categoryService = CategoryService.getInstance();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        categoryService.deleteCategory(req,resp);
    }
}
