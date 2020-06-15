<%--add jstl dependency first--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>List-customers</title>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>CRM-Customer Relational Manager</h2>
    </div>
</div>

<div id="container">
    <div id="content">
        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
            </tr>
            <c:forEach var="item" items="${customers}">
                <tr>
                    <td> ${item.firstName}</td>
                    <td> ${item.lastName}</td>
                    <td> ${item.email}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>


</body>
</html>