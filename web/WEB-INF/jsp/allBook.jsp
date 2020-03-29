<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>allBook</title>
</head>
<body>
<h3>书籍列表</h3>
<hr>
<table>
    <tr>
        <th>书籍编号</th>
        <th>书籍名称</th>
        <th>书籍数量</th>
        <th>书籍描述</th>
    </tr>
    <c:forEach var="book" items="${list}">
        <tr>
            <td>${book.bookID}</td>
            <td>${book.bookName}</td>
            <td>${book.bookCounts}</td>
            <td>${book.detail}</td>
            <td>
                <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.bookID}">修改</a>
                &nbsp; | &nbsp;
                <a href="${pageContext.request.contextPath}/book/deleteBook?id=${book.bookID}">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
