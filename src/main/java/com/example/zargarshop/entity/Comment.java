package com.example.zargarshop.entity;

import com.example.zargarshop.entity.abc.AbsEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Comment extends AbsEntity {
    private String text;

    @ManyToOne
    private Product product;   // qaysi mahsulotga tegishli

    @ManyToOne
    private User user;         // kim yozgan
}
