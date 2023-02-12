/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rest;

import com.model.Subject;
import com.model.User;
import com.model.Users;
import com.model.dao.EnrollSubSqlDAO;
import com.model.dao.SqlDBConnector;
import com.model.dao.UserSqlDAO;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.xml.bind.JAXBException;

/**
 *
 * @author 236349
 */
@Path("enrollapi")
public class EnrollSubjectSqlService {
    
    @GET
    @Path("enrolledSubs") //http://localhost:8080/group4/rest/enrollapi/enrolledSubs?ID=100000
    @Produces(MediaType.APPLICATION_XML)
    public Users fetchUser(@QueryParam("ID") int ID) throws JAXBException, FileNotFoundException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, IOException {
        UserSqlDAO userSqlDAO = new UserSqlDAO(new SqlDBConnector().connection());
        EnrollSubSqlDAO enrollSubSqlDAO = new EnrollSubSqlDAO(new SqlDBConnector().connection());
        
        User user = userSqlDAO.getUser(ID);
        List<Subject> subjects = enrollSubSqlDAO.getEnrolledSubs(ID);
        user.setSubjects(subjects);
        Users users = new Users();
        users.add(user);
        return users;
    }
    
    @GET
    @Path("enrollSub") //http://localhost:8080/group4/rest/enrollapi/enrollSub
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public Users enrollSubject() throws JAXBException, FileNotFoundException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, IOException {        
        UserSqlDAO userSqlDAO = new UserSqlDAO(new SqlDBConnector().connection());
        EnrollSubSqlDAO enrollSubSqlDAO = new EnrollSubSqlDAO(new SqlDBConnector().connection());
        User user = enrollSubSqlDAO.enrollSubjectWS("100015", "Java EE", "MySql", "Php", "HTML");
        Users users = new Users();
        users.add(user);
        return users;
    }
    
}
