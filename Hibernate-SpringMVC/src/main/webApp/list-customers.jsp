<%--add jstl dependency first--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

<%--        call Spring Controller mapping--%>
        <input type="button" value="Add Customer"
               onclick="window.location.href='showFormForAdd'; return false"
               class="add-button"
        />


        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Action</th>
            </tr>
            <c:forEach var="item" items="${customers}">


                <c:url var="UpdateLink" value="/c/showFormForUpdate">
                    <c:param name="customerId" value="${item.id}"/>
                </c:url>
<%--                construct and "delete" link with customer id--%>
                <c:url var="DeleteLink" value="/c/delete">
                    <c:param name="customerId" value="${item.id}"/>
                </c:url>

                <tr>
                    <td> ${item.firstName}</td>
                    <td> ${item.lastName}</td>
                    <td> ${item.email}</td>
                    <td>
                        <a href="${UpdateLink}">Update</a>
                    </td>
                    <td>|</td>
                    <td>
                        <a href="${DeleteLink}" onclick="if (!(confirm('Are you sure you wanto to delete this customer?'))) return false">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>


</body>
</html>