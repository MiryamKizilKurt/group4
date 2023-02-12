/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.User;
import com.model.dao.UserSqlDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 236358
 */

// To allow admin to click on the student email for CRUD operations using SqlDB table
public class ClickEmailLink extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = null;
        UserSqlDAO userSqlDAO = (UserSqlDAO) session.getAttribute("userSqlDAO");
        
        String email = request.getParameter("email");
        
        System.out.println("emailView = "+ email);
        if (email != null) {
            
            try {
                user = userSqlDAO.getUser(email);
                session.setAttribute("emailView", email);
            } catch (SQLException ex) {
                Logger.getLogger(ClickEmailLink.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            user = (User) session.getAttribute("user");
        }
        session.setAttribute("user", user);
        request.getRequestDispatcher("updateStudent.jsp").include(request, response);
    }

}
