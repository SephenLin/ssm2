package cn.de.ssm.service;

import cn.de.ssm.mapper.StudentMapper;
import cn.de.ssm.po.Student;
import cn.de.ssm.util.AllCheck;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 林进华 on 2017/7/1.
 */
@Service
public class StudentServlet {

    @Autowired
    StudentMapper studentMapper ;

    public boolean register(Student student) {
        AllCheck check = new AllCheck();
        boolean type = true;
        if(!check.isMobileNO(student.getContact_phone())) {
            type = false;
        }
        if(!check.isEmailNO(student.getContact_email())) {
            type = false;
        }
        if(!check.isStudentNumberNO(student.getContact_subject())) {
            type = false;
        }
        if(type) {
            studentMapper.register(student);
        }
        return type ;
    }

}
