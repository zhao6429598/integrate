<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE"/>
    <title>大众点评后台管理</title>
    <link rel="stylesheet" href="${basePath}/css/index.css" type="text/css"/>
    <link href="${basePath}/css/layui.css" rel="stylesheet" type="text/css"/>
    <script src="${basePath}/js/layui.js" type="text/javascript"></script>
    <script src="${basePath}/js/common/jquery-1.8.3.js" type="text/javascript"></script>



</head>
<body>

<div class="container">

    <div id="head" class="layui-bg-black">
        <ul class="layui-nav">
            <div style="float: right;">
                <li class="layui-nav-item">
                    <a href="">控制台<span class="layui-badge">9</span></a>
                </li>
                <li class="layui-nav-item">
                    <a href="">个人中心<span class="layui-badge-dot"></span></a>
                </li>
                <li class="layui-nav-item">
                    <a href=""><img src="//t.cn/RCzsdCq" class="layui-nav-img">我</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">修改信息</a></dd>
                        <dd><a href="javascript:;">安全管理</a></dd>
                        <dd><a href="javascript:;">退了</a></dd>
                    </dl>
                </li>
            </div>

        </ul>

    </div>

    <div id="content">
        <div id="left" class="layui-col-md1">

            <ul class="layui-nav layui-nav-tree " lay-filter="test" style="height: 100%;width: 100%;">
                <!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
                <li class="layui-nav-item" >
                    <a href="javascript:;">广告管理</a>
                    <dl class="layui-nav-child">
                        <dd><a data="/ad" href="javascript:void(0)" onclick="navchick(this)">展示</a></dd>
                        <dd><a data="/ad/adAdd" href="javascript:void(0)" onclick="navchick(this)">添加</a></dd>
                        <dd><a data="/ad/adModify" href="javascript:void(0)" onclick="navchick(this)">修改</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">解决方案</a>
                    <dl class="layui-nav-child">
                        <dd><a href="">移动模块</a></dd>
                        <dd><a href="">后台模版</a></dd>
                        <dd><a href="">电商平台</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">产品</a></li>
                <li class="layui-nav-item"><a href="">大数据</a></li>
            </ul>


        </div>
        <div id="right" class="layui-col-md11">


                <div class="layui-tab" lay-allowClose="true" lay-filter="test1">
                    <ul class="layui-tab-title">
                        <%--<li class="layui-this" lay-id="111" >文章列表</li>--%>
                        <%--<li lay-id="222">发送信息</li>--%>
                        <%--<li lay-id="333">权限分配</li>--%>
                        <%--<li lay-id="444">审核</li>--%>
                        <%--<li lay-id="555">订单管理</li>--%>
                    </ul>
                    <div class="layui-tab-content" >
                        <%--<div class="layui-tab-item layui-show"><iframe id="mainPage1" src="http://www.baidu.com" frameborder="0" height="100%" width="100%"></iframe></div>--%>
                        <%--<div class="layui-tab-item"><iframe id="mainPage2" src="http://www.baidu.com" frameborder="0" height="100%" width="100%"></iframe></div>--%>
                        <%--<div class="layui-tab-item"><iframe id="mainPage3" src="http://www.baidu.com" frameborder="0" height="100%" width="100%"></iframe></div>--%>
                        <%--<div class="layui-tab-item"><iframe id="mainPage4" src="http://www.baidu.com" frameborder="0" height="100%" width="100%"></iframe></div>--%>
                        <%--<div class="layui-tab-item"><iframe id="mainPage5" src="http://www.baidu.com" frameborder="0" height="100%" width="100%"></iframe></div>--%>
                    </div>

                </div>


            <%--<div id="right_main">--%>
                <%--<iframe id="mainPage" src="http://www.baidu.com" frameborder="0" height="100%" width="100%"></iframe>--%>
            <%--</div>--%>

        </div>

    </div>

    <div id="footer">footer</div>
</div>


</body>
<script>

    var element;
    layui.use('element', function(){
        element = layui.element;

        //获取hash来切换选项卡，假设当前地址的hash为lay-id对应的值

        // var layid = location.hash.replace(/^#test1=/, '');
        // element.tabChange('test1', layid); //假设当前地址为：http://a.com#test1=222，那么选项卡会自动切换到“发送消息”这一项
        //
        //监听导航点击
        element.on('nav(test)', function(elem){

        });
    });



    /*
       点击左侧导航条进行切换！item中data属性包含对应要跳转的路径！
       添加右侧对应的切换tab！并且添加添加显示内容对应的iframe!
       添加之前先要进行判断是否存在，tab id使用data属性设置！如果存在tabchange
       如果不存在！添加！并显示状态class="layui-this"
     */
    function navchick(item) {

        var data =  $(item).attr('data');  //获取的data属性

        var text =  $(item).text();  //获取文本内容

        console.log('data:'+data)
        console.log("text:"+text)

        //查看data作为id是否出现 如果出现就切换  没有出现就添加

        var titleli_list = $(".layui-tab-title li");

        var exist = false;  //默认不存在

        titleli_list.each(function(){

            var temp = $(this).attr("lay-id");

            if (temp == data) {
                exist = true;
                return false;
            }

        });

        console.log(exist)

        if(exist){
            //如果存在，切换到对应位置即可

              //切换
        }else{
            var iframe_id = 'i'+data;   //id
            var iframe_src = '${basePath}'+data;//src内容

            //如果不存在，创建内容内别换显示
            //创建并切换
            element.tabAdd('test1',{
                title:text,
                id:data,
                content:"<iframe id='+' src='-' frameborder=\"0\" height=\"100%\" width=\"100%\"></iframe>".replace('+',iframe_id).replace('-',iframe_src)
            });
        }

        element.tabChange('test1', data);


    }



</script>
</html>