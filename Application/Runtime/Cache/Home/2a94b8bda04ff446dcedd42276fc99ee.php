<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录 - 小峰CRM客户管理系统</title>
    <link rel="stylesheet" type="text/css" href="CSS_URL/login.css"/>
    <link rel="stylesheet" type="text/css" href="CSS_URL/public.css"/>
    <script type="text/javascript" src="JS_URL/jquery.js"></script>
    <script type="text/javascript" src="JS_URL/Public.js"></script>
    <script type="text/javascript" src="JS_URL/winpop.js"></script>

    <script>
        $(function () {
            $('#content input').eq(0).focus();
            $('body input:text, input:password, textarea').focus(function () {
                $(this).css({'border': 'solid 1px #398700', 'boxShadow': '0px 0px 8px #398700'});
            });
            $('body input:text, input:password, textarea').blur(function () {
                $(this).css({'border': 'solid 1px #ccc', 'boxShadow': 'none'});
            });
            $('.button').click(function (event) {
                event.preventDefault();
                var username = $('#content .utext').val();
                var password = $('#content .ptext').val();
                var code = $('#content .code').val();
                if (!/^[a-zA-Z0-9_-]|[\u4e00-\u9fa5]{2,16}$/.test(username)) {
                    wintq('请输入正确的用户名', 2, 2000, 1, '');
                    $('#content .utext').focus();
                    return;
                }
                if (password.length < 6) {
                    wintq('请输入6位数以上的密码', 2, 2000, 1, '');
                    $('#content .ptext').focus();
                    return;
                }
                if (!/^[a-zA-Z0-9]{4}$/.test(code)) {
                    wintq('请输入正确的验证码', 2, 2000, 1, '');
                    $('#content .code').focus();
                    return;
                }
                wintq('正在登录，请稍后...', 4, 20000, 0, '');
                $.ajax({
                    url: '/myoa/index.php/Index/login',
                    dataType: "json",
                    type: 'POST',
                    cache: false,
                    data: 'username=' + username + '&password=' + password + '&code=' + code,
                    success: function (data) {
                        if (data.s == 'ok') {
                            wintq('登录成功', 1, 2000, 0, '/myoa/index.php/Index/main/');
                        } else {
                            rcode($('#verify'));
                            wintq(data.s, 3, 2000, 1, '');
                        }
                    }
                });
            });
            //更换验证码
            function rcode(obj) {
                obj.attr('src', '/myoa/index.php/Public/verify/' + Math.random());
            }

            $('#verify').click(function () {
                rcode($(this));
            });
        });
    </script>
</head>
<body>
<div id="content">
    <form action="<?php echo ($smarty["const"]["/myoa/index.php/Home/Index"]); ?>/login" method="post">
        <dl>
            <dt>小峰CRM客户管理系统</dt>
            <dd><input type="text" name="username" class="utext" maxlength="12"/></dd>
            <dd><input type="password" name="password" class="ptext" maxlength="18" value="123456"/></dd>
            <dd><input type="text" name="code" class="code" maxlength="4"/>
                <img border="0" id="verify"
                     src="<?php echo ($smarty["const"]["/myoa/index.php/Home/Index"]); ?>/verifyImg" alt=""
                     onclick="this.src = '<?php echo ($smarty["const"]["/myoa/index.php/Home/Index"]); ?>/verifyImg/'+Math.random()"/>
                <input type="submit" name="login" value="登 录" class="button"/>
            </dd>
            <dd><label>版本：V 1.0　　设计和维护：<a href="http://www.web-fish.com" target="_blank">web鱼</a></label></dd>
        </dl>
    </form>
</div>
</body>
</html>