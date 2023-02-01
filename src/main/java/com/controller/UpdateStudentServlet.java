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
public class UpdateStudentServlet extends HttpServlet {


    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        UserSqlDAO userSqlDAO = (UserSqlDAO) session.getAttribute("userSqlDAO");
        String emailView = request.getParameter("emailView");
        String submitted = request.getParameter("submitted");
        
        
        User user = null;

        if (submitted != null && submitted.equals("submitted")) {
            try {
                int ID = Integer.parseInt(request.getParameter("ID"));
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String dob = request.getParameter("dob");
                emailView = (String) session.getAttribute("emailView");

                if (emailView != null) {
                    user = userSqlDAO.getUser(emailView);
                } else {
                    user = (User) session.getAttribute("user");
                }

                user.update(ID, name, email, password, dob);
                userSqlDAO.update(name, password, dob, ID);
                session.setAttribute("user", user);
                

            } catch (SQLException ex) {
                Logger.getLogger(UpdateStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        session.setAttribute("user", user);
        request.getRequestDispatcher("updateStudent.jsp").include(request, response);
    }

    }

