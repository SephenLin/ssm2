package cn.de.ssm.mapper;

import java.util.List;

import cn.de.ssm.po.Student;
import cn.de.ssm.po.User;
import cn.de.ssm.util.BaseMapper;
import tk.mybatis.mapper.common.MySqlMapper;

public interface UserMapper extends BaseMapper<User> {
	
		public List<User> getAll() ;
		public User getNameById(int id) ;
		public User getNameByNameAndPassword(User user) ;
		public void userRegister(User user) ;
	}
