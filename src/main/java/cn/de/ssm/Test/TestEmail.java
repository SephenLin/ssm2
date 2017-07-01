package cn.de.ssm.Test;

import cn.de.ssm.util.EmailUtil2;
import org.junit.Test;

/**
 * Created by 林进华 on 2017/7/1.
 */
public class TestEmail {

    public static void main(String args[]){
        EmailUtil2 email = new EmailUtil2() ;
        email.hashCode("1449815705@qq.com","lkbwqyjszbetgdia",
                "1449815705@qq.com","成功了耶");
    }
}
