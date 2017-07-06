package cn.de.ssm.mapper;

import cn.de.ssm.po.Admin;
import cn.de.ssm.util.BaseMapper;

/**
 * Created by 林进华 on 2017/7/6.
 */
    public interface AdminMapper extends BaseMapper<Admin> {

        public Admin login(Admin admin) ;
        public int selectAllCount(Admin admin) ;

    }
