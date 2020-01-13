<?php


namespace app\admin\controller;

use think\captcha\Captcha;

class Login extends AuthController
{
    /**
     * 无需登录
     * @var array
     */
    protected $noNeedLogin = ['login','register','forget','captcha','verify'];

    /**
     * 登录
     * @return string
     * @throws \Exception
     */
    public function login()
    {
        return $this->view();
    }

    /**
     * 验证登录
     */
    public function verify()
    {

    }

    /**
     * 注册
     * @return string
     * @throws \Exception
     */
    public function register()
    {
        return $this->view();
    }

    /**
     * 忘记密码
     * @return string
     * @throws \Exception
     */
    public function forget()
    {
        return $this->view();
    }

    /**
     * 验证码
     * @return \think\Response
     */
    public function captcha()
    {
        ob_clean();
        return captcha();
    }
}