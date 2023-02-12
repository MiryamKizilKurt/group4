/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Admin;
import com.model.User;
import com.model.dao.AdminSqlDAO;
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

// To register a user(student) or admin into the sustem using appropriate regExes
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            UserSqlDAO userSqlDAO = (UserSqlDAO) session.getAttribute("userSqlDAO");
            AdminSqlDAO adminSqlDAO = (AdminSqlDAO) session.getAttribute("adminSqlDAO");
            String emailRegEx = "([a-zA-Z]+)[._-]([a-zA-Z]+)@university.com";
            String passRegEx = "[a-z]{5,15}\\d{1,3}";
            String nameRegEx = "^[a-zA-Z ]+$";

            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");
            String ROLE = request.getParameter("ROLE");
            
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
            Admin adminSql = adminSqlDAO.getAdmin(email);
            
            if(!name.matches(nameRegEx)){
                session.setAttribute("nameError", "Incorrect name format");//TODO - Create subjectError somewhere, refer AdminRegisterServlet
                response.sendRedirect("register.jsp");
            }
            else if(!email.matches(emailRegEx) && !password.matches(passRegEx)){
                session.setAttribute("emailError", "Incorrect email format");
                session.setAttribute("passError", "Incorrect password format");
                response.sendRedirect("register.jsp");                       
            }else if(!email.matches(emailRegEx)){               
                session.setAttribute("emailError", "Incorrect email format");
                response.sendRedirect("register.jsp");                
            }else if(!password.matches(passRegEx)){
                session.setAttribute("passError", "Incorrect password format");
                response.sendRedirect("register.jsp");                       
            }

            else if (userSql != null) {
               session.setAttribute("error", "Student already exists");
               request.getRequestDispatcher("register.jsp").include(request, response);
            }
            
            else if (adminSql != null) {
               session.setAttribute("error", "Admin already exists");
               request.getRequestDispatcher("register.jsp").include(request, response);
            }
            
            else if (date.before(sqlStartDate) || date.after(sqlFinalDate)) {
                session.setAttribute("dobError", "Age must be between 18 and 50 years old");
                request.getRequestDispatcher("register.jsp").include(request, response);                
                
            
            } else {
                if (ROLE.equals("student")) {
                userSqlDAO.create(name, email, password, dob, ROLE);
                User user = userSqlDAO.getRole(ROLE);
                session.setAttribute("user", user);
                request.getRequestDispatcher("login.jsp").include(request, response);
                }
                if(ROLE.equals("admin"))
                    {
                adminSqlDAO.create(name, email, password, dob, ROLE);
                Admin admin = adminSqlDAO.getRole(ROLE);
                session.setAttribute("admin", admin);
                request.getRequestDispatcher("login.jsp").include(request, response);
                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
             
        } catch (ParseException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
