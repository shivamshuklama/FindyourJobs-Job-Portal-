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
import static com.opensymphony.xwork2.Action.SUCCESS;
import java.io.IOException;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Session;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
public class EmpdetailsinputAction extends ActionSupport implements ServletRequestAware{

  
    HttpServletRequest request;
    
   
    
      private Integer empNumber;
                 private String   empName;
                 private String emailId  ;
                 private String empDesg  ;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
                 private String password;
                    private String empCmpName;
                          private String  empCompAddress;
                             private String  empCompState;
                               private String     empCompCity;
                               
                               private String  empCompanyProfile;
                               private String     empCompWebsite;

                               
                               
    public Integer getEmpNumber() {
        return empNumber;
    }

    public void setEmpNumber(Integer empNumber) {
        this.empNumber = empNumber;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getEmpDesg() {
        return empDesg;
    }

    public void setEmpDesg(String empDesg) {
        this.empDesg = empDesg;
    }

    public String getEmpCmpName() {
        return empCmpName;
    }

    public void setEmpCmpName(String empCmpName) {
        this.empCmpName = empCmpName;
    }

    public String getEmpCompAddress() {
        return empCompAddress;
    }

    public void setEmpCompAddress(String empCompAddress) {
        this.empCompAddress = empCompAddress;
    }

    public String getEmpCompState() {
        return empCompState;
    }

    public void setEmpCompState(String empCompState) {
        this.empCompState = empCompState;
    }

    public String getEmpCompCity() {
        return empCompCity;
    }

    public void setEmpCompCity(String empCompCity) {
        this.empCompCity = empCompCity;
    }

    public String getEmpCompanyProfile() {
        return empCompanyProfile;
    }

    public void setEmpCompanyProfile(String empCompanyProfile) {
        this.empCompanyProfile = empCompanyProfile;
    }

    public String getEmpCompWebsite() {
        return empCompWebsite;
    }

    public void setEmpCompWebsite(String empCompWebsite) {
        this.empCompWebsite = empCompWebsite;
    }

    @Override
    public String execute()throws IOException{
        try{
            
            EmployeeContact e=new EmployeeContact();
            EmployeeUsernameAndPassword e1= new EmployeeUsernameAndPassword();
            Session s=HibernateUtil.getSessionFactory().openSession();
            e.setEmpCmpName(empCmpName);e.setEmpCompAddress(empCompState);e.setEmpCompCity(empCompCity);e.setEmpCompState(empCompState);
            e.setEmpCompWebsite(empCompWebsite);e.setEmpCompanyProfile(empCompanyProfile);e.setEmpDesg(empDesg);e.setEmpName(empName);
            e.setEmpNumber(empNumber);e.setUsername(emailId);
            e1.setUsername(emailId);e1.setPassword(password);
            s.save(e);
            s.save(e1);
            s.beginTransaction().commit();
            s.close();
            
        }
        catch(Exception e){
            
        }
        return SUCCESS;
    }
    
    
    
    public void setServletRequest(HttpServletRequest hsr) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        request=hsr;
    }
    
}
