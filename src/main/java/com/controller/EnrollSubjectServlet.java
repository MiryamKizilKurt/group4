/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.User;
import com.model.dao.SubjectSqlDAO;
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
public class EnrollSubjectServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
            HttpSession session = request.getSession();
            
            SubjectSqlDAO subjectSqlDAO = (SubjectSqlDAO) session.getAttribute("subjectSqlDAO");
            User user = (User) session.getAttribute("user");
            
            String subject1 = request.getParameter("subject1");//TODO - somewhere need to do setParameter
            String subject2 = request.getParameter("subject2");
            String subject3 = request.getParameter("subject3");//TODO - somewhere need to do setParameter
            String subject4 = request.getParameter("subject4");
            
   
            try {
                if(subjectSqlDAO.getEnrollSubject(user.getID()) != null){
                    session.setAttribute("subjectError", "Four Subjects already exists");
                    request.getRequestDispatcher("enrollSubject.jsp").include(request, response);
                     
                }else if(subject1.equals(subject2) || subject1.equals(subject3) || subject1.equals(subject4)){
                    session.setAttribute("subjectError", "Subject one is repeated");
                    request.getRequestDispatcher("enrollSubject.jsp").include(request, response);
                }
                else if(subject2.equals(subject1) || subject2.equals(subject3) || subject2.equals(subject4)){
                    session.setAttribute("subjectError", "Subject two is repeated");
                    request.getRequestDispatcher("enrollSubject.jsp").include(request, response);
                }
                else if(subject3.equals(subject2) || subject3.equals(subject1) || subject3.equals(subject4)){
                    session.setAttribute("subjectError", "Subject three is repeated");
                    request.getRequestDispatcher("enrollSubject.jsp").include(request, response);
                }
                else if(subject4.equals(subject2) || subject4.equals(subject3) || subject4.equals(subject1)){
                    session.setAttribute("subjectError", "Subject four is repeated");
                    request.getRequestDispatcher("enrollSubject.jsp").include(request, response);
                }
                else {
                    subjectSqlDAO.enrollSubject(user.getID(), subject1, subject2,subject3,subject4);
                    session.setAttribute("subjectError", "Subjects added successfully");
                    session.setAttribute("user", user);
                    request.getRequestDispatcher("enrollSubject.jsp").include(request, response);
                }
                
            } catch (SQLException ex) {
                Logger.getLogger(EnrollSubjectServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            
    }

}
