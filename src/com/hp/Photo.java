package com.hp;
// Generated 28-Aug-2016 13:00:28 by Hibernate Tools 3.6.0


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 * Photo generated by hbm2java
 */
@Entity
@Table(name="photo"
    ,catalog="onlinejobportal"
)
public class Photo  implements java.io.Serializable {


     private int loginid;
     private Login login;
     private byte[] photo;

    public Photo() {
    }

    public Photo(Login login, byte[] photo) {
       this.login = login;
       this.photo = photo;
    }
   
     @GenericGenerator(name="generator", strategy="foreign", parameters=@Parameter(name="property", value="login"))@Id @GeneratedValue(generator="generator")

    
    @Column(name="loginid", unique=true, nullable=false)
    public int getLoginid() {
        return this.loginid;
    }
    
    public void setLoginid(int loginid) {
        this.loginid = loginid;
    }

@OneToOne(fetch=FetchType.LAZY)@PrimaryKeyJoinColumn
    public Login getLogin() {
        return this.login;
    }
    
    public void setLogin(Login login) {
        this.login = login;
    }

    
    @Column(name="photo", nullable=false)
    public byte[] getPhoto() {
        return this.photo;
    }
    
    public void setPhoto(byte[] photo) {
        this.photo = photo;
    }




}


