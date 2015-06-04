<%-- 
    Document   : Search
    Created on : 11/05/2015, 1:08:13 PM
    Author     : Anthony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
        <link rel="stylesheet" type="text/css" href="MenuStyle.css">
    </head>
    <body>
    <center><h1>Serler</h1></center>
        <h2></h2>
        <h3></h3>
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
        
        
        
        <table border="1">
            <h3>Popular Papers</h3>
            <tr>
                <td>1</td>
                <td><a href="/SERLER/JspOne.jsp">
            <tr>
                <td>2</td>
                <td><a href="/SERLER/JspTwo.jsp">
            <tr>
                <td>3</td>
                <td><a href="/SERLER/JspThree.jsp"></a></td>
            </tr>
            <tr>
                <td>4</td>
                <td><a href="/SERLER/JspFour.jsp">
            <tr>
                <td>5</td>
                <td><a href="/SERLER/JspFive.jsp">
            <tr>
                <td>6</td>
                <td>  - </td>
            </tr> 
            <tr>
                <td>7</td>
                <td>  - </td>
            </tr>
            <tr>
                <td>8</td>
                <td>  - </td>
            </tr>
            <tr>
                <td>9</td>
                <td>  - </td>
            </tr>
            <tr>
                <td>10</td>
                <td>  - </td>
            </tr>
        
        
        <h3>Search</h3>
        
        <form ACTION="http://localhost:8080/SERLER/ServletOne">
        
        <p>
            <h3>Search</h3>
            Paper Year:
            <select name= "year">
                <option value= "<%=NULL%>"></option>
                <option value= "2015">2015</option>
                <option value= "2014">2014</option>
                <option value= "2013">2013</option>
                <option value= "2012">2012</option>
                <option value= "2011">2011</option>
                <option value= "2010">2010</option>
                <option value= "2009">2009</option>
                <option value= "2008">2008</option>
                <option value= "2007">2007</option>
                <select/>
            
        </p>
        
        <p>
            Methology:
            <select name= "category">
                <option value= "<%=NULL%>"></option>
                <option value= "Agile">Agile</option>
                <option value= "Waterfall">Waterfall</option>
                <select/>
            
        </p>
        Paper Title:
        <input type="text" name="Title" value="" size="20" />
        
        <Input Type="SUBMIT" name="submit" value="Submit">
        
       </form2> 
                <form method="post" action="UploadFileController" enctype="multipart/form-data">
            <center>
                <table border="1" width="25%" cellpadding="5">
                    <thead> 
                            <th colspan="3">Upload File</th>        
                    </thead>
                    <tbody>
                        <tr>    
                            <td>Title : </td>
                            <td><input type="text" name="title" size="30"></td>
                        </tr>
                        <tr>
                            <td>Choose File : </td>
                            <td><input type="file" name="file_uploaded" /></td>
                        </tr>
                        <tr>
                            <td colspan="3"><center><input type="submit" value="Upload"></center></td>
                        </tr>
                    </tbody>             
                </table>
            </center>
        </form>
</html>
