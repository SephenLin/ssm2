package cn.de.ssm.mapper;

import cn.de.ssm.po.Student;
import cn.de.ssm.util.BaseMapper;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.MySqlMapper;

import java.util.List;

/**
 * Created by 林进华 on 2017/7/1.
 */
public interface StudentMapper extends BaseMapper<Student> {

    public void register (Student student) ;
    public Student selectStudentByNameAndNumber (@Param("name")String name,@Param("number") String number) ;
    public List<Student> likeSelectByName (@Param("name")String name) ;

}
