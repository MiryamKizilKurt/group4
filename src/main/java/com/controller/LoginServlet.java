/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;


import com.model.Admin;
import com.model.dao.AdminSqlDAO;
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
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String ROLE = request.getParameter("ROLE");

        String emailRegEx = "([a-zA-Z]+)[._-]([a-zA-Z]+)@university.com";
        String passRegEx = "[a-z]{5,15}\\d{1,3}";

        UserSqlDAO userSqlDAO = (UserSqlDAO) session.getAttribute("userSqlDAO");
        AdminSqlDAO adminSqlDAO = (AdminSqlDAO) session.getAttribute("adminSqlDAO");

        User user = null;
        Admin admin = null;

        try {
            if(userSqlDAO != null){
                user = userSqlDAO.login(email, password);
                admin = adminSqlDAO.login(email, password);
            }

        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        if(!email.matches(emailRegEx) && !password.matches(passRegEx)){
            session.setAttribute("emailError", "Incorrect email format");
            session.setAttribute("passError", "Incorrect password format");
            request.getRequestDispatcher("login.jsp").include(request, response);                       
        }else if(!email.matches(emailRegEx)){               
            session.setAttribute("emailError", "Incorrect email format");
            request.getRequestDispatcher("login.jsp").include(request, response);                
        }else if(!password.matches(passRegEx)){
            session.setAttribute("passError", "Incorrect password format");
            request.getRequestDispatcher("login.jsp").include(request, response);
        }else if(user != null){
            session.setAttribute("user", user);
            request.getRequestDispatcher("user-main.jsp").include(request, response);
        
        }else if(admin != null){
            session.setAttribute("admin", admin);
            request.getRequestDispatcher("admin-main.jsp").include(request, response);
        
        }else{
            session.setAttribute("error", "Account Does not Exist!");
            request.getRequestDispatcher("login.jsp").include(request, response);
           // request.getRequestDispatcher("welcome.jsp").include(request, response);

        }
    } 

}
