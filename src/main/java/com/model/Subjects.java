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
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author 236356
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "subjects")
public class Subjects implements Serializable{
     private List<Subject> subjects = new ArrayList<>();
    
     public Subjects() {
    }
     //this function is to add multiple subjects
     public void addAll(List<Subject> temp){
        this.subjects.addAll(temp);
    }
    
    public void add(Subject subject){
        this.subjects.add(subject);
    }
    
    public Subject subject(int ID){
        return this.subjects.stream().filter(subject -> subject.match(ID)).findAny().orElse(null);
    }

    public List<Subject> getSubjects() {
        return subjects;
    }

    public void setSubjects(List<Subject> subjects) {
        this.subjects = subjects;
    }   
    
    public void remove(Subject other){
        subjects.removeIf(u -> u.match(other));
    }
    
    public void show(){
        this.subjects.forEach(u -> System.out.println(u));
    }
     
}
