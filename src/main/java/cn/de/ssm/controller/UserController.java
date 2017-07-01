package cn.de.ssm.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.de.ssm.mapper.UserMapper;
import cn.de.ssm.po.User;
import cn.de.ssm.service.UserCheck;
@Controller
@RequestMapping("/one")
public class UserController {
	
		@Autowired
		UserCheck check ;
		
		@RequestMapping("/first")
		public ModelAndView first() {
			ModelAndView modelAndView = new ModelAndView() ;
			User user = check.test1(1);
			modelAndView.addObject("user", user) ;
			modelAndView.setViewName("index") ;
			return modelAndView ;
		}
		
		@RequestMapping("/register")
		public String register(Model model, @Param("name")String name, @Param("password")String password) {
			check.userRegister(name, password) ;
			boolean type = false ;
			return type == true ? "success" : "register" ;
		}
		
		@RequestMapping("/login")
		public ModelAndView login(@Param("name") String name, @Param("password") String password) {
			ModelAndView modelAndView = new ModelAndView() ;
			User user = check.getNameByNameAndPassword(name, password) ;
			modelAndView.addObject("user", user) ;
			if(user == null) {
				modelAndView.setViewName("login") ;
			} else {
				modelAndView.setViewName("index") ;
			}
			return modelAndView ;
		}
	}
