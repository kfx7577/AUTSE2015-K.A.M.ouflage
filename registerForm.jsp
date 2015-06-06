<%-- 
    Document   : registerForm
    Created on : 31/03/2015, 7:39:37 PM
    Author     : Kenji(1304332) and Anthony Jansen (1251960)
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <form method="post" action="http://localhost:8080/WebAppSERLER/RegisterServlet">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Please fill in the basic information about the article here.</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Title</td>
                        <td><input type="text" name="dbTitle" value="" /></td>
                    </tr>
                    <tr>
                        <td>Authors</td>
                        <td><input type="text" name="dbAuthors" value="" /></td>
                    </tr>
                    <tr>
                        <td>Journal</td>
                        <td><input type="text" name="dbJournal" value="" />
                    </tr>
                    <tr>
                        <td>Date of publish</td>
                        <td><input type="text" name="dbDateOfPublish" value="" /></td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td><input type="text" name="dbDescription" value="" /></td>
                    </tr>
                    <tr>
                        <td>Credibility</td>
                        <td><input type="text" name="dbCredibility" value="" /></td>
                    </tr>
                    <tr>
                        <td>Rating</td>
                        <td><input type="text" name="dbRating" value="" /></td>
                    </tr>
                    <tr>
                        <td>Choose File : </td>
                        <td>
                            <input type="file" name="file_uploaded" />
                            <center><input type="submit" value="Upload"></center>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Not registering? <a href="index.jsp">Return to Home</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
