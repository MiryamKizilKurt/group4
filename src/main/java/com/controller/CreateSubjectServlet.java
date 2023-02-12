/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Subject;
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
 * @author 236356
 */

// To create subjects as an admin 
public class CreateSubjectServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            HttpSession session = request.getSession();
            
            SubjectSqlDAO subjectSqlDAO = (SubjectSqlDAO) session.getAttribute("subjectSqlDAO");
            String subjectNameRegEx = "^[a-zA-Z]+[\\/\\- .]?[a-zA-Z]+";
            
            String subjectName = request.getParameter("subjectName");
            String subjectDesc = request.getParameter("subjectDesc");
            
            Subject subjectSql = subjectSqlDAO.getSubject(subjectName);
            
            if(subjectName.isEmpty()){
            session.setAttribute("subjectError", "Subject name cannot be empty");
            response.sendRedirect("createSubject.jsp");
            }
            
            if(!subjectName.matches(subjectNameRegEx)){
                session.setAttribute("subjectError", " "+subjectName+" - Incorrect Subject format");
                response.sendRedirect("createSubject.jsp");
            }
            else if(subjectSql != null){
                session.setAttribute("subjectError", "Subject already exists");
                request.getRequestDispatcher("createSubject.jsp").include(request, response);
                
            }else if (subjectDesc.isEmpty()) {
                session.setAttribute("subjectError", "Subject Description cannot be empty");
                request.getRequestDispatcher("createSubject.jsp").include(request, response);
            }
            else{
                subjectSqlDAO.create(subjectName, subjectDesc);
                Subject subject = subjectSqlDAO.getSubject(subjectName);
                session.setAttribute("subject", subject);
                session.setAttribute("subjectError", "Subject created successfully");
                request.getRequestDispatcher("createSubject.jsp").include(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CreateSubjectServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
       }
    }