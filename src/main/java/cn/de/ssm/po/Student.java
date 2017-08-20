package cn.de.ssm.po;

import org.aspectj.lang.annotation.Before;
import org.junit.experimental.theories.DataPoint;
import org.springframework.stereotype.Component;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import java.util.Date;

/**
 * Created by 林进华 on 2017/7/1.
 */
@Table(name = "student")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id ;
    @Size(min = 10,max = 13,message = "{student.subject.error.length}")
    private String contact_subject ;
    @Size(min = 10,max = 13,message = "{student.phone.error.length}")
    private String contact_phone ;
    private String contact_email ;
    private String contact_name ;
    private String contact_message ;
    private Date contact_data ;
    private String contact_major ;
    private String contact_department ;

    public String getContact_department() {
        return contact_department;
    }

    public void setContact_department(String contact_department) {
        this.contact_department = contact_department;
    }

    public Date getContact_data() {
        return contact_data;
    }

    public void setContact_data(Date contact_data) {
        this.contact_data = contact_data;
    }

    public String getContact_major() {
        return contact_major;
    }

    public void setContact_major(String contact_major) {
        this.contact_major = contact_major;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContact_subject() {
        return contact_subject;
    }

    public void setContact_subject(String contact_subject) {
        this.contact_subject = contact_subject;
    }

    public String getContact_phone() {
        return contact_phone;
    }

    public void setContact_phone(String contact_phone) {
        this.contact_phone = contact_phone;
    }

    public String getContact_email() {
        return contact_email;
    }

    public void setContact_email(String contact_email) {
        this.contact_email = contact_email;
    }

    public String getContact_name() {
        return contact_name;
    }

    public void setContact_name(String contact_name) {
        this.contact_name = contact_name;
    }

    public String getContact_message() {
        return contact_message;
    }

    public void setContact_message(String contact_message) {
        this.contact_message = contact_message;
    }
}
