<%-- 
    Document   : SearchResults
    Created on : 23/05/2015, 1:26:14 PM
    Author     : Anthony
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Results</title>
        <link rel="stylesheet" type="text/css" href="MenuStyle.css">
    </head>
    <body>
    <center><h1>Here's some relevant results!</h1></center>
        <table border = "1" width = "200" style = "float: left">
            <tr>
                <td width = "200">
                    <b>Articles</b>
                </td>
            </tr>
            <tr>
                <td width = "119">
                    <b>Name</b>
                </td>
                <td width = "50">
                    <b>Link</b>
                </td>
            </tr>
            
            <jsp:useBean id = "articlesBeanAttributes" class = "a2.ArticlesBean"
                         scope = "session" />
            
            <%  
                List articleNameList = articlesBeanAttributes.getArticleNameList();
                List articleLinkList = articlesBeanAttributes.getArticleLinkList();
                //List articleYearList = articlesBeanAttributes.getArticleYearList();
                //List articleCategoryList = articlesBeanAttributes.getArticleCategoryList();
                
                for(int i=0; i < articleNameList.size(); i++){
                    String name = (String)articleNameList.get(i);
                    String link = (String)articleLinkList.get(i);
                    
                    out.println("<tr>");
                        out.println("<td width = 119>");
                            out.println("<t>" + name + "</t>");
                        out.println("</td>");
                        out.println("<td width = 119>");
                            out.println("<t>$" + link + "</t>");
                        out.println("</td>");
                    out.println("</tr>");
                }
            %>
        </table>
            <p><a href="/SERLER/Search.jsp">Go back!</a></p>
     </body>
</html>
