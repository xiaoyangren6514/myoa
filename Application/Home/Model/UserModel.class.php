<?php

namespace Home\Model;
use Think\Model;

/**
 * Created by PhpStorm.
 * User: zhonglongquan
 * Date: 2016/11/4
 * Time: 20:06
 */
class UserModel extends Model
{

    public function checkUserNameExist($userName)
    {
        return $this->where(" Username = '$userName' ")->find();
    }

    public function checkUserStatus($userName, $status)
    {
        return $this->where(" Username = '$userName' and Status = '$status' ")->find();
    }

    public function doLogin($userName, $pwd)
    {
        return $this->where(" Username = '$userName' and Password = '$pwd' ")->find();
    }

}