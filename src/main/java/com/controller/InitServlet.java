/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
 */
package com.controller;

import com.model.dao.AdminSqlDAO;
import com.model.dao.EnrollSubSqlDAO;
import com.model.dao.SqlDBConnector;
import com.model.dao.SubjectSqlDAO;
import com.model.dao.UserSqlDAO;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class InitServlet extends HttpServlet {

    private UserSqlDAO userSqlDAO;
    private AdminSqlDAO adminSqlDAO;
    private SubjectSqlDAO subjectSqlDAO;
    private EnrollSubSqlDAO enrollSubSqlDAO;
    private SqlDBConnector dBConnector;
    private Connection connection;

    // To create the connection between the controllers and SqlDB tables (Workbench)
    @Override
    public void init() {
        try {
            dBConnector = new SqlDBConnector();
            connection = dBConnector.connection();
            userSqlDAO = new UserSqlDAO(connection);
            adminSqlDAO = new AdminSqlDAO(connection);
            subjectSqlDAO = new SubjectSqlDAO(connection);
            enrollSubSqlDAO = new EnrollSubSqlDAO(connection);
        } catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException | IOException ex) {
            Logger.getLogger(InitServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    // To set the values to the SqlDAO 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    try {
            HttpSession session = request.getSession();
            session.setAttribute("adminSqlDAO", adminSqlDAO);
            session.setAttribute("userSqlDAO", userSqlDAO);
            session.setAttribute("subjectSqlDAO", subjectSqlDAO);
            session.setAttribute("enrollSubSqlDAO", enrollSubSqlDAO);
        } catch (NullPointerException ex) {
            System.out.println("something went wrong");
        }
    }
    
    // To destroy the session 
    @Override
    public void destroy() {
        try {
            dBConnector.closeConnection();
        } catch (SQLException ex) {
            Logger.getLogger(InitServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
