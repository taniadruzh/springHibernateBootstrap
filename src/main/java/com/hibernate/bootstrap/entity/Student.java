package com.hibernate.bootstrap.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Generated;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column
    private String name;

    @Column
    private String surName;

    @Column
    private String phone;

    public Student(String name, String surName, String phone) {
        this.name = name;
        this.surName = surName;
        this.phone = phone;
    }
}