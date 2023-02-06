/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.dao;

import com.model.Subject;
import com.model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 236356
 */
public class SubjectSqlDAO {
    private Statement st;
    private PreparedStatement updateSt;
    private String updateQuery = "UPDATE university.subjects SET SUBJECTNAME=?, SUBJECTDESC=? WHERE SUBJECTNAME=?";
    private PreparedStatement deleteSt;
    private String deleteQuery = "DELETE FROM university.subjects WHERE SUBJECTNAME=?";
    
    public SubjectSqlDAO(java.sql.Connection connection) throws SQLException {
        this.st = connection.createStatement();
        this.updateSt = connection.prepareStatement(updateQuery);
        this.deleteSt = connection.prepareStatement(deleteQuery);
    }
    
    //Create Query
    public void create(String name, String desc) throws SQLException {
        String columns = "INSERT INTO university.subjects(SUBJECTNAME,SUBJECTDESC)";
        String values = "VALUES('" + name + "','" + desc + "')";
        st.executeUpdate(columns + values);
    }
    
    /*public Subject addSubject(String name) throws SQLException{
       String columns = "INSERT INTO university.subjects(SUBJECTNAME)";
        String values = "VALUES('" + name + "')";
        st.executeUpdate(columns + values);
       
        return new Subject(name);
        
    }*/
    
    //Read Query - Read One
    public Subject getSubject(int ID) throws SQLException {
        String query = "SELECT * FROM university.subjects WHERE SUBJECTID=" + ID;
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            int currentID = Integer.parseInt(rs.getString(1));

            if (ID == currentID) {
                String name = rs.getString(2);
                String desc = rs.getString(3);
                return new Subject(ID, name, desc);
            }
        }
        return null;
    }
    
    //Read Query - Read One/For Search/Filter
    public Subject getSubject(String subjectName) throws SQLException {
        String query = "SELECT * FROM university.subjects WHERE SUBJECTNAME='"+subjectName+"'";
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            String currentSubject = rs.getString(2);
            String subjectDesc = rs.getString(3);
            int ID = Integer.parseInt(rs.getString(1));
            return new Subject(ID, currentSubject,subjectDesc);
        }
        return null;
    }
    
    
        //Read Query - Read One/For Search/Filter
    /*public User getUser(String email) throws SQLException {
        String query = "SELECT * FROM university.users WHERE EMAIL='"+email+"'";
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            String currentEmail = rs.getString(3);

            if (email.equals(currentEmail)) {
                int ID = Integer.parseInt(rs.getString(1));
                String name = rs.getString(2);
                String password = rs.getString(4);
                String dob = rs.getString(5);
                return new User(ID, name, email, password, dob);
            }
        }
        return null;
    }*/
    
    
     //Read Query - Read All
    public List<Subject> getSubjects() throws SQLException {
        String query = "SELECT * FROM university.subjects";
        ResultSet rs = st.executeQuery(query);
        List<Subject> temp = new ArrayList<>();
        
        while (rs.next()) {
            int ID = Integer.parseInt(rs.getString(1));
            String name = rs.getString(2);
            String subjectDesc = rs.getString(3);
            temp.add(new Subject(ID, name, subjectDesc));
        }    
        return temp;
    }
    
    //Update Query (Name, Password) by ID
    public void update(String oldSubjectName, String newSubjectName, String newSubjectDesc) throws SQLException{
        updateSt.setString(3, oldSubjectName);
        updateSt.setString(1, newSubjectName);
        updateSt.setString(2, newSubjectDesc);
        int row = updateSt.executeUpdate();
        System.out.println("Row "+row+" has been successflly updated");
    }
   
    //Delete Query - by ID
    public void delete(String deletesubjectName) throws SQLException{
        deleteSt.setString(1, ""+deletesubjectName);
        int row = deleteSt.executeUpdate();
        System.out.println("Row "+row+" has been successflly deleted");
    }
}
