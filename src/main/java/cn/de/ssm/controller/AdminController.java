package cn.de.ssm.controller;

import cn.de.ssm.po.Admin;
import cn.de.ssm.service.AdminServlet;
import cn.de.ssm.validated.AdminLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

/**
 * Created by 林进华 on 2017/7/3.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

        @Autowired
        AdminServlet adminServlet ;

        @RequestMapping("/login")
        public String login(@Validated(value = {AdminLogin.class}) Admin temp, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
            Admin admin = null ;
            if(bindingResult.hasErrors()) {
                redirectAttributes.addFlashAttribute("error","未知错误") ;
                System.out.println("1*****1");
                return "admin/loginUI";
            }else {
                admin = adminServlet.login(temp) ;
                if(admin == null) {
                    System.out.println("2*****2  account = " + temp.getAccount() + "  password = " + temp.getPassword());
                    redirectAttributes.addFlashAttribute("error","账号或密码错误") ;
                    return "admin/loginUI";
                }else {
                    System.out.println("31*****3");
                    return "admin/loginSuccess";
                }
            }
        }

    @RequestMapping("/loginUI")
    public String loginUI() {
                return "admin/loginUI";
        }

        @RequestMapping("/createAccount")
        public String createAccount(@Validated Admin admin, BindingResult bindingResult,
                                    RedirectAttributes redirectAttributes, Model model)
        {
            if(bindingResult.hasErrors()) {
                List<ObjectError> studentError = bindingResult.getAllErrors() ;
                for(ObjectError ob : studentError) {
                    System.out.println(ob.getDefaultMessage());
                }
                model.addAttribute("error", studentError) ;
                return "admin/createAccount";
            }else {
                boolean type = adminServlet.createAccount(admin) ;
                if(type) {
                    System.out.println("*********************88888888") ;
                    model.addAttribute("success","注册成功，可以登录了") ;
                    return "admin/loginUI";
                }else {
                    System.out.println("*********************999999999999999") ;
                    model.addAttribute("error","账号已存在") ;
                    return "admin/createAccount";
                }
            }
        }

        @RequestMapping("/forgetPasswordUI")
        public String forgetPassword() {
            return "admin/forgetPassword";
        }

    @RequestMapping("/createAccountUI")
    public String createAccountUI() {
        return "admin/createAccount";
    }

    }
