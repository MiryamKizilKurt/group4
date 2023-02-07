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
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 236356
 */
public class DeleteSubjectServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            HttpSession session = request.getSession();
            
            SubjectSqlDAO subjectSqlDAO = (SubjectSqlDAO) session.getAttribute("subjectSqlDAO");
            
            int deleteSubjectID = Integer.parseInt(request.getParameter("deleteSubjectID"));
            
            Subject subjectSql = subjectSqlDAO.getSubject(deleteSubjectID);

             if(subjectSql == null){
                session.setAttribute("subjectError", " Subject ID " + deleteSubjectID +  " does not exists");
                request.getRequestDispatcher("deleteSubject.jsp").include(request, response);
                
            }else{
                subjectSqlDAO.delete(deleteSubjectID);
                Subject subject = subjectSqlDAO.getSubject(deleteSubjectID);
                session.setAttribute("subject", subject);
                session.setAttribute("subjectError", "Subject deleted successfully");
                request.getRequestDispatcher("deleteSubject.jsp").include(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CreateSubjectServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
       }

}
