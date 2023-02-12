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
// To do CRUD operations by admin on subjects
public class DeleteEnrollSubServlet extends HttpServlet {

    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       HttpSession session = request.getSession();
       try{    
            EnrollSubSqlDAO enrollSubSqlDAO = (EnrollSubSqlDAO) session.getAttribute("enrollSubSqlDAO");
            User user = (User) session.getAttribute("user");
            
            String subject1 = request.getParameter("subject1");
            String subject2 = request.getParameter("subject2");
            String subject3 = request.getParameter("subject3");
            String subject4 = request.getParameter("subject4");
            
            Subject subject = enrollSubSqlDAO.getEnrollSubject(user.getID());
            System.out.println(subject.getSubject1());
            
                if(subject1 != null){
                    session.setAttribute("delelteEnrollSubError", "Subject 1 deleted successfully");
                    enrollSubSqlDAO.deleteSub(user.getID(), subject1);
                    session.setAttribute("subject", subject);
                    request.getRequestDispatcher("deleteEnrollSub.jsp").include(request, response);
                    
                }
                
                if(subject2 != null){
                    session.setAttribute("delelteEnrollSubError", "Subject 2 deleted successfully");
                    enrollSubSqlDAO.deleteSub(user.getID(), subject2);
                    session.setAttribute("subject", subject);
                    request.getRequestDispatcher("deleteEnrollSub.jsp").include(request, response);
                   
                }
                if(subject3 != null){
                    session.setAttribute("delelteEnrollSubError", "Subject 3 deleted successfully");
                    enrollSubSqlDAO.deleteSub(user.getID(), subject3);
                    session.setAttribute("subject", subject);
                     request.getRequestDispatcher("deleteEnrollSub.jsp").include(request, response);
                     
                }
                if(subject4 != null){
                    session.setAttribute("delelteEnrollSubError", "Subject 4 deleted successfully");
                    enrollSubSqlDAO.deleteSub(user.getID(), subject4);
                    session.setAttribute("subject", subject);
                    request.getRequestDispatcher("deleteEnrollSub.jsp").include(request, response);
                }
           
     
        } catch (SQLException ex) {
            Logger.getLogger(DeleteEnrollSubServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
}
