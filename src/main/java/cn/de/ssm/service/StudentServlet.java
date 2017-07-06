package cn.de.ssm.service;

import cn.de.ssm.mapper.StudentMapper;
import cn.de.ssm.po.Student;
import cn.de.ssm.util.AllCheck;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 林进华 on 2017/7/1.
 */
@Service
public class StudentServlet {

    @Autowired
    StudentMapper studentMapper ;

    public int register(Student student) {
        AllCheck check = new AllCheck();
        // 1代表成功， 2代表不成功， 3代表已注册
        int type = 2;
        Student temp = studentMapper.selectStudentByNameAndNumber(student.getContact_name(),student.getContact_subject());
        student.setId(temp.getId());
        if(temp == null) {
            if(!check.isMobileNO(student.getContact_phone())) {
                type = 1;
            }
            if(!check.isEmailNO(student.getContact_email())) {
                type = 1;
            }
            if(!check.isStudentNumberNO(student.getContact_subject())) {
                type = 1;
            }
            if(type == 2) {
                studentMapper.register(student);
            }
        }else {
            studentMapper.updateByPrimaryKey(student) ;
            type = 3 ;
        }
        return type ;
    }

    public List<Student> test(String name) {
        List<Student> ss = studentMapper.likeSelectByName(name) ;
        return ss ;
    }

}
