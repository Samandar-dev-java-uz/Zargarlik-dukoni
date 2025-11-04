package com.example.zargarshop.entity;

import com.example.zargarshop.entity.abc.AbsEntity;
import com.example.zargarshop.entity.enums.Gender;
import com.example.zargarshop.entity.enums.Role;
import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import lombok.Data;

import org.hibernate.annotations.processing.Pattern;


@Entity
@Data
@Table(name ="users")
public class User extends AbsEntity {
    private  String surname;
    private  String name;
    @Email(message = "Invalid email format")
    @Column(unique = true, nullable = false)
    private  String email;
    private  String password;
    private  String phone;
    @Enumerated(EnumType.STRING)
    private Role role;
    @Enumerated(EnumType.STRING)
    private Gender gender;
    private  Boolean active;

}
