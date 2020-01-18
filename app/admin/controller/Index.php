<?php


namespace app\admin\controller;


use app\admin\controller\AuthController;
use think\facade\View;

class Index extends AuthController
{
    // 无需登录的
    protected $noNeedLogin = [''];
    // 无需权限的
    protected $noNeedRight = [''];

    /**
     * 后台首页
     * @return string
     * @throws \Exception
     */
    public function index()
    {
        return $this->view();
    }

    /**
     * 控制台
     * @return string
     * @throws \Exception
     */
    public function console()
    {
        return $this->view();
    }

    public function test()
    {
        var_dump(session_id("bf69d934d7c38c0a21074d8e3493f643"));
//        event("Test",["666"]);
    }
}