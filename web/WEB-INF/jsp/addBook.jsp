<%--
  Created by IntelliJ IDEA.
  User: LFC
  Date: 2020/3/29
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addBook</title>
</head>
<body>
<h4>添加书籍</h4>
<form action="${pageContext.request.contextPath}/book/addBook" method="post">
    书籍名称：<input type="text" name="bookName"/><br>
    书籍数量：<input type="text" name="bookCounts"/><br>
    书籍描述：<input type="text" name="detail"/><br>
    <input type="submit" value="添加"/>
</form>
</body>
</html>
