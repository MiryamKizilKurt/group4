/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import java.io.Serializable;
import java.util.Random;

/**
 *
 * @author 236358
 */
public class Admin implements Serializable{
    private int ID;
    private String name;
    private String email;
    private String password;
    private String DOB;
    private String ROLE;
    
    public Admin() {
    }

    public Admin(int ID, String name, String email, String password, String DOB, String ROLE) {
        this.ID = ID;
        this.name = name;
        this.email = email;
        this.password = password;
        this.DOB = DOB;
        this.ROLE = ROLE;
    }    

    public Admin(String name, String email, String password, String DOB, String ROLE) {
        this.ID = (new Random()).nextInt(999999);
        this.name = name;
        this.email = email;
        this.password = password;
        this.DOB = DOB;
        this.ROLE = ROLE;
    }
    
    public boolean login(String email, String password){
        return this.email.equals(email)&&this.password.equals(password);
    }    
    
    public boolean match(int ID){
        return this.ID == ID;
    }
    
    public boolean match(String email){
        return this.email.equals(email);
    }
    
    public boolean match(Admin other){
        return this.ID == other.ID;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }
    
    public String getROLE() {
        return ROLE;
    }

    public void setROLE(String ROLE) {
        this.DOB = ROLE;
    }
    
}
