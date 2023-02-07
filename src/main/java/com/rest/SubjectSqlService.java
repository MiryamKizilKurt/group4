/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rest;

import com.model.Subject;
import com.model.Subjects;
import com.model.dao.SqlDBConnector;
import com.model.dao.SubjectSqlDAO;
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
@Path("subjectapi")
public class SubjectSqlService {
     
    @GET
    @Path("subjects") //http://localhost:8080/group4/rest/subjectapi/subjects
    @Produces(MediaType.APPLICATION_XML)
    public Subjects getSubjects() throws JAXBException, FileNotFoundException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, IOException {
        SubjectSqlDAO subjectSqlDAO = new SubjectSqlDAO(new SqlDBConnector().connection());
        Subjects subjects = new Subjects();
        subjects.addAll(subjectSqlDAO.getSubjects());
        return subjects;
    }
    
    @GET
    @Path("subject/ID/{ID}") //http://localhost:8080/group4/rest/subjectapi/subject/ID/1000
    @Produces(MediaType.APPLICATION_XML)
    public Subjects getSubject(@PathParam("ID") int ID) throws JAXBException, FileNotFoundException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, IOException {
        SubjectSqlDAO subjectSqlDAO = new SubjectSqlDAO(new SqlDBConnector().connection());
        
        Subject subject = subjectSqlDAO.getSubject(ID);
        Subjects subjects = new Subjects();
        subjects.add(subject);
        return subjects;
    }
    
    @GET
    @Path("createSubject")//http://localhost:8080/group4/rest/subjectapi/createSubject
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public Subjects createSubject() throws JAXBException, FileNotFoundException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, IOException {
        SubjectSqlDAO subjectSqlDAO = new SubjectSqlDAO(new SqlDBConnector().connection());
        Subject subject = subjectSqlDAO.createSubject("Business Management", "This subject is about BM skills");
        Subjects subjects = new Subjects();
        subjects.add(subject);
        return subjects;
    }
}
