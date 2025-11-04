package com.example.zargarshop.entity;

import com.example.zargarshop.entity.abc.AbsEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.JoinColumn;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Entity
@Table(name = "order_items")
@Getter
@Setter
public class OrderItem extends AbsEntity {

    @ManyToOne
    private Order order;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    private Integer quantity;

    private BigDecimal price; // pul uchun Double emas, BigDecimal ishlatish tavsiya qilinadi
}
