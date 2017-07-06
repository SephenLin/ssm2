<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>管理员登陆</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="${pageContext.request.contextPath }/allresources/admin/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/allresources/admin/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/allresources/admin/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/allresources/admin/css/templatemo_style.css" rel="stylesheet" type="text/css">
    <!--
    表单验证神器
    -->
    <link href="${pageContext.request.contextPath }/allresources/admin/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath }/allresources/admin/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/allresources/admin/js/bootstrapValidator.min.js"></script>
    <link href="${pageContext.request.contextPath }/allresources/admin/css/bootstrapValidator.min.css" rel="stylesheet" />

</head>
<body class="templatemo-bg-gray">
<div class="container">
    <div class="col-md-12">
        <h1 class="margin-bottom-15">欢迎登陆</h1>
        <form action="${pageContext.request.contextPath }/admin/login.action" id="loginForm" class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form" method="post">
            <div class="form-group">
                <div class="col-xs-12">
                    <div class="control-wrapper">
                        <label for="account" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>
                        <input type="text" name="account" class="form-control" id="account" placeholder="账号">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-12">
                    <div class="control-wrapper">
                        <label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
                        <input type="password" name="password" class="form-control" id="password" placeholder="密码">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-12">
                    <div class="checkbox control-wrapper">
                        <label>
                            <input type="checkbox" name="remember" value="1"> 记住密码
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-12">
                    <div class="control-wrapper">
                        <button type="submit" class="btn btn-default">登录</button>
                        <a href="${pageContext.request.contextPath }/admin/forgetPassword.action" class="text-right pull-right">忘记密码?点我</a>
                    </div>
                </div>
            </div>
            <hr>
            <div class="form-group">
                <div class="col-md-12">
                    <label>可以选择以下登陆方式: </label>
                    <div class="inline-block">
                        <a href="#"><i class="fa fa-facebook-square login-with"></i></a>
                        <a href="#"><i class="fa fa-twitter-square login-with"></i></a>
                        <a href="#"><i class="fa fa-google-plus-square login-with"></i></a>
                        <a href="#"><i class="fa fa-tumblr-square login-with"></i></a>
                        <a href="#"><i class="fa fa-github-square login-with"></i></a>
                    </div>
                </div>
            </div>
        </form>
        <div class="text-center">
            <a href="${pageContext.request.contextPath }/admin/createAccountUI.action" class="templatemo-create-new">新创账号 <i class="fa fa-arrow-circle-o-right"></i></a>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">

    $(function () {
        $('form').bootstrapValidator({

            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },

            fields: {
                account: {
                    message: '用户名错误',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_]+$/,
                            message: '用户名只能包含大写、小写、数字和下划线'
                        },
                        stringLength: {
                            max: 18,
                            message: '用户名长度必须在18位之内'
                        },
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        stringLength: {
                            max: 18,
                                message: '用户名长度必须在18位之内'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_]+$/,
                            message: '用户名只能包含大写、小写、数字和下划线'
                        }
                    }
                }
            }
        });
    });
</script>
</html>
