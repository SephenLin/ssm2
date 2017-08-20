package cn.de.ssm.service;

import cn.de.ssm.mapper.AdminMapper;
import cn.de.ssm.mapper.StudentMapper;
import cn.de.ssm.po.Admin;
import cn.de.ssm.po.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 林进华 on 2017/7/6.
 */
    @Service
    public class AdminServlet {
        @Autowired
        AdminMapper adminMapper ;
        @Autowired
        StudentMapper studentMapper ;

        public boolean createAccount(Admin admin) {
            int i = adminMapper.selectAllCount(admin);
                if(i == 0) {
                    adminMapper.insert(admin) ;
                    return true ;
                }else {
                    return false ;
                }
        }

        public Admin login(Admin admin) {
            Admin temp = null ;
            temp = adminMapper.login(admin) ;
            return temp ;
        }

    public List<Admin> selectAll(Admin admin) {
        List<Admin> admins = adminMapper.selectAll() ;
        admins.remove(admin) ;
        return admins;
    }

    public List<Student> selectAll() {
        List<Student> students = studentMapper.selectAll() ;
        return students;
    }

    public Object selectByMy(Object object) {
            if(object instanceof Student) {
                Student student = (Student) object;
                student = studentMapper.selectStudentByMy(student) ;
                return student ;
            }else if(object instanceof Admin){
                Admin admin = (Admin) object;
                admin = adminMapper.selectAdminByMy(admin) ;
                return admin ;
            }else {
                return null;
            }
    }

    public boolean delect(Student student) {
            List<Student> students = studentMapper.select(student);
            Student temp = students.get(0);
            if(temp == null) {
                return false ;
            }else {
                studentMapper.delectById(student);
                return true ;
            }
        }

    public boolean update(Object object) {
        int number = 0;
        if (object instanceof Student) {
            number = studentMapper.updateByPrimaryKey((Student) object);
        }else {
            number = adminMapper.updateByPrimaryKey((Admin) object);
        }
        if(number > 0) {
            return true ;
        }else {
            return false ;
        }
    }


    public boolean checkAdminAccount(String account) {
            boolean type = false ;
        List<Admin> temps = adminMapper.selectAll() ;
        for(Admin temp : temps) {
            if(temp.getAccount().equals(account)) {
                type = true ;
            }
        }
        return type ;
    }

    public List selectByType(Object object) {
            List<Student> objects1 = null;
            List<Admin> objects2 = null;
        if (object instanceof Student) {
            objects1 = studentMapper.selectByType((Student) object);
        }else {
            objects2 = adminMapper.selectAdminByType((Admin) object);
        }
        if(objects1 != null) {
            return objects1 ;
        }else if(objects2 != null){
            return objects2 ;
        }else {
            return null;
        }
    }

    }
