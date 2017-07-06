<%--
  Created by IntelliJ IDEA.
  User: 林进华
  Date: 2017/7/1
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>RunJS</title>
    <script type="text/javascript" src="http://sandbox.runjs.cn/uploads/rs/289/za0sqcyf/jquery-1.6.min.js"></script>
    <script type="text/javascript">
        var t = 3; //设置一个跳转秒数

        $(function(){
            setInterval("count()",1000); //定义一个定时器
            $("#timeCount").html(t); //显示当前的秒数
        });

        function count(){
            t --; //秒数自减
            if(t >= 0){
                $("#timeCount").html(t); //刷新当前的秒数，重新显示秒数

            }else{
                clearInterval();//这个可以不用，因为页面都要跳转了，要了也没多大差别
                window.location.href="${pageContext.request.contextPath }/rigister1.jsp"; // 设置跳转的链接
            }

        }
    </script>
</head>
<body>
<div style="height:105px;line-height:105px;overflow:hidden;text-align:center">
<span style="font-size:50px;color:green;font-weight:bold;">
${registerSuccess}，
</span>
<span id="timeCount" style="font-size:50px;color:red">
</span>
    <span style="font-size:50px;color:green;font-weight:bold;">
秒后返回注册页面。
</span>
</div>
</body>
</html>
