package com.hp;
// Generated 28-Aug-2016 13:00:28 by Hibernate Tools 3.6.0


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * CompanyMaster generated by hbm2java
 */
@Entity
@Table(name="company_master"
    ,catalog="onlinejobportal"
)
public class CompanyMaster  implements java.io.Serializable {


     private Integer companyCode;
     private String companyName;
     private String headOfficeCity;
     private long headOfficeContNumber;
     private short numberOfBranch;
     private String emailId;
     private String website;
     private String companyType;

    public CompanyMaster() {
    }

    public CompanyMaster(String companyName, String headOfficeCity, long headOfficeContNumber, short numberOfBranch, String emailId, String website, String companyType) {
       this.companyName = companyName;
       this.headOfficeCity = headOfficeCity;
       this.headOfficeContNumber = headOfficeContNumber;
       this.numberOfBranch = numberOfBranch;
       this.emailId = emailId;
       this.website = website;
       this.companyType = companyType;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="company_code", unique=true, nullable=false)
    public Integer getCompanyCode() {
        return this.companyCode;
    }
    
    public void setCompanyCode(Integer companyCode) {
        this.companyCode = companyCode;
    }

    
    @Column(name="company_name", nullable=false, length=20)
    public String getCompanyName() {
        return this.companyName;
    }
    
    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    
    @Column(name="head_officeCity", nullable=false, length=20)
    public String getHeadOfficeCity() {
        return this.headOfficeCity;
    }
    
    public void setHeadOfficeCity(String headOfficeCity) {
        this.headOfficeCity = headOfficeCity;
    }

    
    @Column(name="head_officeCont_number", nullable=false, precision=10, scale=0)
    public long getHeadOfficeContNumber() {
        return this.headOfficeContNumber;
    }
    
    public void setHeadOfficeContNumber(long headOfficeContNumber) {
        this.headOfficeContNumber = headOfficeContNumber;
    }

    
    @Column(name="numberOfBranch", nullable=false, precision=4, scale=0)
    public short getNumberOfBranch() {
        return this.numberOfBranch;
    }
    
    public void setNumberOfBranch(short numberOfBranch) {
        this.numberOfBranch = numberOfBranch;
    }

    
    @Column(name="email_id", nullable=false, length=45)
    public String getEmailId() {
        return this.emailId;
    }
    
    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    
    @Column(name="website", nullable=false, length=45)
    public String getWebsite() {
        return this.website;
    }
    
    public void setWebsite(String website) {
        this.website = website;
    }

    
    @Column(name="company_type", nullable=false, length=45)
    public String getCompanyType() {
        return this.companyType;
    }
    
    public void setCompanyType(String companyType) {
        this.companyType = companyType;
    }




}


