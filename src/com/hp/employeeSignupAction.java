/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp;

/**
 *
 * @author Shivam
 */
import com.opensymphony.xwork2.ActionSupport;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Session;
public class employeeSignupAction extends ActionSupport implements ServletRequestAware{
    HttpServletRequest request;
    private String emailId;
    private String password;

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    @Override
    public String execute()throws IOException{
        try{
      EmployeeUsernameAndPassword e=new EmployeeUsernameAndPassword();
      e.setUsername(emailId);e.setPassword(password);
      Session s=HibernateUtil.getSessionFactory().openSession();
      s.save(e);s.beginTransaction().commit();
        }
        catch(Exception e){};
        
        
        return SUCCESS;
        
        
    }
    public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }
    
}
