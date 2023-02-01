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
public class DeleteServlet extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserSqlDAO userSqlDAO = (UserSqlDAO) session.getAttribute("userSqlDAO");
        String emailView = (String) session.getAttribute("emailView");

        User user = null;
        if (emailView != null) {
            try {
                user = userSqlDAO.getUser(emailView);
            } catch (SQLException ex) {
                Logger.getLogger(DeleteServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            user = (User) session.getAttribute("user");
        }

        if (user != null) {
            try {
                userSqlDAO.delete(user.getID());
            } catch (SQLException ex) {
                Logger.getLogger(DeleteServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        if (emailView != null) {
            request.getRequestDispatcher("admin.jsp").include(request, response);
        } else {
            session.invalidate();
            request.getRequestDispatcher("index.jsp").include(request, response);
        }
    }
}
