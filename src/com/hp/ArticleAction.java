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
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.lang.time.DateFormatUtils;
import org.hibernate.Session;
public class ArticleAction extends ActionSupport implements org.apache.struts2.interceptor.ServletRequestAware{
       HttpServletRequest request;

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }
   private String articlename;
   private String articledesc;
   private String postedon;

    public String getArticlename() {
        return articlename;
    }

    public void setArticlename(String articlename) {
        this.articlename = articlename;
    }

    public String getArticledesc() {
        return articledesc;
    }

    public void setArticledesc(String articledesc) {
        this.articledesc = articledesc;
    }

    public String getPostedon() {
        return postedon;
    }

    public void setPostedon(String postedon) {
        this.postedon = postedon;
    }
    
   @Override
    public String execute() throws Exception{
       String d=request.getParameter("postedon");
       // Date postedon1=new Date(d);
   // try{   
        //DateFormat df= new SimpleDateFormat();
       // String reportDate = df.format(postedon);
  Date d1= new SimpleDateFormat("YYYY-MM-dd").parse(d);
    
        Session s=HibernateUtil.getSessionFactory().openSession();
        AdminArticles ad=new AdminArticles();
        ad.setArticalDesc(articledesc);ad.setArticalName(articlename);ad.setPostedOn(d1);
        s.beginTransaction().commit();
    //}
    //catch(Exception e){}
        return SUCCESS;
    }

    public void setServletRequest(HttpServletRequest hsr) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        request=hsr;
    }
}
