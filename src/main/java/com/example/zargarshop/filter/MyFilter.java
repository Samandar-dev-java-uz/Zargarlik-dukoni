package com.example.zargarshop.filter;

import com.example.zargarshop.dao.UserDao;
import com.example.zargarshop.entity.User;
import com.example.zargarshop.entity.enums.Role;
import com.example.zargarshop.service.CookieService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;

import java.io.IOException;

@WebFilter("/*")
@RequiredArgsConstructor
public class MyFilter implements Filter {
    UserDao userDao = UserDao.getInstance();

    @SneakyThrows
    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        String path = request.getServletPath();
        System.out.println("Request path: " + path);

        // JSP faylga to‘g‘ridan-to‘g‘ri kirishni bloklash
        if (path.endsWith(".jsp")) {
            request.setAttribute("message", "You cannot open .jsp pages directly from browser");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
            return; // ❗ forwarddan keyin qaytish shart
        }

        // Sessiyada user bo‘lmasa
        if (request.getSession().getAttribute("user") == null) {
            String authentication = CookieService.getEmailFromCookie(request.getCookies(), "authentication");

            if (authentication != null) {
                User user = userDao.findUserByEmail(authentication).orElse(null);
                if (user != null) {
                    request.getSession().setAttribute("user", user);
                }
            }

            // Agar hali ham user yo‘q bo‘lsa va yopiq sahifaga kirmoqchi bo‘lsa
            if (request.getSession().getAttribute("user") == null
                    && !path.equals("/")
                    && !path.equals("/auth")
                    && !path.equals("/login")
                    && !path.equals("/about")
                    && !path.equals("/contact")
                    && !path.equals("/register")) {
                request.setAttribute("message", "Please login first");
                request.getRequestDispatcher("/error.jsp").forward(request, response);
                return; // ❗ forwarddan keyin qaytish
            }
        }

        if (path.equals("/") || path.equals("")) {
            response.sendRedirect("/auth");
            return; // ❗ sendRedirectdan keyin qaytish
        }

        if (path.equals("/cabinet")) {
            User user = (User) request.getSession().getAttribute("user");
            if (user != null && user.getRole() == Role.ADMIN) {
                response.sendRedirect("/admin");
                return; // ❗
            } else {
                response.sendRedirect("/user");
                return; // ❗
            }
        }

        // Agar yuqoridagi shartlardan hech biri ishlamasa — keyingisini chaqiramiz
        chain.doFilter(request, response);
    }
}
