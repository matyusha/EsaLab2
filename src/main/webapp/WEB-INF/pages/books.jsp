<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Books Page</title>
</head>
<body>

<h1>Book List</h1>

<c:if test="${!empty listBooks}">
    <table class="tg">
        <tr>
            <th width="120">Title</th>
            <th width="120">Price</th>
            <th width="120">Year</th>
            <th width="120">Authors</th>
        </tr>
        <c:forEach items="${listBooks}" var="book">
            <tr>
                <td>${book.title}</td>
                <td>${book.price}</td>
                <td>${book.year}</td>
                <c:forEach items="${book.authors}" var="auth">
                    <td>${auth.name} ${auth.surname}</td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>
