/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
    Document   : Register Servlet
    Author     : Kenji(1304332) and Anthony Jansen (1251960)
*/

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kenji
 */
public class RegisterServlet extends HttpServlet {

    private Connection connect;
    private PreparedStatement state;
    String dbTitle, dbAuthors, dbJournal, dbDateOfPublish, dbDescription,
            dbCredibility, dbRating;

    public RegisterServlet() throws IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter write = response.getWriter();
        response.setContentType("text/html");
        dbTitle = request.getParameter("dbTitle");
        dbAuthors = request.getParameter("dbAuthors");
        dbJournal = request.getParameter("dbJournal");
        dbDateOfPublish = request.getParameter("dbDateOfPublish");
        dbDescription = request.getParameter("dbDescription");
        dbCredibility = request.getParameter("dbCredibility");
        dbRating = request.getParameter("dbRating");
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Properties properties = new Properties();
            properties.loadFromXML(getClass().getResourceAsStream("SERLERServletConfig.xml"));
            String dbDriver = properties.get("dbDriver").toString();
            String dbUrl = properties.get("dbUrl").toString();
            //username and password to access the database
            String userName = properties.get("user").toString();
            String passWord = properties.get("pass").toString();
            connect = DriverManager.getConnection(dbUrl, userName, passWord);
            state = connect.prepareStatement("INSERT INTO DOCUMENT_ARTICLE (TITLE, AUTHORS, JOURNAL, DATE_OF_PUBLISH, DESCRIPTION, CREDIBILITY, RATING) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
            state.setString(1, dbTitle);
            state.setString(2, dbAuthors);
            state.setString(3, dbJournal);
            state.setString(4, dbDateOfPublish);
            state.setString(5, dbDescription);
            state.setString(6, dbCredibility);
            state.setString(7, dbRating);
            int update = state.executeUpdate();
            if (update > 0) {
                write.print("Registration successful");
                RequestDispatcher dispatcher = getServletContext().
                        getRequestDispatcher("/index.jsp");
                dispatcher.forward(request, response);

            } else {
                RequestDispatcher dispatcher = getServletContext().
                        getRequestDispatcher("/registerForm.jsp");
                dispatcher.forward(request, response);
            }
        } catch (Exception e) {
            write.close();
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
