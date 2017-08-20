package cn.de.ssm.mapper;

import cn.de.ssm.po.Admin;
import cn.de.ssm.po.Student;
import cn.de.ssm.util.BaseMapper;

import java.util.List;

/**
 * Created by 林进华 on 2017/7/6.
 */
    public interface AdminMapper extends BaseMapper<Admin> {

        public Admin login(Admin admin) ;
        public int selectAllCount(Admin admin) ;
        public Admin selectAdminByMy(Admin admin) ;
        public List<Admin> selectAdminByType(Admin admin) ;


    }
