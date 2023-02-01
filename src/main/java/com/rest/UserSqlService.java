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
 * @author 236358
 */
@Path("sqlapi")
public class UserSqlService {
    
    @GET
    @Path("users") //http://localhost:8080/labs/rest/sqlapi/users
    @Produces(MediaType.APPLICATION_XML)
    public Users getUsers() throws JAXBException, FileNotFoundException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, IOException {
        UserSqlDAO userSqlDAO = new UserSqlDAO(new SqlDBConnector().connection());
        Users users = new Users();
        users.addAll(userSqlDAO.getUsers());
        return users;
    }
    
    @GET
    @Path("user/ID/{ID}") //http://localhost:8080/labs/rest/sqlapi/user/ID/100000
    @Produces(MediaType.APPLICATION_XML)
    public Users getUser(@PathParam("ID") int ID) throws JAXBException, FileNotFoundException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, IOException {
        UserSqlDAO userSqlDAO = new UserSqlDAO(new SqlDBConnector().connection());
        
        User user = userSqlDAO.getUser(ID);
        Users users = new Users();
        users.add(user);
        return users;
    }
}
