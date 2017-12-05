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

public class empActionp {
    public  String execute(){
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpSession session=request.getSession();
        String s=(String)session.getAttribute("login");
        if(s!=null&&!s.equals("")){
            return "success";
        }
        else{
            return "error";
        }
    }
    
}
