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
public class deleteArticles extends ActionSupport implements ServletRequestAware{
    HttpServletRequest request;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    private String id;

    public void setServletRequest(HttpServletRequest hsr) {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        request=hsr;
    }
    public String Delete()throws IOException{
     try{   Integer id1=new Integer(request.getParameter("id"));
     Integer id2=new Integer(id);
        Session s=HibernateUtil.getSessionFactory().openSession();
        AdminArticles ad=(AdminArticles)s.get(AdminArticles.class,id1);
        s.delete(ad);
        s.beginTransaction().commit();}
     catch(Exception e){
         
     }
        return SUCCESS;
    }
}
