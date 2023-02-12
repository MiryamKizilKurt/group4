/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rest;
import com.model.Admin;
import com.model.Admins;
import com.model.dao.SqlDBConnector;
import com.model.dao.AdminSqlDAO;
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

@Path("adminapi")
public class AdminSqlService {
    
    // To get the list of admins
    @GET
    @Path("admins") //http://localhost:8080/group4/rest/adminapi/admins
    @Produces(MediaType.APPLICATION_XML)
    public Admins getAdmins() throws JAXBException, FileNotFoundException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, IOException {
        AdminSqlDAO adminSqlDAO = new AdminSqlDAO(new SqlDBConnector().connection());
        Admins admins = new Admins();
        admins.addAll(adminSqlDAO.getAdmins());
        return admins;
    }
    
    // To get the admin by ID
    @GET
    @Path("admin/ID/{ID}") //http://localhost:8080/group4/rest/adminapi/admin/ID/100000
    @Produces(MediaType.APPLICATION_XML)
    public Admins getAdmin(@PathParam("ID") int ID) throws JAXBException, FileNotFoundException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, IOException {
        AdminSqlDAO adminSqlDAO = new AdminSqlDAO(new SqlDBConnector().connection());
        
        Admin admin = adminSqlDAO.getAdmin(ID);
        Admins admins = new Admins();
        admins.add(admin);
        return admins;
    }
    
    // To add an admin by ID
    @GET
    @Path("addadmin") //http://localhost:8080/group4/rest/adminapi/addadmin
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public Admins addAdmin() throws JAXBException, FileNotFoundException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, IOException {
        
        AdminSqlDAO adminSqlDAO = new AdminSqlDAO(new SqlDBConnector().connection());
        Admin admin = adminSqlDAO.addAdmin("Rose", "rose.rossland@university.com", "hello123", "2000-02-02", "admin");
        Admins admins = new Admins();
        admins.add(admin);
        return admins;
    }
    
}
