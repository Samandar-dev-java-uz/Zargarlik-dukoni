package com.example.zargarshop.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class ManagementFactory {
    private  static EntityManagerFactory emf  = Persistence
            .createEntityManagerFactory("ORM_TEST");
    public static EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
}
