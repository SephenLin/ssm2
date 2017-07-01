	package cn.de.ssm.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.de.ssm.mapper.UserMapper;
import cn.de.ssm.po.User;
	@Service
	public class UserCheck {
		@Autowired
		UserMapper userMapper ;
		
		public User test1(int id) {
			User user = userMapper.getNameById(id) ;
			return user ;
		}
		
		public User getNameByNameAndPassword(String name, String password) {
			User user = new User();
			user.setName(name) ;
			user.setPassword(password) ;
			user = userMapper.getNameByNameAndPassword(user) ;
			if(user == null || "".equals(user)) {
				return null ;
			} else {
				return user ;
			}
		}
		
		public void userRegister(String name, String password) {
			User user = new User();
			user.setName(name) ;
			user.setPassword(password) ;
			userMapper.userRegister(user) ;
		}
		
	}
