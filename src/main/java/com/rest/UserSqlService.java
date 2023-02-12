/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rest;
import com.model.User;
import com.model.Users;
import com.model.dao.SqlDBConnector;
import com.model.dao.UserSqlDAO;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.xml.bind.JAXBException;

/**
 *
 * @author 236349
 */

// API calls for user(student) object

@Path("userapi")
public class UserSqlService {
    
    @GET
    @Path("users") //http://localhost:8080/group4/rest/userapi/users
    @Produces(MediaType.APPLICATION_XML)
    public Users getUsers() throws JAXBException, FileNotFoundException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, IOException {
        UserSqlDAO userSqlDAO = new UserSqlDAO(new SqlDBConnector().connection());
        Users users = new Users();
        users.addAll(userSqlDAO.getUsers());
        return users;
    }
    
    // To get the list of students(users)
    @GET
    @Path("user/ID/{ID}") //http://localhost:8080/group4/rest/userapi/user/ID/100000
    @Produces(MediaType.APPLICATION_XML)
    public Users getUser(@PathParam("ID") int ID) throws JAXBException, FileNotFoundException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, IOException {
        UserSqlDAO userSqlDAO = new UserSqlDAO(new SqlDBConnector().connection());
        
        User user = userSqlDAO.getUser(ID);
        Users users = new Users();
        users.add(user);
        return users;
    }
    
    // To add a user(student) by ID
    @GET
    @Path("adduser") //http://localhost:8080/group4/rest/userapi/adduser
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public Users addUser() throws JAXBException, FileNotFoundException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, IOException {
        
        UserSqlDAO userSqlDAO = new UserSqlDAO(new SqlDBConnector().connection());
        User user = userSqlDAO.addUser("Terry Fox", "terry.fox@university.com", "hello126", "2000-02-02", "student");
        Users users = new Users();
        users.add(user);
        return users;
    }
    
}
