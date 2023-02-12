
package com.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author 236349
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "user")
public class User implements Serializable{
    @XmlElementWrapper(name = "subjects")
    @XmlElement(name ="subject")
    private List<Subject> subjects = new ArrayList<>();
    private int ID;
    private String name;
    private String email;
    private String password;
    private String DOB;
    private String ROLE;
    

    public User() {
    }

    public User(int ID, String name, String email, String password, String DOB, String ROLE) {
        this.ID = ID;
        this.name = name;
        this.email = email;
        this.password = password;
        this.DOB = DOB;
        this.ROLE = ROLE;
    }

    public User(String name, String email, String password, String DOB, String ROLE) {
        this.ID = (new Random()).nextInt(999999);
        this.name = name;
        this.email = email;
        this.password = password;
        this.DOB = DOB;
    }
    
    public void update(int ID, String name, String email, String password, String DOB, String ROLE){
        this.ID = ID;
        this.name = name;
        this.email = email;
        this.password = password;
        this.DOB = DOB;
        this.ROLE = ROLE;
    }

//    public void addAll(List<Blog> temp){
//        blogs.addAll(temp);
//    }
    
    public boolean login(String email, String password){
        return this.email.equals(email)&&this.password.equals(password);
    }    
    
    public boolean match(int ID){
        return this.ID == ID;
    }
    
    public boolean match(String email){
        return this.email.equals(email);
    }
    
    public boolean match(User other){
        return this.ID == other.ID;
    }
    
    public boolean matchName(String name){
        return this.name.equals(name);
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
    
    public void setSubjects(List<Subject> subjects) {
        this.subjects = subjects;
    }
}
