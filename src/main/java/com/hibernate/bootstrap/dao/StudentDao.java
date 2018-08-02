package com.hibernate.bootstrap.dao;

import com.hibernate.bootstrap.entity.Student;

import java.util.List;

public interface StudentDao {

    public List<Student> listStudents();

    void addStudent(Student student);

    void deleteStudent(int id);

    Student getById(int id);

}
