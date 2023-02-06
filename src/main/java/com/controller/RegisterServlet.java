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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 236349
 */
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            UserSqlDAO userSqlDAO = (UserSqlDAO) session.getAttribute("userSqlDAO");

            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");
            
            // To apply the dob interval between 18 and 50 yo
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date date = formatter.parse(dob);
            java.sql.Date sqlDate = new java.sql.Date(date.getTime()); 
            // Parses the start valid birth date
            java.util.Date dt1 = formatter.parse("1972-02-06");
            java.sql.Date sqlStartDate = new java.sql.Date(dt1.getTime()); 
            // Parses the final valid birth date
            java.util.Date dt2 = formatter.parse("2005-02-05");
            java.sql.Date sqlFinalDate = new java.sql.Date(dt2.getTime()); 
            
            
            User userSql = userSqlDAO.getUser(email);

            if (userSql != null) {
               session.setAttribute("error", "User already exists");
               request.getRequestDispatcher("register.jsp").include(request, response);
            }
            
            if (date.before(sqlStartDate) || date.after(sqlFinalDate)) {
                session.setAttribute("dobError", "Age must be between 18 and 50 years old");
                request.getRequestDispatcher("register.jsp").include(request, response);                
                
            
            } else {

                userSqlDAO.create(name, email, password, dob);
                User user = userSqlDAO.getUser(email);
                session.setAttribute("user", user);
                request.getRequestDispatcher("login.jsp").include(request, response);
            }

        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
             
        } catch (ParseException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
