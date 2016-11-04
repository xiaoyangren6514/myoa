<?php
namespace Home\Controller;

use Think\Controller;
use Think\Verify;

class IndexController extends Controller
{
    public function verify()
    {
        echo 'hhh';
        $config = array(
            'fontSize' => 15,              // 验证码字体大小(px)
            'useCurve' => true,            // 是否画混淆曲线
            'useNoise' => true,            // 是否添加杂点
            'imageH' => 35,               // 验证码图片高度
            'imageW' => 100,               // 验证码图片宽度
            'length' => 3,               // 验证码位数
            'fontttf' => '1.ttf',              // 验证码字体，不设置随机获取
            'codeSet' => '1234567890',             // 验证码字符集合
        );
        $verify = new Verify($config);
        $verify->entry();
    }
}