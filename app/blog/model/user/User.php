<?php


namespace app\blog\model\user;


use app\blog\model\BaseModel;
use app\blog\model\ModelTrait;

/**
 * Class User
 * @package app\blog\model\user
 */
class User extends BaseModel
{
    use ModelTrait;

    /**
     * 添加用户
     * @param array $data
     * @return int|string
     */
    public static function addUser(array $data)
    {
        return self::insertGetId([
            'nickname' => $data['nickname'],
            'avatar' => $data['avatar'],
            'sex' => $data['sex'],
            'register_ip' => request()->ip(),
            'register_time' => time(),
            'register_type' => 1,
            'status'=>1,
            'level'=>1,
            'integral'=>0,
            'money'=>0,
        ]);
    }

    /**
     * 更新用户
     * @param array $data
     * @param int|string $uid 用户id
     * @param int $type 注册类型
     * @return User
     */
    public static function updateUser(array $data, int $uid, int $type = 0)
    {
        $model = new self;
        $model = $model->where("uid",$uid);
        if ($type != 0) $model = $model->where("register_type",$type);
        return $model->update([
            'nickname' => $data['nickname'],
            'avatar' => $data['avatar'],
            'sex' => $data['sex'],
        ]);
    }

    /**
     * @param int $uid
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public static function getUserInfoByUid(int $uid)
    {
        return self::where("uid",$uid)->find()->toArray();
    }
}