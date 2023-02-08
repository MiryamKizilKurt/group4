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
 * @author 236358
 */
public class UpdateStudentServlet extends HttpServlet {


    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        UserSqlDAO userSqlDAO = (UserSqlDAO) session.getAttribute("userSqlDAO");
        String emailView = request.getParameter("emailView");
        String submitted = request.getParameter("submitted");
        String passRegEx = "[a-z]{5,15}\\d{1,3}";
        String nameRegEx = "^[a-zA-Z ]+$";
        
        
        User user = null;

        if (submitted != null && submitted.equals("submitted")) {
            try {            
                int ID = Integer.parseInt(request.getParameter("ID"));
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String dob = request.getParameter("dob");
                emailView = (String) session.getAttribute("emailView");
                
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

                if (emailView != null) {
                    user = userSqlDAO.getUser(emailView);
                } else {
                    user = (User) session.getAttribute("user");
                }
                
                if(!name.matches(nameRegEx)){
                    session.setAttribute("nameError", "Incorrect name format");//TODO - Create subjectError somewhere, refer AdminRegisterServlet
                    response.sendRedirect("updateStudent.jsp");
                }
   
                else if(!password.matches(passRegEx)){
                    session.setAttribute("passError", "5 letters, 3 numbers at least");
                    response.sendRedirect("updateStudent.jsp");                       
                }
                else if (date.before(sqlStartDate) || date.after(sqlFinalDate)) {
                    session.setAttribute("dobError", "Age 18-50 years old accepted");
                    request.getRequestDispatcher("updateStudent.jsp").include(request, response);                
                }
                else {
                    session.setAttribute("submit", "Student updated successfully");
                    user.update(ID, name, email, password, dob);
                    userSqlDAO.update(name, password, dob, ID);
                    session.setAttribute("user", user);
                    request.getRequestDispatcher("updateStudent.jsp").include(request, response);
                }

            } catch (SQLException | ParseException ex) {
                Logger.getLogger(UpdateStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        }

    }

