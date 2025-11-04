package com.example.zargarshop.dao;

import com.example.zargarshop.entity.User;
import jakarta.persistence.EntityManager;

import java.util.List;
import java.util.Optional;

import static com.example.zargarshop.dao.ManagementFactory.getEntityManager;

public class UserDao {
public  void save(User user){
    EntityManager entityManager = getEntityManager();
    entityManager.getTransaction().begin();
    if (user.getId() == null)
        entityManager.persist(user);
    else
        entityManager.merge(user);
    entityManager.getTransaction().commit();
    entityManager.close();

}
   public List<User> findAll(){
    EntityManager entityManager = getEntityManager();
    List<User> users = entityManager.createQuery("select u from User u", User.class).getResultList();
    return users;
   }
    public Optional<User> findUserById(Integer id) {
        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        Optional<User> optionalUser = Optional.ofNullable(entityManager.find(User.class, id));
        entityManager.getTransaction().commit();
        entityManager.close();
        return optionalUser;
    }
    public Optional<User> findUserByEmail(String email) {
        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        Optional<User> optionalUser =
                Optional
                        .ofNullable(
                                entityManager
                                        .createQuery("select u from User u where u.email = :email", User.class)
                                        .setParameter("email", email)
                                        .getSingleResult()
                        );
        entityManager.getTransaction().commit();
        entityManager.close();
        return optionalUser;
    }
    private static UserDao userDAO;

    public static UserDao getInstance() {
        if (userDAO == null) {
            userDAO = new UserDao();
        }
        return userDAO;
    }



}
