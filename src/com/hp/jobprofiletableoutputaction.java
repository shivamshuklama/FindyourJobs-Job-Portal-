package com.hp;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.io.OutputStream;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.ServiceMode;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Session;
import org.hibernate.Transaction;
//import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import static com.opensymphony.xwork2.Action.SUCCESS;
import java.io.IOException;

public class jobprofiletableoutputaction extends ActionSupport implements ServletRequestAware{
   
    Session session;
    
    Transaction transaction;
    
    
    
    HttpServletRequest request;
    List<JobProfile> emps;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    
    private String id;
    
    
    
    
    
    
    
    
    
    
    
    

    public List<JobProfile> getEmps() {
        return emps;
    }

    public void setEmps(List<JobProfile> emps) {
        this.emps = emps;
    }
    Session s=HibernateUtil.getSessionFactory().openSession();
    public String getAllEmp(){
        
        emps=s.createCriteria(JobProfile.class).list();
         //Session s=HibernateUtil.getSessionFactory().openSession();
      //  EmployeeUsernameAndPassword e=new EmployeeUsernameAndPassword();
        //List<JobProfile>jp=s.createCriteria(JobProfile.class).list();
         for(JobProfile e:emps){
             String v=e.getUsername();
         }
        return SUCCESS;
    }
//    
//    public void saveOrUpdateUser(JobProfile user){
//        try{
//            session.saveOrUpdate(user);
//        }
//        catch(Exception e){
//            transaction.rollback();
//           e.printStackTrace();
//        }
//    }
    
    
//    public JobProfile listUserById(String userId){
//        JobProfile user=null;
//        
//        try{
//          user=(JobProfile)session.get(JobProfile.class,userId);
//        }   
//        catch(Exception e){
//            e.printStackTrace();
//        }
//            
//        
//        return user;
//    }
    
//    public String execute()throws IOException{
//          // String ra=request.getParameter("radio");
//       // String gs=(String)id;
//        try{
//         Session s=HibernateUtil.getSessionFactory().openSession();
//         JobProfile jp=new JobProfile();
//       JobProfile j=(JobProfile)s.get(JobProfile.class,request.getParameter("id"));
//      
//       
//       j.setContactInfo(contactInfo);j.setExpiryDate(expiryDate);j.setJobCode(jobCode);j.setJobLocation(jobLocation);
//       j.setJobReq(jobReq);j.setJobTitle(jobTitle);j.setPostDate(postDate);j.setSkillSet(skillSet);
//       
//       s.update(j);
//        s.save(j);
//        s.beginTransaction().commit();}
//        
//      catch(Exception e){
//          
//      }
//       
//       
//        return SUCCESS;
//    
//}
    
    
    
    
    
    
    
    
    
    
    
    
    
    public String deleteUser(String user){
        
   try{
          
        //  Session s=HibernateUtil.getSessionFactory().openSession();
      
                JobProfile l=(JobProfile)s.get(JobProfile.class,user);
               s.delete(l);
               s.beginTransaction().commit();
         
          
          
      } 
      catch(Exception e){
          
      }
   return SUCCESS;
    }
    
    
//   public JobProfile listUser(String userId){
//   JobProfile l=new JobProfile();
//   try{
//      l=(JobProfile)s.get(JobProfile.class,userId);
//   }
//   catch(Exception e){
//       
//   }
//        
//     return l;  
//       
//   }
//    
   
   
   
   
   
   
   
    
    
    public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }
}
