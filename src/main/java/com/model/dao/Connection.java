/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Map;

/**
 *
 * @author 236358
 */
public class Connection {
     //2.Second
    java.sql.Connection c;
    Statement st;
    
    public Connection() {
        try {
            //1.Register the Driver Classs
            //com.mysql.jdbc.Driver ---this is a class address
            //The jar file should be downloaded and add to the libraries
            Class.forName("com.mysql.cj.jdbc.Driver");
            //2.Creating Connection String
            Map<String,String> variables = System.getenv();
            String password = variables.get("dbpassword");
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root",password);
            //3.Creating Statement
            //will allow us to execute queries 
            st = c.createStatement();
        ;
            
                    
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
