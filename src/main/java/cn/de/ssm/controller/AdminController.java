package cn.de.ssm.controller;

import cn.de.ssm.po.Admin;
import cn.de.ssm.po.Student;
import cn.de.ssm.service.AdminServlet;
import cn.de.ssm.validated.AdminLogin;
import org.apache.commons.collections.map.HashedMap;
import org.apache.ibatis.annotations.Param;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 林进华 on 2017/7/3.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

        @Autowired
        AdminServlet adminServlet ;

        @RequestMapping("/login")
        public String login(@Validated(value = {AdminLogin.class}) Admin temp, BindingResult bindingResult, Model model,HttpSession session) {
            Admin admin = null ;
            if(bindingResult.hasErrors()) {
                model.addAttribute("error","未知错误") ;
                System.out.println("1*****1");
                return "admin/loginUI";
            }else {
                admin = adminServlet.login(temp) ;
                if(admin == null) {
                    System.out.println("2*****2  account = " + temp.getAccount() + "  password = " + temp.getPassword());
                    model.addAttribute("error","账号或密码错误") ;
                    return "admin/loginUI";
                }else {
                    session.setAttribute("admin",admin);
                    return "admin/index";
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
                    model.addAttribute("success","注册成功，可以登录了") ;
                    return "admin/loginUI";
                }else {
                    model.addAttribute("error","账号已存在") ;
                    return "admin/createAccount";
                }
            }
        }

    @RequestMapping("/checkAdminAccount")
    @ResponseBody
    public String checkAdminAccount(@Param("account")String account) {
        Boolean result = adminServlet.checkAdminAccount(account) == true ? false : true;
        Map<String, Boolean> map = new HashMap<String, Boolean>();
        map.put("valid", result);
        ObjectMapper objectMapper = new ObjectMapper();
        String vallid = "";
        try {
            vallid = objectMapper.writeValueAsString(map);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return vallid;
    }

    @RequestMapping("/forgetPasswordUI")
    public String forgetPassword() {
        return "admin/forgetPassword";
    }

    @RequestMapping("/createAccountUI")
    public String createAccountUI() {
        return "admin/createAccount";
    }

    // 疯狂跳转系列
    // 1. adminUI文件夹下的文件
    @RequestMapping("/welcome")
    public String welcome() {
        return "admin/welcome";
    }

    @RequestMapping("/admin-add")
    public String adminAdd() {
        return "admin/adminUI/admin-add";
    }

    @RequestMapping("/admin-list")
    public String adminList(Model model,HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        List<Admin> admins = adminServlet.selectAll(admin) ;
        model.addAttribute("admins",admins) ;
        return "admin/adminUI/admin-list";
    }

    @RequestMapping("/admin-password-edit")
    public String adminPasswordEdit() {
        return "admin/adminUI/admin-password-edit";
    }

    @RequestMapping("/admin-show")
    public String adminShow(Model model,
                            @RequestParam(value = "id", required = false, defaultValue = "0")int id) {
        Admin temp = new Admin();
        temp.setId(id);
        temp = (Admin) adminServlet.selectByMy(temp);
        model.addAttribute("admin",temp);
        return "admin/adminUI/admin-show";
    }

    @RequestMapping("/change-password")
    public String changePassword() {
        return "admin/adminUI/change-password";
    }

    // 2.student文件夹下的文件

    @RequestMapping("/student-add")
    public String studentAdd() {
        return "admin/student/student-add";
    }

    @RequestMapping("/student-del")
    public String studentDel() {
        return "admin/student/student-del";
    }

    @RequestMapping("/student-list")
    public String studentList(Model model) {
        List<Student> students = adminServlet.selectAll() ;
        model.addAttribute("students",students) ;
        return "admin/student/student-list";
    }

    @RequestMapping("/student-show")
    public String studentShow(Model model,
                              @RequestParam(value = "id", required = false, defaultValue = "0")int id) {
                Student temp = new Student();
                temp.setId(id);
                temp = (Student) adminServlet.selectByMy(temp);
                model.addAttribute("student",temp);
        return "admin/student/student-show";
    }

    @RequestMapping("/student-delect")
    @ResponseBody
    public String studentShow(@Param("id")int id) {
        Student student = new Student();
        student.setId(id);
        boolean type = adminServlet.delect(student);
        Map<String,Boolean> map = new HashMap<String, Boolean>();
        map.put("result",type);
        ObjectMapper objectMapper = new ObjectMapper();
        String result = "";
        try {
            result = objectMapper.writeValueAsString(map);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

    @RequestMapping("/student-update")
    public String studentUpdate(Student student) {
            System.out.println("****************进来了 + " + student.getId()) ;

        if(student != null) {
            adminServlet.update(student);
        }
        return "admin/student-update";
    }

    @RequestMapping("/student-updateUI")
    public String studentUpdateUI(Model model,
                                  @RequestParam(name = "id",required = false, defaultValue = "0")int id) {
        Student temp = new Student();
        temp.setId(id);
        temp = (Student) adminServlet.selectByMy(temp);
        model.addAttribute("student",temp);
        return "admin/student/student-update";
    }

    @RequestMapping("/student-selectByType")
    @ResponseBody
    public String selectByType(Model model,@Param("text")String text,HttpSession session) throws IOException {
        System.out.println("************8进入了夜夜夜夜" + text) ;
        Student temp = new Student();
        temp.setContact_subject(text);
        temp.setContact_email(text);
        temp.setContact_name(text);
        List<Student> temps = adminServlet.selectByType(temp);
        ObjectMapper objectMapper = new ObjectMapper();
        String result = "";
        Map<String,Boolean> map = new HashMap<String, Boolean>();
        if(temps.size() > 0) {
            session.setAttribute("studentByTypes",temps);
            map.put("result",true);
            result = objectMapper.writeValueAsString(map);
        }else {
            temps = adminServlet.selectAll();
            model.addAttribute("students",temps);
            map.put("result",false);
            result = objectMapper.writeValueAsString(map);
        }
        return result ;
    }
    }
