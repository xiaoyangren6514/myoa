<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2014 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用入口文件

// 检测PHP环境
if (version_compare(PHP_VERSION, '5.3.0', '<')) die('require PHP > 5.3.0 !');

// 开启调试模式 建议开发阶段开启 部署阶段注释或者设为false
define('APP_DEBUG', True);

define('CSS_URL', '/myoa/Public/style/home/');
define('JS_URL', '/myoa/Public/js/');
define('IMAGE_URL', '/myoa/Public/image/home/');

/* '__APP__',__ROOT__.'/index.php',					// 更改默认的__APP__ 替换规则
 '__JS__' => __ROOT__.'/Public/js',
 '__CSS__' => __ROOT__.'/Public/style/home',
 '__IMAGE__' => __ROOT__.'/Public/image/home',
 '__UPLOAD__' => __ROOT__,*/

// 定义应用目录
define('APP_PATH', './Application/');

//给静态资源文件设置访问常量路径
define('SITE_URL', "http://127.0.0.1/myoa/");

header('content-type:text/html;charset=utf-8');
// 引入ThinkPHP入口文件
require './ThinkPHP/ThinkPHP.php';

// 亲^_^ 后面不需要任何代码了 就是如此简单