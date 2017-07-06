package cn.de.ssm.po;

import cn.de.ssm.validated.AdminCreateAcount;
import cn.de.ssm.validated.AdminLogin;
import org.hibernate.validator.constraints.Email;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Created by 林进华 on 2017/7/5.
 */
@Table(name = "admin")
public class Admin {

    @Id
    private int id ;
    private String name ;
    @NotNull(groups = {AdminLogin.class},message = "account错误")
    private String account ;
    @NotNull(groups = {AdminLogin.class},message = "password错误")
    private String password ;
    private String email ;
    private String sex ;
    @Size(min = 13)
    private String photoNumber ;
    private String department ;

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPhotoNumber() {
        return photoNumber;
    }

    public void setPhotoNumber(String photoNumber) {
        this.photoNumber = photoNumber;
    }
}
