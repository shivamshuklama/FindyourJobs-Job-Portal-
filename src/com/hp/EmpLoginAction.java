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
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpSession;  
import org.apache.struts2.ServletActionContext;  

import javax.servlet.http.Cookie;
import javax.servlet.*;
import javax.servlet.http.*;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware; 
import org.hibernate.Session;
public class EmpLoginAction extends ActionSupport implements SessionAware,ServletResponseAware{
    HttpServletRequest request;
  HttpServletResponse response;
    SessionMap<String, String>sessionmap;
    
     Cookie c;
    
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
    @Override
   /* public void validate(){
        Session s=HibernateUtil.getSessionFactory().openSession();
      //  EmployeeUsernameAndPassword e=new EmployeeUsernameAndPassword();
        List<EmployeeUsernameAndPassword>es=s.createCriteria(EmployeeUsernameAndPassword.class).list();
        
      if((email==null)||email.equals("")){
          addFieldError("email","enter user name");
      } 
       if((password==null)||password.equals("")){
          addFieldError("password","enter password");
      } 
       boolean b=false;
       for(EmployeeUsernameAndPassword e:es){
           if(((email!=null)&&!email.equals(""))&&(email.equals(e.getUsername())&&password.equals(e.getPassword()))){
               b=true;
           }
       }
       if(b==false){
           addFieldError("email","invalid username or password");
            
       }
    }*/
   
    
    public String execute(){
        Session s=HibernateUtil.getSessionFactory().openSession();
      //  EmployeeUsernameAndPassword e=new EmployeeUsernameAndPassword();
        List<EmployeeUsernameAndPassword>es=s.createCriteria(EmployeeUsernameAndPassword.class).list();
        boolean b=false;
    for(EmployeeUsernameAndPassword e:es){
          if((email.equals(e.getUsername())&&password.equals(e.getPassword()))){
       b=true;
          }
    
    }
    if(b==true){
        c=new Cookie("user2",email);
                // c.setMaxAge(60*60*24);
                response.addCookie(c);
        return SUCCESS;
    }
    else if(b==false){
        return INPUT;
    }
    else{
        return ERROR;
    }
    }

    public void setServletRequest(HttpServletRequest hsr) {
      //  throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        request=hsr;
    }
  
  

   public void setSession(Map map) {  
    sessionmap=(SessionMap)map;  
    sessionmap.put("login","true");  
}  
      public String logout(){  
    sessionmap.invalidate();  
    return SUCCESS;  
}  
    
    public String jobprofile(){  
HttpServletRequest request=ServletActionContext.getRequest();  
HttpSession session=request.getSession();  
  
String s=(String)session.getAttribute("login");  
if((s!=null)&&!s.equals("")){  
    return SUCCESS;  
}  
else{  
    return INPUT;  
}  
    }
    
 public void setServletResponse(HttpServletResponse hsr) {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        response=hsr;
         c=new Cookie("user2",email);
                 c.setMaxAge(60*60*24);
        response.addCookie(c);
    }



}    
      
      
      
      
      
      
      
      
      
      
      
      
      





