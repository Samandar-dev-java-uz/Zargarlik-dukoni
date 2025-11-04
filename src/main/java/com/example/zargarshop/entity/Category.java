package com.example.zargarshop.entity;

import com.example.zargarshop.entity.abc.AbsEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "categorys")
public class Category  extends AbsEntity {
    private String name;
}
