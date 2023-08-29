<%-- 
    Document   : show_users
    Created on : 29-Aug-2023, 2:37:09 pm
    Author     : Ritik Mondal
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>show_users</title>

        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    </head>
    <body>

        <div>
            <div class="container center-align">
                <div class="row">
                    <div class="col m6 offset-m3">
                        <div class="card "> 
                            <div class="card-content">

                                <h3>All users are </h3>
                                <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/form" user="root" password="Asdfghjkl12." var="ds"></sql:setDataSource>
                                <sql:query dataSource="${ds}" var="rs">SELECT * FROM form.user;</sql:query>


                                    <table>
                                        <thead>
                                            <tr>
                                                <th>User ID</th>
                                                <th>User Name</th>
                                                <th>Email Address</th>
                                            </tr>
                                        </thead>

                                        <tbody>

                                        <c:forEach items="${rs.rows}" var="row">
                                            <tr>
                                                <td><c:out value="${row.id}"></c:out></td>
                                                <td><c:out value="${row.name}"></c:out></td>
                                                <td><c:out value="${row.email}"></c:out></td>

                                                </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div><!-- comment -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
