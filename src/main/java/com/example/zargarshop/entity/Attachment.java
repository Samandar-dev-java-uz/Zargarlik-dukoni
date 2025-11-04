package com.example.zargarshop.entity;

import jakarta.persistence.ManyToOne;

public class Attachment {
    private String fileName;
    private String directory;
    private Long fileSize;
    private String suffix;
    @ManyToOne
    private Post post;
}
