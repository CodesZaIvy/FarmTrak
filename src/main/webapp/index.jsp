<%@ page import="com.farmtrak.Produce" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Produce List</title>
</head>
<body>
    <h2>Produce List</h2>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Quantity</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="produce" items="${produceList}">
                <tr>
                    <td>${produce.name}</td>
                    <td>${produce.quantity}</td>
                    <td>${produce.price}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
