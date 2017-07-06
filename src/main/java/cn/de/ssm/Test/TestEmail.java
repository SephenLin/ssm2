package cn.de.ssm.Test;

import cn.de.ssm.mapper.StudentMapper;
import cn.de.ssm.mapper.UserMapper;
import cn.de.ssm.po.User;
import cn.de.ssm.po.Student;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 林进华 on 2017/7/1.
 */
public class TestEmail {
        @Test
        public void testPageHelper() {
            // 创建一个spring容器
            ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/applicationContext-*");
            // 从spring容器中获取mapper代理对象
            StudentMapper mapper = context.getBean(StudentMapper.class);
            //分页处理，显示第一页的10条数据
            PageHelper.startPage(1, 2);
            List<Student> list = mapper.likeSelectByName("1");//查询
            // 取商品列表
            for(Student item : list) {
                System.out.println(item.getContact_message());
            }
            System.out.println("*************************");
            // 取分页信息
            PageInfo<Student> pageInfo = new PageInfo<Student>(list);
            for(Student item : pageInfo.getList()) {
                System.out.println(item.getContact_message() + "****" + pageInfo.getPageSize());
            }
            long total = pageInfo.getTotal(); //获取总记录数
            System.out.println("共有商品信息：" + total);
        }

    @Test
    public void testMapper() {
        // 创建一个spring容器
        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/applicationContext-*");
        // 从spring容器中获取mapper代理对象
        UserMapper mapper = context.getBean(UserMapper.class);
        List<User> users = new ArrayList<User>() ;
        User u1 = new User() ;
        u1.setName("sa1");
        u1.setPassword("sdsda");
        u1.setSex("男");
        User u2 = new User() ;
        u2.setName("saa1");
        u2.setPassword("sdsdda");
        u2.setSex("男");
        users.add(u1) ;
        users.add(u2) ;
    }
}
