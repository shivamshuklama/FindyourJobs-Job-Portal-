/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import java.util.Date;

/**
 *
 * @author Shivam
 */
import com.opensymphony.xwork2.ActionSupport;
import java.io.IOException;
import java.io.Serializable;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Session;

public class jobprofiletableupdateAction extends ActionSupport implements ServletRequestAware{
    HttpServletRequest request;

     private Integer jobCode;
     private String jobTitle;
     private String jobReq;
     private String jobLocation;
     private String skillSet;
     private Date postDate;
     private Date expiryDate;
     private String contactInfo;

//    public String getRadio() {
//        return radio;
//    }
//
//    public void setRadio(String radio) {
//        this.radio = radio;
//    }
//   private String radio;
//    public String getEmail() {
//        return email;
//    }
//
//    public void setEmail(String email) {
//        this.email = email;
//    }
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
private String username;
    public int getJobCode() {
        return jobCode;
    }

    public void setJobCode(int jobCode) {
        this.jobCode = jobCode;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getJobReq() {
        return jobReq;
    }

    public void setJobReq(String jobReq) {
        this.jobReq = jobReq;
    }

    public String getJobLocation() {
        return jobLocation;
    }

    public void setJobLocation(String jobLocation) {
        this.jobLocation = jobLocation;
    }

    public String getSkillSet() {
        return skillSet;
    }

    public void setSkillSet(String skillSet) {
        this.skillSet = skillSet;
    }

//    public Date getPostDate() {
//        return postDate;
//    }
//
//    public void setPostDate(Date postDate) {
//        this.postDate = postDate;
//    }
//
//    public Date getExpiryDate() {
//        return expiryDate;
//    }
//
//    public void setExpiryDate(Date expiryDate) {
//        this.expiryDate = expiryDate;
//    }

    public String getContactInfo() {
        return contactInfo;
    }

    public void setContactInfo(String contactInfo) {
        this.contactInfo = contactInfo;
    }
     Session s=HibernateUtil.getSessionFactory().openSession();
    
    @Override
    public String execute()throws IOException{
          // String ra=request.getParameter("radio");
       // String gs=(String)id;
         HttpServletRequest request1=(HttpServletRequest)ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
    Date Date1=new Date(request1.getParameter("postDate"));
           Date Date2=new Date(request1.getParameter("expiryDate"));
  
         Session s=HibernateUtil.getSessionFactory().openSession();
      JobProfile p=(JobProfile)s.get(JobProfile.class,username);
      try{
      if(p!=null){
       p.setContactInfo(contactInfo);p.setExpiryDate(Date2);p.setJobCode(jobCode);p.setJobLocation(jobLocation);
       p.setJobReq(jobReq);p.setJobTitle(jobTitle);p.setPostDate(Date1);p.setSkillSet(skillSet);
       
       s.saveOrUpdate(p);
        
        s.beginTransaction().commit();}
     
     }catch(Exception e){}
       
       
        return SUCCESS;
    
    }
    public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }
}
