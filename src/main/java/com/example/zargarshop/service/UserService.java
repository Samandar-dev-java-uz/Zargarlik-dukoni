package com.example.zargarshop.service;

import com.example.zargarshop.dao.UserDao;
import com.example.zargarshop.entity.User;
import com.example.zargarshop.entity.enums.Gender;
import com.example.zargarshop.entity.enums.Role;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.SneakyThrows;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

public class UserService {
    UserDao userDao = UserDao.getInstance();
@SneakyThrows
    public void saveUser(HttpServletRequest req, HttpServletResponse resp) {

        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String phone = req.getParameter("phone");
        String genderParam = req.getParameter("gender");
        Gender gender = Gender.valueOf(genderParam.toUpperCase());

        Role role = Role.USER;

        User user = new User();
        user.setEmail(email);
        user.setPassword(password);
        user.setName(name);
        user.setSurname(surname);
        user.setPhone(phone);
        user.setGender(gender);
        user.setRole(role);
        user.setActive(true);
        userDao.save(user);
        resp.sendRedirect("/auth");

    }
@SneakyThrows
    public void findEmailUser(HttpServletRequest req, HttpServletResponse resp) {
        Optional<User> user = userDao.findUserByEmail(req.getParameter("email"));
    if (user.isPresent()){
        User user1 = user.get();
        if (user1.getPassword().equals(req.getParameter("password"))){

            HttpSession session = req.getSession();
            session.setAttribute("user", user1);
            resp.addCookie(new Cookie("authentication", user1.getEmail()));
            resp.sendRedirect("/cabinet");

        }
        else
        {
            System.out.println(" error email or password");

        }

    }
    else{
        System.out.println("User not found");
    }


}
public void getUsers(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    List<User> users = userDao.findAll();
    req.setAttribute("users", users);
    req.getRequestDispatcher("Users.jsp").forward(req, resp);

}
    private static  UserService   userService;
    public static UserService getUserService() {
        if (userService == null) {
            userService = new UserService();

        }
        return userService;
    }
    private  UserService() {
           }
}
