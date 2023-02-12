/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Subject;
import com.model.User;
import com.model.dao.EnrollSubSqlDAO;
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
 * @author 236325
 */

// To allow the user(student) to update the enrolled subject/subjects
public class UpdateEnrollSubServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            
            
            EnrollSubSqlDAO enrollSubSqlDAO = (EnrollSubSqlDAO) session.getAttribute("enrollSubSqlDAO");
            User user = (User) session.getAttribute("user");
            
            String subject1 = request.getParameter("subject1");
            String subject2 = request.getParameter("subject2");
            String subject3 = request.getParameter("subject3");
            String subject4 = request.getParameter("subject4");
         
                 
                
                if(enrollSubSqlDAO.getEnrollSubject(user.getID()) != null){
                     
                   if(subject1.equals(subject2) || subject1.equals(subject3) || subject1.equals(subject4)){
                        session.setAttribute("subjectError", "Subject one is repeated");
                        request.getRequestDispatcher("enrollSubsUpdate.jsp").include(request, response);
                    }
                    else if(subject2.equals(subject1) || subject2.equals(subject3) || subject2.equals(subject4)){
                        session.setAttribute("subjectError", "Subject two is repeated");
                        request.getRequestDispatcher("enrollSubsUpdate.jsp").include(request, response);
                    }
                    else if(subject3.equals(subject2) || subject3.equals(subject1) || subject3.equals(subject4)){
                        session.setAttribute("subjectError", "Subject three is repeated");
                        request.getRequestDispatcher("enrollSubsUpdate.jsp").include(request, response);
                    }
                    else if(subject4.equals(subject2) || subject4.equals(subject3) || subject4.equals(subject1)){
                        session.setAttribute("subjectError", "Subject four is repeated");
                        request.getRequestDispatcher("enrollSubsUpdate.jsp").include(request, response);
                    }            
                    else {
                        enrollSubSqlDAO.updateEnrollSub(subject1, subject2, subject3, subject4, user.getID());
                        Subject subject = enrollSubSqlDAO.getEnrolledSubjects(user.getID());
                        session.setAttribute("subject", subject);
                        session.setAttribute("subjectError", "Subjects updated successfully");
                        request.getRequestDispatcher("enrollSubsUpdate.jsp").include(request, response);
                    }
                   
                }else {
                    session.setAttribute("subjectError", "Something is not right!");
                }
        } catch (SQLException ex) {
            Logger.getLogger(CreateSubjectServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
