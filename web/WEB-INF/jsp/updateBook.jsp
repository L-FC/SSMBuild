<%--
  Created by IntelliJ IDEA.
  User: LFC
  Date: 2020/3/29
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updateBook</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/book/updateBook" method="post">
    <input type="hidden" name="bookID" value="${Book.bookID}"/>
    书籍名称：<input type="text" name="bookName" value="${Book.bookName}"/><br>
    书籍数量：<input type="text" name="bookCounts" value="${Book.bookCounts}"/><br>
    书籍描述：<input type="text" name="detail" value="${Book.detail}"/><br>
    <input type="submit" value="修改"/>
</form>
</body>
</html>
