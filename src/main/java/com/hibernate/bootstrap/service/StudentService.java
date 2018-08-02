package com.hibernate.bootstrap.service;

import com.hibernate.bootstrap.entity.Student;

import java.util.List;

public interface StudentService {

    public List<Student> listStudents();

    void addStudent(Student student);

    void deleteStudent(int id);

    Student getById(int id);
}
