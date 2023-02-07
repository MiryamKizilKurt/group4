/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author 236356
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "subject")
public class Subject implements Serializable{
    private int subjectID;
    private String subjectName;
    private String subjectDesc;
    private String subject1;
    private String subject2;
    private String subject3;
    private String subject4;
    private int enrollID;
    private int userID;
    
     public Subject() {
  
    }
     
     public Subject(int enrollID, int userID, String subject1, String subject2, String subject3, String subject4) {
        this.enrollID = enrollID;
        this.userID = userID;
        this.subject1 = subject1;
        this.subject2 = subject2;
        this.subject3 = subject3;
        this.subject4 = subject4;
    }
     
       public Subject(int ID,String name, String desc) {
        this.subjectID = ID;
        this.subjectName = name;
        this.subjectDesc = desc;
    
      }
      public void update(int ID, String name, String desc){
        this.subjectID = ID;
        this.subjectName = name;
        this.subjectDesc = desc;
     }

    public String getSubject1() {
        return subject1;
    }

    public void setSubject1(String subject1) {
        this.subject1 = subject1;
    }

    public String getSubject2() {
        return subject2;
    }

    public void setSubject2(String subject2) {
        this.subject2 = subject2;
    }

    public String getSubject3() {
        return subject3;
    }

    public void setSubject3(String subject3) {
        this.subject3 = subject3;
    }

    public String getSubject4() {
        return subject4;
    }

    public void setSubject4(String subject4) {
        this.subject4 = subject4;
    }

    public int getEnrollID() {
        return enrollID;
    }

    public void setEnrollID(int enrollID) {
        this.enrollID = enrollID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }
     
    
   
      public boolean match(int ID){
        return this.subjectID == ID;
    }
    
      public int getID() {
        return subjectID;
    }

    public void setID(int ID) {
        this.subjectID = ID;
    }

    public String getName() {
        return subjectName;
    }

    public void setName(String name) {
        this.subjectName = name;
    }
    public String getDesc(){
        return subjectDesc;
    }
    public void setDesc(String desc) {
        this.subjectDesc = desc;
    }
    
    public boolean match(Subject other){
        return this.subjectID == other.subjectID;
    }
}

