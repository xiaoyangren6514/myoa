<?php
namespace Home\Controller;

use Org\Net\IpLocation;
use Think\Controller;
use Think\Verify;

class IndexController extends Controller
{
    public function index()
    {
        $this->display();
    }

    public function verifyImg()
    {
        $config = array(
            'fontSize' => 15,              // 验证码字体大小(px)
            'useCurve' => true,            // 是否画混淆曲线
            'useNoise' => true,            // 是否添加杂点
            'imageH' => 38,               // 验证码图片高度
            'imageW' => 100,               // 验证码图片宽度
            'length' => 4,               // 验证码位数
            'fontttf' => '1.ttf',              // 验证码字体，不设置随机获取
            'codeSet' => '1234567890',             // 验证码字符集合
        );
        $verify = new Verify($config);
        $verify->entry();
    }

    public function login()
    {
        $data['s'] = '非法请求';
        if (IS_AJAX) {
            $login = array();
            $username = I('post.username', '', 'htmlspecialchars');
            $password = I('post.password', '');
            if (!preg_match('/^[\x{4e00}-\x{9fa5}a-zA-Z0-9_-]{2,16}$/u', $username)) {
                $data['s'] = '请输入合法的用户名';
                $this->ajaxReturn($data);
            }
            if (strlen($password) < 6 || strlen($password) > 18) {
                $data['s'] = '请输入6位数以上的密码';
                $this->ajaxReturn($data);
            }
            $vcode = I('post.code', '');
            $verify = new Verify();
            if (!$verify->check($vcode)) {
                $data['s'] = '请输入正确的验证码';
                $this->ajaxReturn($data);
            }
            $area = $this->area();
            $dip = M('ip');
            $whereIP['Ip'] = $area['ip'];
            $resip = $dip->where($whereIP)->find();
            if ($resip) {
                if ($resip['Status'] == 1) {
                    $this->loginlog(0, '未知', '<div class="de2">被封锁IP尝试登录</div>', $area['country'] . '.' . $area['area'], $area['ip']);
                    $data['s'] = '您的IP异常已被封禁，请等待管理员解除封禁！';
                    $this->ajaxReturn($data);
                } else {
                    $endtime = strtotime($resip['EndTime']);        //结束时间
                    if (($endtime - date('Y-m-d')) > 1) {
                        $this->loginlog(0, '未知', '<div class="de2">被封锁帐号尝试登录</div>', $area['country'] . '.' . $area['area'], $area['ip']);
                        $data['s'] = '您的IP异常已被封禁，请等待管理员解除封禁！';
                        $this->ajaxReturn($data);
                    }
                }
            }
            $where['Username'] = $username;
            $user = M('user');
            if ($re = $user->where($where)->count()) {
                $where['Status'] = 0;
                if (!$user->where($where)->count()) {
                    $this->loginlog($re['ID'], $username, '<div class="de2">违规帐号登录</div>', $area['country'] . '.' . $area['area'], $area['ip']);
                    $data['s'] = '当前帐号已被封禁，请等待解除～！';
                    $this->ajaxReturn($data);
                }
                $where['Password'] = sha1(md5($password));
                if (!$result = $user->where($where)->getField('ID,Username,Password,Roleid,Status,Competence,Loginarea,Logincount')) {
                    $this->loginlog($re['ID'], $username, '<div class="de2">登录密码错误</div>', $area['country'] . '.' . $area['area'], $area['ip']);
                    $data['s'] = '登录密码错误';
                    $this->ajaxReturn($data);
                }
                //将二维数组转为一维数组
                foreach ($result as $key => $val) {
                    $arr = $val;
                }
                //IP地址位置获取
                $loginlog['Loginarea'] = $area['country'] . '.' . $area['area'];
                $loginlog['Loginip'] = $area['ip'];
                $loginlog['Logintime'] = date('Y-m-d H:i:s');
                $er = $user->where('ID = ' . $arr['ID'])->setField($loginlog);
                $user->where('ID = ' . $arr['ID'])->setInc('Logincount');    //登录次数加1
                //日志记录
                $this->loginlog($arr['ID'], $username, '<div class="de1">登录成功</div>', $area['country'] . '.' . $area['area'], $area['ip']);
                $arr['Loginarea'] = $area['country'] . '.' . $area['area'];
                $arr['Loginip'] = $area['ip'];
                $arr['Logintime'] = time();
                $arr['Logincount'] = $arr['Logincount'] + 1;
                $_SESSION['ThinkUser'] = $arr;
                //销毁验证码session
                session('verify', null);
                R('Public/errjson', array('ok'));
            } else {
                $this->loginlog(0, $username, '<div class="de2">用户不存在</div>', $area['country'] . '.' . $area['area'], $area['ip']);
                R('Public/errjson', array('用户名不存在'));
                $data['s'] = '用户名不存在';
                $this->ajaxReturn($data);
            }
        } else {
            $data['s'] = '非法请求';
            $this->ajaxReturn($data);
        }
    }

    //地理位置信息获取
    public function area()
    {
        $area = array();
        //位置获取
        $Ip = new IpLocation('UTFWry.dat');            // 实例化类 参数表示IP地址库文件
        $area = $Ip->getlocation();                    // 获取某个IP地址所在的位
        return $area;
    }

}