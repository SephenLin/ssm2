package cn.de.ssm.controller;

import cn.de.ssm.po.Student;
import cn.de.ssm.service.StudentServlet;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Created by 林进华 on 2017/7/1.
 */
@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    StudentServlet studentServlet ;

    @RequestMapping("/register")
    public String register(Student student,Model model,ServletRequest request) {
        boolean type = studentServlet.register(student) ;
        model.addAttribute("student",student);
        if(type) {
            System.out.println("----------" + student.getContact_phone() + "--------" + type);
            return "success";
        }else {
            System.out.println("----------" + student.getContact_email() + "--------" + type);
           return "forward:/rigister1.jsp";
        }
    }

}
