package com.hibernate.bootstrap.controller;


import com.hibernate.bootstrap.entity.Student;
import com.hibernate.bootstrap.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class StartController {

    @Autowired
    private StudentService studentService;

    private Student stud=null;

    @GetMapping
    public String getAllStudents(Model model){
        model.addAttribute("studentList",studentService.listStudents());
        model.addAttribute("stud",stud);
        return "start";
    }
    @RequestMapping("remove/{id}")
    public String deleteStudent(@PathVariable("id")int id){
        studentService.deleteStudent(id);
        return "redirect:/";
    }
    @RequestMapping("add")
        public String addStudent(@ModelAttribute("student")Student student){
        studentService.addStudent(student);
        return "redirect:/";
    }
    @GetMapping("getById")
    public String getStudentById(@RequestParam(value = "id")int id){
        stud=studentService.getById(id);
        return "redirect:/";

    }
}
