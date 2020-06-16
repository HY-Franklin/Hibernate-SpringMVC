<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

    <title>Save customer</title>
</head>
<body>

<div>
    <div>
        <h2>CRM-Customer Relational Manager</h2>
    </div>
    <div>
        <h3>Save Customer</h3>

        <form:form action="saveCustomer" modelAttribute="customer" method="post">
            <form:hidden path="id" />
            <table>
                <tbody>
                    <tr>
                        <td><label>First name:</label></td>
                        <td><form:input path="firstName"  /></td>
                    </tr>
                    <tr>
                        <td><label>Last name:</label></td>
                        <td><form:input path="lastName"  /></td>
                    </tr>
                    <tr>
                        <td><label>Email:</label></td>
                        <td><form:input path="email"  /></td>

                    </tr>
                    <tr>
                        <td><label></label></td>
                        <td><input type="submit" value="Save"></td>

                    </tr>
                </tbody>
            </table>
        </form:form>

        <div>
            <a href="${pageContext.request.contextPath}/c/list">Back to List</a>
        </div>
    </div>
</div>

</body>
</html>