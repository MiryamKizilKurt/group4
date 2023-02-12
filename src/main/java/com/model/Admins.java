/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author 236358
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "admins")
public class Admins implements Serializable{
    @XmlElement(name = "admin")

    private List<Admin> admins = new ArrayList<>();
    
    public Admins() {  }
    
    public Admin admin(String email, String password){
        return this.admins.stream().filter(admin -> admin.login(email, password)).findAny().orElse(null);
    }
    
    public Admin admin(String email){
        return this.admins.stream().filter(admin -> admin.match(email)).findAny().orElse(null);
    }
    
    public Admin admin(int ID){
        return this.admins.stream().filter(admin -> admin.match(ID)).findAny().orElse(null);
    }

    public List<Admin> getAdmins() {
        return admins;
    }

    public void setAdmins(List<Admin> admins) {
        this.admins = admins;
    }

    public void addAll(List<Admin> temp){
        this.admins.addAll(temp);
    }
    
    public void add(Admin admin){
        this.admins.add(admin);
    }
}
