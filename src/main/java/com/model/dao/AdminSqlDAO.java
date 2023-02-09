/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.dao;

import com.model.Admin;
import com.model.User;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 236358
 */
public class AdminSqlDAO {
     private Statement st;
   
     public AdminSqlDAO(Connection connection) throws SQLException {
        this.st = connection.createStatement();
    }
     
     //Create Query
    public void create(String name, String email, String password, String dob, String ROLE) throws SQLException {
        String columns = "INSERT INTO university.admins(NAME,EMAIL,PASSWORD,DOB,ROLE)";
         String values = "VALUES('" + name + "','" + email + "','" + password + "','" + dob + "' ,'" + ROLE + "')";
        st.executeUpdate(columns + values);
    }
     //Read Query - Read One
    public Admin getAdmin(int ID) throws SQLException {
        String query = "SELECT * FROM university.admins WHERE ID=" + ID;
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            int currentID = Integer.parseInt(rs.getString(1));

            if (ID == currentID) {
                String name = rs.getString(2);
                String email = rs.getString(3);
                String password = rs.getString(4);
                String dob = rs.getString(5);
                String ROLE = rs.getString(6);
                return new Admin(ID, name, email, password, dob, ROLE);
            }
        }
        return null;
    }
    
        //Read Query - Read One/Search/Filter
    public Admin getAdmin(String email) throws SQLException {
        String query = "SELECT * FROM university.admins WHERE EMAIL='" + email+"'";
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            String currentEmail = rs.getString(3);

            if (email.equals(currentEmail)) {
                int ID = Integer.parseInt(rs.getString(1));
                String name = rs.getString(2);
                
                String password = rs.getString(4);
                String dob = rs.getString(5);
                String ROLE = rs.getString(6);
                return new Admin(ID, name, email, password, dob, ROLE);
            }
        }
        return null;
    }
    
     //Read Query - Read One by Email and Password
    public Admin login(String email, String password) throws SQLException {
        String query = "SELECT * FROM university.admins WHERE EMAIL='"+ email+"' AND PASSWORD='"+password+"'";
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            String currentEmail = rs.getString(3);
            String currentPassword = rs.getString(4);

            if (email.equals(currentEmail)&&password.equals(currentPassword)) {
                int ID = Integer.parseInt(rs.getString(1));
                String name = rs.getString(2);               
                String dob = rs.getString(5);
                String ROLE = rs.getString(6);
                return new Admin(ID, name, email, password, dob, ROLE);
            }
        }
        return null;
    }

    //Read Query - Read All
    public List<Admin> getAdmins() throws SQLException {
        String query = "SELECT * FROM university.admins";
        ResultSet rs = st.executeQuery(query);
        List<Admin> temp = new ArrayList<>();
        
        while (rs.next()) {
            int ID = Integer.parseInt(rs.getString(1));
            String name = rs.getString(2);
            String email = rs.getString(3);
            String password = rs.getString(4);
            String dob = rs.getString(5);
            String ROLE = rs.getString(6);
           temp.add(new Admin(ID, name, email, password, dob,ROLE));
        }    
        return temp;
    }
    
        public Admin getRole(String ROLE) throws SQLException {
        String query = "SELECT * FROM university.admins WHERE ROLE='"+ROLE+"'";
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            String currentRole = rs.getString(6);

            if (ROLE.equals(currentRole)) {
                int ID = Integer.parseInt(rs.getString(1));
                String name = rs.getString(2);
                String email = rs.getString(3);
                String password = rs.getString(4);
                String dob = rs.getString(5);
                return new Admin(ID, name, email, password, dob, ROLE);
            }
        }
        return null;
    }
}
