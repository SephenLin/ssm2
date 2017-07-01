package cn.de.ssm.mapper;

import java.util.List;

import cn.de.ssm.po.User;

	public interface UserMapper {
	
		public List<User> getAll() ;
		public User getNameById(int id) ;
		public User getNameByNameAndPassword(User user) ;
		public void userRegister(User user) ;
	}
