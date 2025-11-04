package com.example.zargarshop.entity;

import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;

import java.util.List;

public class Post {
    private String title;
    private String description;
    @ManyToOne
    private Product product;
    @OneToMany(mappedBy = "post")
    private List<Attachment> attachment;
}
