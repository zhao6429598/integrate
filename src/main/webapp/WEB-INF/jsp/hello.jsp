<%--
  Created by IntelliJ IDEA.
  User: zhaoweifeng
  Date: 2019-03-17
  Time: 01:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Title</title>
    <link href="${basePath}/css/layui.css" rel="stylesheet" type="text/css"/>
    <link href="${basePath}/css/test.css" rel="stylesheet" type="text/css"/>
    <script src="${basePath}/js/layui.all.js" type="text/javascript"></script>
</head>
<body>

<div class="layui-container">
    常规布局（以中型屏幕桌面为例）：
    <div class="layui-row">
        <div class="layui-col-md9">
            你的内容 9/12
        </div>
        <div class="layui-col-md3">
            你的内容 3/12
        </div>
    </div>
</div>

<script>
    //由于模块都一次性加载，因此不用执行 layui.use() 来加载对应模块，直接使用即可：
    ;!function () {
        var layer = layui.layer
            , form = layui.form;

        layer.msg('Hello World');
    }();
</script>
</body>
</html>
