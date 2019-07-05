<%--
  Created by IntelliJ IDEA.
  User: Ethel_oo
  Date: 2019/6/4
  Time: 9:59
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍列表页面</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        div .inline {
            display: inline-block;
        }
    </style>
</head>
<body>
<div class="row">
    <img class="col-md-offset-3" src="img/cart.jpg" width="10%"/>
    <div class="inline col-md-offset-1">
        <a href="/CartSelectServlet" id="bookListLengthTips"></a>
    </div>
</div>
<hr/>
<div class="row">
    <div class="col-md-4">
        <img src="${basePath}/homework_shoppingCart/img/1.jpg"/>
        <div class="col-md-offset-4">
            <button type="button" class="btn btn-default" onclick="addToCart(1)">加入购物车</button>
        </div>
    </div>
    <div class="col-md-4">
        <img src="${basePath}/homework_shoppingCart/img/2.jpg" />
        <div class="col-md-offset-2" style="display: inline-block">
            <button type="button" class="btn btn-default" onclick="addToCart(2)">加入购物车</button>
        </div>
    </div>
    <div class="col-md-4">
        <img src="${basePath}/homework_shoppingCart/img/3.jpg" />
        <div class="col-md-offset-4">
            <button type="button" class="btn btn-default" onclick="addToCart(3)">加入购物车</button>
        </div>
    </div>
</div>
<script src="https://cdn.bootcdn.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script type="text/javascript">
    function addToCart(bookNumber) {
        $.ajax({
            url: "/BookAddToCartServlet",
            data: {
                bookNumber: bookNumber
            },
            dataType: "json",
            success: function (data) {
                var count = 0;
                for (var book in data) {
                    count += data[book];
                }
                $("#bookListLengthTips").html("已采购" + count + "本书籍");
            },
            error: function (data) {
                alert(data);
            }
        });
    }
</script>
</body>
</html>
