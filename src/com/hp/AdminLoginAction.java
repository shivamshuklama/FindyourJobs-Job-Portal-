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
import static com.opensymphony.xwork2.Action.ERROR; 
import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;
import org.apache.struts2.interceptor.SessionAware; 
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.hibernate.Session;

public class AdminLoginAction extends ActionSupport implements SessionAware{
    SessionMap<String,String>sessionmap;
    private String email;
    private String password;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
   /* public void validate(){
        
      if((email.equals(null)&&email.equals(""))&&!email.equals("s")){
          addFieldError("email","enter user name");
      } 
       if((password.equals(null)&&password.equals(""))&&!password.equals("s")){
          addFieldError("password","enter password");
      } 
   
    }*/
    @Override
    public String execute(){
      Session s=HibernateUtil.getSessionFactory().openSession();
      //  EmployeeUsernameAndPassword e=new EmployeeUsernameAndPassword();
        List<AdmindUseridandpassword>es=s.createCriteria(AdmindUseridandpassword.class).list();
        boolean b=false;
    for(AdmindUseridandpassword e:es){
          if((email.equals(e.getUsername())&&password.equals(e.getPassword()))){
       b=true;
          }
    
    }
    if(b==true){
        return SUCCESS;
    }
    else if(b==false){
        return INPUT;
    }
    else{
        return ERROR;
    }
       
       
        
    }
     public void setSession(Map map) {  
    sessionmap=(SessionMap)map;  
    sessionmap.put("login","true");  
}  
      public String logout(){  
    sessionmap.invalidate();  
    return SUCCESS;  
}  
}
