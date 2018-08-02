package com.hibernate.bootstrap.dao;

import com.hibernate.bootstrap.entity.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SudentDaoImpl implements StudentDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Student> listStudents() {
        Session session = sessionFactory.getCurrentSession();
        List<Student> studentList = session.createQuery("from Student").list();
        return studentList;
    }

    @Override
    public void addStudent(Student student) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(student);
    }

    @Override
    public void deleteStudent(int id) {
        Session session = sessionFactory.getCurrentSession();
        Student student = (Student) session.load(Student.class, new Integer(id));
        if (student != null) {
            session.delete(student);
        }
    }

    @Override
    public Student getById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Student student = (Student) session.load(Student.class, new Integer(id));
        System.out.println(student);
        return student;
    }
}
