package com.hp;
// Generated 28-Aug-2016 13:00:28 by Hibernate Tools 3.6.0


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * JobMasterDetail generated by hbm2java
 */
@Entity
@Table(name="job_master_detail"
    ,catalog="onlinejobportal"
)
public class JobMasterDetail  implements java.io.Serializable {


     private int jobCode;
     private String jobTitle;
     private String companyCode;
     private int minSalary;
     private int maxSalary;
     private int experience;
     private String qualification;

    public JobMasterDetail() {
    }

    public JobMasterDetail(int jobCode, String jobTitle, String companyCode, int minSalary, int maxSalary, int experience, String qualification) {
       this.jobCode = jobCode;
       this.jobTitle = jobTitle;
       this.companyCode = companyCode;
       this.minSalary = minSalary;
       this.maxSalary = maxSalary;
       this.experience = experience;
       this.qualification = qualification;
    }
   
     @Id 

    
    @Column(name="Job_Code", unique=true, nullable=false)
    public int getJobCode() {
        return this.jobCode;
    }
    
    public void setJobCode(int jobCode) {
        this.jobCode = jobCode;
    }

    
    @Column(name="job_title", nullable=false, length=45)
    public String getJobTitle() {
        return this.jobTitle;
    }
    
    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    
    @Column(name="company_code", nullable=false, length=45)
    public String getCompanyCode() {
        return this.companyCode;
    }
    
    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    
    @Column(name="min_salary", nullable=false)
    public int getMinSalary() {
        return this.minSalary;
    }
    
    public void setMinSalary(int minSalary) {
        this.minSalary = minSalary;
    }

    
    @Column(name="max_salary", nullable=false)
    public int getMaxSalary() {
        return this.maxSalary;
    }
    
    public void setMaxSalary(int maxSalary) {
        this.maxSalary = maxSalary;
    }

    
    @Column(name="experience", nullable=false)
    public int getExperience() {
        return this.experience;
    }
    
    public void setExperience(int experience) {
        this.experience = experience;
    }

    
    @Column(name="qualification", nullable=false, length=45)
    public String getQualification() {
        return this.qualification;
    }
    
    public void setQualification(String qualification) {
        this.qualification = qualification;
    }




}

