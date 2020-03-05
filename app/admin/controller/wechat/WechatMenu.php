<?php


namespace app\admin\controller\wechat;


use app\admin\controller\AuthController;
use app\Request;
use learn\services\WechatService;

/**
 * Class WechatMenu
 * @package app\admin\controller\wechat
 */
class WechatMenu extends AuthController
{
    /**
     * 微信菜单
     * @return mixed
     * @throws \EasyWeChat\Kernel\Exceptions\InvalidConfigException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function menu()
    {
        $menu = WechatService::menuService()->current();
        value($menu);
        $this->assign("menu",$menu);
        return $this->menu();
    }

    /**
     * 发布菜单
     * @param Request $request
     */
    public function send(Request $request)
    {

    }
}