package com.example.zargarshop.controller;

import com.example.zargarshop.entity.User;
import com.example.zargarshop.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;

import java.io.IOException;
import java.util.HashMap;
@WebServlet("/register")
public class RegisterController  extends HttpServlet {
    UserService registerService = UserService.getUserService();
    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) {
        req.getRequestDispatcher("logUp.jsp").forward(req,resp);
    }
    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        registerService.saveUser(req,resp);
    }
}
