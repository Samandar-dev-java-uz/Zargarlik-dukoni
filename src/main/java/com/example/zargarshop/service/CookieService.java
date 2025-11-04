package com.example.zargarshop.service;

import jakarta.servlet.http.Cookie;

public interface CookieService {
    public static String getEmailFromCookie(Cookie[] cookie,String key) {
        if (cookie == null || cookie.length < 1) {
            return null;
        }
        for (Cookie c : cookie) {
            if (c.getName().equals(key)) {
                return c.getValue();
            }
        }
        return null;
    }
}