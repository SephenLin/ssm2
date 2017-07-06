package cn.de.ssm.controller;

import cn.de.ssm.po.Student;
import cn.de.ssm.service.StudentServlet;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.util.Date;
import java.util.List;

/**
 * Created by 林进华 on 2017/7/1.
 */
@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    StudentServlet studentServlet ;

    @RequestMapping("/register")
    public String register(@Validated Student student,BindingResult bs, Model model, ServletRequest request,
                           @Param("contact_data") Date contact_data) {
        student.setContact_data(new Date());
        int type = studentServlet.register(student) ;
        if(bs.hasErrors()) {
            List<ObjectError> studentError = bs.getAllErrors() ;
            for(ObjectError ob : studentError) {
                System.out.println(ob.getDefaultMessage());
            }
            type = 1;
            model.addAttribute("studentError", studentError) ;
        }
        if(type >= 1 && type < 2) {
            model.addAttribute("registerSuccess", "注册成功") ;
            System.out.println("----------" + student.getContact_phone() + "--------" + type);
            return "register/registerSuccess";
        }else if(type > 2) {
            model.addAttribute("registerSuccess", "你已经注册，资料已更新") ;
            System.out.println("----------" + student.getContact_phone() + "--------" + type);
            return "register/registerSuccess";
        }  else{
            System.out.println("----------" + student.getContact_email() + "--------" + type);
            model.addAttribute("student",student);
           return "register/registerFail";
        }
    }
}
