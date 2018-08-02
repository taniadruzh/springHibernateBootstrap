package com.hibernate.bootstrap.service;

import com.hibernate.bootstrap.dao.StudentDao;
import com.hibernate.bootstrap.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class StudentServiceImpl implements StudentService{

    @Autowired
    private StudentDao studentDao;

    @Override
    public List<Student> listStudents() {
        return studentDao.listStudents();
    }

    @Override
    public void addStudent(Student student) {
        studentDao.addStudent(student);
    }

    @Override
    public void deleteStudent(int id) {
        studentDao.deleteStudent(id);
    }

    @Override
    public Student getById(int id) {
        return studentDao.getById(id);
    }
}
