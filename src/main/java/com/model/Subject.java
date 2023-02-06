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
 * @author 236356
 */
public class Subject implements Serializable{
    private int subjectID;
    private String subjectName;
    private String subjectDesc;
    
     public Subject() {
  
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

