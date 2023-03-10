/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.dao;

import com.model.Subject;
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
    private String deleteQuery = "DELETE FROM university.subjects WHERE SUBJECTID=?";
    
    private PreparedStatement deleteEnrolledSubjectSt;
    private String deleteEnrollSubjectQuery = "UPDATE university.subjectEnrollment "
            + "SET subject1 = CASE WHEN subject1=? THEN subject1 = NULL ELSE subject1 END, "
            + "subject2 = CASE WHEN subject2=? THEN subject2 = NULL ELSE subject2 END, "
            + "subject3 = CASE WHEN subject3=? THEN subject3 = NULL ELSE subject3 END, "
            + "subject4 = CASE WHEN subject4=? THEN subject4 = NULL ELSE subject4 END;";
    
     private PreparedStatement updateEnrolledSubjectSt;
    private String updateEnrollSubjectQuery = "UPDATE university.subjectEnrollment "
            + "SET subject1 = REPLACE(subject1,?,?), "
            + "subject2 = REPLACE(subject2,?,?), "
            + "subject3 = REPLACE(subject3,?,?), "
            + "subject4 = REPLACE(subject4,?,?)";
    
    public SubjectSqlDAO(java.sql.Connection connection) throws SQLException {
        this.st = connection.createStatement();
        this.updateSt = connection.prepareStatement(updateQuery);
        this.deleteSt = connection.prepareStatement(deleteQuery);
        this.deleteEnrolledSubjectSt = connection.prepareStatement(deleteEnrollSubjectQuery);
        this.updateEnrolledSubjectSt = connection.prepareStatement(updateEnrollSubjectQuery);
    }
   
    
    //Create Query
    public void create(String name, String desc) throws SQLException {
        String columns = "INSERT INTO university.subjects(SUBJECTNAME,SUBJECTDESC)";
        String values = "VALUES('" + name + "','" + desc + "')";
        st.executeUpdate(columns + values);
    }
    
    public Subject createSubject(String name,String desc) throws SQLException{
       String columns = "INSERT INTO university.subjects(SUBJECTNAME,SUBJECTDESC)";
        String values = "VALUES('" + name + "','" + desc +"')";
        Subject existingSubject = getSubject(name);
        if (existingSubject == null){
            st.executeUpdate(columns + values);
            return new Subject(name, desc);
        }
        else
            return null;
    }

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
    
 //Update function that takes new subject name to update Subject and enrollment tables
    public void update(String oldSubjectName, String newSubjectName, String newSubjectDesc) throws SQLException{
        updateSt.setString(3, oldSubjectName);
        updateSt.setString(1, newSubjectName);
        updateSt.setString(2, newSubjectDesc);
        int row = updateSt.executeUpdate();
  
        updateEnrolledSubjectSt.setString(1, oldSubjectName);
        updateEnrolledSubjectSt.setString(2, newSubjectName);
        updateEnrolledSubjectSt.setString(3, oldSubjectName);
        updateEnrolledSubjectSt.setString(4, newSubjectName);
        updateEnrolledSubjectSt.setString(5, oldSubjectName);
        updateEnrolledSubjectSt.setString(6, newSubjectName);
        updateEnrolledSubjectSt.setString(7, oldSubjectName);
        updateEnrolledSubjectSt.setString(8, newSubjectName);
        int row1 = updateEnrolledSubjectSt.executeUpdate();
        
        System.out.println("Row "+row+" has been successflly updated");
    }
   
    //Delete Query - by ID
    public void delete(int deletesubjectID) throws SQLException{
        Subject subject = getSubject(deletesubjectID);
        String subjectName = subject.getName();
        deleteEnrolledSubjectSt.setString(1, subjectName);
        deleteEnrolledSubjectSt.setString(2, subjectName);
        deleteEnrolledSubjectSt.setString(3, subjectName);
        deleteEnrolledSubjectSt.setString(4, subjectName);
        int r = deleteEnrolledSubjectSt.executeUpdate();
        
        deleteSt.setString(1, ""+deletesubjectID);
        int r1 = deleteSt.executeUpdate();
        
        System.out.println("Row "+r1+" has been successflly deleted");
    }
}
