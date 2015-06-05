<%-- 
    Document   : Search
    Created on : 11/05/2015, 1:08:13 PM
    Author     : matt cho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>
    <body>
    <center><h1>Serler</h1></center>
        <%@ page import = "javax.servlet.RequestDispatcher" %>
        <%! private final String SELECT= "select"; %>
        <%! private final String NULL= "null"; %>
        <%
            //String searchArticle = request.getParameter("searcharticle");
            String yearSelected = request.getParameter("year");
            String categorySelected = request.getParameter("category");
            //if(searchArticle == null)
                //searchArticle = "";
            if(yearSelected != null && categorySelected != null)
            {
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("SERLER/ServletOne");
                dispatcher.forward(request, response);
            }
        %>
        <hr>
       <form method="post" action="http://localhost:8080/AutomotiveWebpage/RegisterServlet">
            <left>
            <table border="1" width="10%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Bibliography Information</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Author</td>
                        <td><input type="text" name="dbAuthor" value="" /></td>
                        <td>Year</td>
                        <td><input type="text" name="dbYear" value=""/></td>
                        <td>Title</td>
                        <td><input type="text" name="dbTitle" value="" /></td>
                        <td>Journal</td>
                        <td><input type="text" name="dbJournal" value="" />
                    </tr>
                    <tr>
                        
                    </tr>
                             
                    </tr>
                    <tr>
                        <td>Credability</td>
                        <td><input type="text" name="dbCredability" value="" /></td>
                    </tr>
                    <tr>
                        <td>Rating</td>
                        <td><input type="radio" name="rating" value="1" class="star"></td>
                        <td><input type="radio" name="rating" value="2" class="star"></td>
                        <td><input type="radio" name="rating" value="3" class="star"></td>
                        <td><input type="radio" name="rating" value="4" class="star"></td>
                        <td><input type="radio" name="rating" value="5" class="star"></td>
                    </tr>
                    <tr>
                        <td>Reason</td>
                        <td><input type="text" name="dbReason" value="" /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                    </tr>
                </tbody>
            </table>
</html>
