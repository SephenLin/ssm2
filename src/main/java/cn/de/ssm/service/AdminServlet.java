package cn.de.ssm.service;

import cn.de.ssm.mapper.AdminMapper;
import cn.de.ssm.po.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 林进华 on 2017/7/6.
 */
    @Service
    public class AdminServlet {
        @Autowired
        AdminMapper adminMapper ;

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

    }
