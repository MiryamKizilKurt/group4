/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.User;
import com.model.dao.UserSqlDAO;
import java.io.IOException;
import java.io.PrintWriter;
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

// To allow admin to search students by ID
public class SearchStudentServlet extends HttpServlet {

    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         HttpSession session = request.getSession();
        UserSqlDAO userSqlDAO = (UserSqlDAO) session.getAttribute("userSqlDAO");
        int ID = Integer.parseInt(request.getParameter("ID"));
        
        if(ID < 1000000 && ID > 99999){
            User user = null;
            try {
                user = userSqlDAO.getUser(ID);
                if(user != null){
                    session.setAttribute("user", user);
                    request.getRequestDispatcher("searchStudent.jsp").include(request, response);
                } else{
                    session.setAttribute("searchError", "No match found");
                    request.getRequestDispatcher("searchStudent.jsp").include(request, response);

                }

            } catch (SQLException ex) {
                Logger.getLogger(SearchStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }else {
            session.setAttribute("searchError", "Enter a valid ID");
            request.getRequestDispatcher("searchStudent.jsp").include(request, response);
        }
    }
}
