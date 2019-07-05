<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ethel_oo
  Date: 2019/6/4
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物车列表</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<c:forEach items="${map}" var="book">
    <div class="row">
        <div class="col-md-4">
            <img src="${basePath}/homework_shoppingCart/img/${book.key}.jpg" />
        </div>
        <div class="col-md-4">
            共${book.value}本
        </div>
    </div>
    <hr/>
</c:forEach>

</body>
</html>
