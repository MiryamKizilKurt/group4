/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.User;
import com.model.dao.UserSqlDAO;
import java.io.IOException;
import java.sql.Date;
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
            String nameRegEx = "^[a-zA-Z ]+$";
             
            
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");
            String ROLE = request.getParameter("ROLE");
            
             // To apply the dob interval between 18 and 50 yo
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date date,dt1, dt2;
            java.sql.Date sqlStartDate, sqlFinalDate;
            
            date = formatter.parse(dob);
            //sqlDate = new java.sql.Date(date.getTime()); 
            // Parses the start valid birth date
            dt1 = formatter.parse("1972-02-06");
            sqlStartDate = new java.sql.Date(dt1.getTime()); 
            // Parses the final valid birth date
            dt2 = formatter.parse("2005-02-05");
            sqlFinalDate = new java.sql.Date(dt2.getTime());
            
            
            
            User userSql = userSqlDAO.getUser(email);
            
            if(!name.matches(nameRegEx)){
                session.setAttribute("nameError", "Incorrect name format");//TODO - Create subjectError somewhere, refer AdminRegisterServlet
                response.sendRedirect("addStudent.jsp");
            }
            else if(!email.matches(emailRegEx) && !password.matches(passRegEx)){
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
            else if (date.before(sqlStartDate) || date.after(sqlFinalDate)) {
                session.setAttribute("dobError", "Age must be between 18 and 50 years old");
                request.getRequestDispatcher("addStudent.jsp").include(request, response);                
            }
            else if(userSql != null){
                session.setAttribute("error", "User already exists");
                request.getRequestDispatcher("addStudent.jsp").include(request, response);

            }else{
                session.setAttribute("error", "Student added success");
                userSqlDAO.create(name, email, password, dob, ROLE);
                User user = userSqlDAO.getUser(email);
                session.setAttribute("user", user);
                request.getRequestDispatcher("addStudent.jsp").include(request, response);
           }  
            
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(AdminRegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
;
    }

}
