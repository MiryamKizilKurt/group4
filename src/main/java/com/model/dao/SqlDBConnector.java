/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author 236358
 */
public class SqlDBConnector extends SqlDB{
    private Connection connection;
    public SqlDBConnector() throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, IOException{
        //Class.forName(driver);
        this.connection = super.openConnection();
    }
    
    public Connection connection(){
        return this.connection;
    }
    
    public void closeConnection() throws SQLException{
        this.connection.close();
    }
}
