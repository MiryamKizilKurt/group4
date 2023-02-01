/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.dao;

import com.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 236358
 */
public class UserSqlDAO {
    private Statement st;
    private PreparedStatement updateSt;
    private String updateQuery = "UPDATE university.users SET NAME=?, PASSWORD=?, DOB=? WHERE ID=?";
    private PreparedStatement deleteSt;
    private String deleteQuery = "DELETE FROM university.users WHERE ID=?";
    
    public UserSqlDAO(Connection connection) throws SQLException {
        this.st = connection.createStatement();
        this.updateSt = connection.prepareStatement(updateQuery);
        this.deleteSt = connection.prepareStatement(deleteQuery);
    }
    
    //Create Query
    public void create(String name, String email, String password, String dob) throws SQLException {
        String columns = "INSERT INTO university.users(NAME,EMAIL,PASSWORD,DOB)";
        String values = "VALUES('" + name + "','" + email + "','" + password + "','" + dob + "')";
        st.executeUpdate(columns + values);
    }
    
    public User addUser(String name, String email,String password, String dob) throws SQLException{
       String columns = "INSERT INTO university.users(NAME,EMAIL,PASSWORD,DOB)";
        String values = "VALUES('" + name + "','" + email + "','" + password + "','" + dob + "')";
        st.executeUpdate(columns + values);
       
        return new User(name, email, password, dob);
        
    }
    
    //Read Query - Read One
    public User getUser(int ID) throws SQLException {
        String query = "SELECT * FROM university.users WHERE ID=" + ID;
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            int currentID = Integer.parseInt(rs.getString(1));

            if (ID == currentID) {
                String name = rs.getString(2);
                String email = rs.getString(3);
                String password = rs.getString(4);
                String dob = rs.getString(5);
                return new User(ID, name, email, password, dob);
            }
        }
        return null;
    }
    
    
        //Read Query - Read One/For Search/Filter
    public User getUser(String email) throws SQLException {
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
    }
    
       //Read Query - Read One by Email and Password
    public User login(String email, String password) throws SQLException {
        String query = "SELECT * FROM university.users WHERE EMAIL='"+ email+"' AND PASSWORD='"+password+"'";
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            String currentEmail = rs.getString(3);
            String currentPassword = rs.getString(4);

            if (email.equals(currentEmail)&&password.equals(currentPassword)) {
                int ID = Integer.parseInt(rs.getString(1));
                String name = rs.getString(2);               
                String dob = rs.getString(5);
                return new User(ID, name, email, password, dob);
            }
        }
        return null;
    }
    
     //Read Query - Read All
    public List<User> getUsers() throws SQLException {
        String query = "SELECT * FROM university.users";
        ResultSet rs = st.executeQuery(query);
        List<User> temp = new ArrayList<>();
        
        while (rs.next()) {
            int ID = Integer.parseInt(rs.getString(1));
            String name = rs.getString(2);
            String email = rs.getString(3);
            String password = rs.getString(4);
            String dob = rs.getString(5);
           temp.add(new User(ID, name, email, password, dob));
        }    
        return temp;
    }
    
    //Update Query (Name, Password) by ID
    public void update(String name, String password, String dob, int ID) throws SQLException{
        updateSt.setString(1, name);
        updateSt.setString(2, password);
        updateSt.setString(3, dob);
        updateSt.setString(4, Integer.toString(ID));
        int row = updateSt.executeUpdate();
        System.out.println("Row "+row+" has been successflly updated");

        
    }
   
    //Delete Query - by ID
    public void delete(int ID) throws SQLException{
        deleteSt.setString(1, ""+ID);
        int row = deleteSt.executeUpdate();
        System.out.println("Row "+row+" has been successflly deleted");
    }
}
