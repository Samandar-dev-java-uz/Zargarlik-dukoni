package com.example.zargarshop.entity;

import com.example.zargarshop.entity.abc.AbsEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

import java.util.List;

@Data
@Entity
@Table(name = "products")
public class Product extends AbsEntity {
    private String name;
    private String description;
    private Integer price;
    private Integer count;
    @ManyToOne
    private Category category;


}
