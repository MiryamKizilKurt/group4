/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Subject;
import com.model.dao.SubjectSqlDAO;
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

// To allow admin to search subjects by ID

public class SearchSubjectServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        SubjectSqlDAO subjectSqlDAO = (SubjectSqlDAO) session.getAttribute("subjectSqlDAO");
        String subjectID = request.getParameter("subjectID");
        
        if(!subjectID.isEmpty()){
   
            Subject subject = null;
            try {
                subject = subjectSqlDAO.getSubject(subjectID);
                if(subject != null){
                    session.setAttribute("subject", subject);
                    request.getRequestDispatcher("searchSubject.jsp").include(request, response);
                } else{
                    session.setAttribute("subjectError", "Subject with ID " + subjectID + " does not exist");
                    request.getRequestDispatcher("searchSubject.jsp").include(request, response);
                }

            } catch (SQLException ex) {
                Logger.getLogger(SearchStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }else {
            session.setAttribute("subjectError", "Enter a valid Subject ID");
            request.getRequestDispatcher("searchSubject.jsp").include(request, response);
        }
    }

   
}
