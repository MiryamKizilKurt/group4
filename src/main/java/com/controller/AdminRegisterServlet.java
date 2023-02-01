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
public class AdminRegisterServlet extends HttpServlet {

    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            UserSqlDAO userSqlDAO = (UserSqlDAO) session.getAttribute("userSqlDAO");
            String emailRegEx = "([a-zA-Z]+)[._-]([a-zA-Z]+)@university.com";
            String passRegEx = "[a-z]{5,15}\\d{1,3}";
            
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");
            
            User userSql = userSqlDAO.getUser(email);
            
            
            if(!email.matches(emailRegEx) && !password.matches(passRegEx)){
                session.setAttribute("emailError", "Incorrect email format");
                session.setAttribute("passError", "Incorrect password format");
                response.sendRedirect("addStudent.jsp");                       
            }else if(!email.matches(emailRegEx)){               
                session.setAttribute("emailError", "Incorrect email format");
                response.sendRedirect("addStudent.jsp");                
            }else if(!password.matches(passRegEx)){
                session.setAttribute("passError", "Incorrect password format");
                response.sendRedirect("addStudent.jsp");                       
            }
            else if(userSql != null){
                session.setAttribute("error", "User already exists");
                request.getRequestDispatcher("addStudent.jsp").include(request, response);

            }else{
                userSqlDAO.create(name, email, password, dob);
                User user = userSqlDAO.getUser(email);
                session.setAttribute("user", user);
                request.getRequestDispatcher("addStudent.jsp").include(request, response);
           }  
            
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        };
    }

}
