package com.hp;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.io.OutputStream;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Session;

public class employeeDetailsOutputAction extends ActionSupport implements ServletRequestAware{
    HttpServletRequest request;
    List<EmployeeContact> emps;

    public List<EmployeeContact> getEmps() {
        return emps;
    }

    public void setEmps(List<EmployeeContact> emps) {
        this.emps = emps;
    }
    public String getAllEmp(){
        Session s=HibernateUtil.getSessionFactory().openSession();
        emps=s.createCriteria(EmployeeContact.class).list();
        return SUCCESS;
    }

    public void setServletRequest(HttpServletRequest hsr) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        request=hsr;
    }
}