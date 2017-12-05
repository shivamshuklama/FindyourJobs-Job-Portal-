/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp;
import static com.hp.AddNewEmpAction.generateCaptchaString;
import static com.hp.EncryptUtils.base64encode;
import static com.hp.EncryptUtils.xorMessage;
import com.lambdaworks.crypto.SCryptUtil;
import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Session;
public class Updatetojobseekeraction extends ActionSupport implements ServletRequestAware{
    HttpServletRequest request;

    public String getLoginid() {
        return loginid;
    }

    public void setLoginid(String loginid) {
        this.loginid = loginid;
    }
    private String loginid;
    private String name;
           private String emailId;
           private String password;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

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
               private String mobNo;
                 private String   city;
                 private Integer   pin;
                 
                    private String        address;
                          private Integer  passportNumber;
                             private String  gender;
                               private String     skill;

    public Integer getExperience() {
        return experience;
    }

    public void setExperience(Integer experience) {
        this.experience = experience;
    }
                                private Integer experience;
      private File resume;
    private String resumeFileName;
    private String resumeFileContentType;
     private File photo;
    private String photoFileName;
    private String photoFileContentType;

   

    public String getMobNo() {
        return mobNo;
    }

    public void setMobNo(String mobNo) {
        this.mobNo = mobNo;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Integer getPin() {
        return pin;
    }

    public void setPin(Integer pin) {
        this.pin = pin;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getPassportNumber() {
        return passportNumber;
    }

    public void setPassportNumber(Integer passportNumber) {
        this.passportNumber = passportNumber;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    

    public File getResume() {
        return resume;
    }

    public void setResume(File resume) {
        this.resume = resume;
    }

    public String getResumeFileName() {
        return resumeFileName;
    }

    public void setResumeFileName(String resumeFileName) {
        this.resumeFileName = resumeFileName;
    }

    public String getResumeFileContentType() {
        return resumeFileContentType;
    }

    public void setResumeFileContentType(String resumeFileContentType) {
        this.resumeFileContentType = resumeFileContentType;
    }

    public File getPhoto() {
        return photo;
    }

    public void setPhoto(File photo) {
        this.photo = photo;
    }

    public String getPhotoFileName() {
        return photoFileName;
    }

    public void setPhotoFileName(String photoFileName) {
        this.photoFileName = photoFileName;
    }

    public String getPhotoFileContentType() {
        return photoFileContentType;
    }

    public void setPhotoFileContentType(String photoFileContentType) {
        this.photoFileContentType = photoFileContentType;
    }

    
     @Override
    public String execute() throws IOException{
        
      
        
        
        
        
      // try{ 
        
        Session s=HibernateUtil.getSessionFactory().openSession();
        
          String path=request.getServletContext().getRealPath("/mypic");
        File f=new File(path,photoFileName);
        FileUtils.copyFile(photo, f);
        String path1=request.getServletContext().getRealPath("/myresume");
        File f1=new File(path1,resumeFileName);
        FileUtils.copyFile(resume, f1);
       
            FileInputStream fis=new FileInputStream(f);
           byte[] bs=new byte[(int)f.length()];
           fis.read(bs);
           fis.close();
            FileInputStream fis1=new FileInputStream(f1);
           byte[] bs1=new byte[(int)f1.length()];
           fis1.read(bs1);
           fis1.close();
         // Integer log1=new Integer(request.getParameter("loginid"));
            HttpServletRequest request1=(HttpServletRequest)ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
                      Integer log1=new Integer(request1.getParameter("loginid"));
         //Integer log1=new Integer(loginid);
             Login l=(Login)s.get(Login.class,log1);
            
            JobSeeker ee=(JobSeeker)s.get(JobSeeker.class,log1);
           // Photo e1=new Photo(l,bs);            //JobSeeker ee=new JobSeeker(l, mobNo, city, pin, address, passportNumber, gender, skill, experience,name);

            // Resume e2=new Resume(l,bs1);
            Photo e1=(Photo)s.get(Photo.class,log1);
            Resume e2=(Resume)s.get(Resume.class,log1);
            ee.setAddress(address);ee.setCity(city);ee.setExperience(experience);ee.setGender(gender);ee.setMobNo(mobNo);ee.setName(name);
            ee.setPassportNumber(passportNumber);ee.setPin(pin);ee.setSkill(skill);
            e1.setPhoto(bs);e2.setResume(bs1);
//         ee.setName(name);ee.setMobNo(mobNo);ee.setPin(pin);ee.setExperience(experience);ee.setGender(gender);
//           ee.setAddress(address);ee.setCity(city);ee.setPassportNumber(passportNumber);ee.setSkill(skill);e1.setPhoto(bs);e2.setResume(bs1);
//           
           //Session s=HibernateUtil.getSessionFactory().openSession();
           
           s.update(ee);s.update(e1);s.update(e2);
           s.save(ee);s.save(e1);s.save(e2);
           s.beginTransaction().commit();
           
        s.close();
        
         
       // }
          
       // catch (Exception e){
           
           
        //}  
      return SUCCESS;
        
       
    }
       
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        if(execute.equals("SUCCESS"))
//            return SUCCESS;
//        else
//            return ERROR;
//        }
//        catch (Exception e){
//           
//            return ERROR;
//        }        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        String path=request.getServletContext().getRealPath("/mypic");
//        File f=new File(path,photoFileName);
//        FileUtils.copyFile(photo, f);
//        String path1=request.getServletContext().getRealPath("/myresume");
//        File f1=new File(path1,resumeFileName);
//        FileUtils.copyFile(resume, f1);
//        try{
//            FileInputStream fis=new FileInputStream(f);
//           byte[] bs=new byte[(int)f.length()];
//           fis.read(bs);
//           fis.close();
//            FileInputStream fis1=new FileInputStream(f1);
//           byte[] bs1=new byte[(int)f1.length()];
//           fis1.read(bs1);
//           fis1.close();
//            JobSeeker e=new JobSeeker();
//             Photo e1=new Photo();
//             Resume e2=new Resume();
//         e.setName(name);e.setMobNo(mobNo);e.setPin(pin);e.setExperience(experience);e.setGender(gender);
//           e.setAddress(address);e.setCity(city);e.setPassportNumber(passportNumber);e.setSkill(skill);e1.setPhoto(bs);e2.setResume(bs1);
//           
//           Session s=HibernateUtil.getSessionFactory().openSession();
//           s.save(e);s.save(e1);s.save(e2);
//           s.beginTransaction().commit();
//           
//        }catch(Exception e){}
//        return SUCCESS;
//        
//        
        
        
        
        
        
        
        
      
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    

    
   
    public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }
    
    
//      public static String generateCaptchaString() {
//	int length = 7 + (Math.abs((int)(Math.random()*100000)) % 3);
//
//	StringBuffer captchaStringBuffer = new StringBuffer();
//	for (int i = 0; i < length; i++) {
//		int baseCharNumber = Math.abs((int)(Math.random()*100000)) % 62;
//		int charNumber = 0;
//		if (baseCharNumber < 26) {
//			charNumber = 65 + baseCharNumber;
//		}
//		else if (baseCharNumber < 52){
//			charNumber = 97 + (baseCharNumber - 26);
//		}
//		else {
//			charNumber = 48 + (baseCharNumber - 52);
//		}
//		captchaStringBuffer.append((char)charNumber);
//	}
//
//	return captchaStringBuffer.toString();
//}
    
}

    

