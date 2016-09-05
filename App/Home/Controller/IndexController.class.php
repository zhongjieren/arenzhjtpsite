<?php

/**
 * @author 小策一喋 <xvpindex@qq.com>
 * @link http://www.topstack.cn
 * @copyright Copyright (C) 2014 EWSD
 * @datetime 2014-10-15 12:40
 * @version 1.0
 * @description
 */

namespace Home\Controller;

use Think\Controller;

class IndexController extends CommonController {

    /**
      +----------------------------------------------------------
     * 定义
      +----------------------------------------------------------
     */
    protected $model;

    /**
      +----------------------------------------------------------
     * 初始化
      +----------------------------------------------------------
     */
    public function _initialize() {
        parent::_initialize();
        $this->channelModel = D('Admin/Channel');
        $this->articleModel = D('Common/Article');
    }

    /**
      +----------------------------------------------------------
     * 一次性显示所有栏目文章
      +----------------------------------------------------------
     */
    public function index() {
        /** Demo Start*/
        $articleHotTypes = array(
            array('name'=>'日最热', 'id'=>'day-hot'),
            array('name'=>'周最热', 'id'=>'week-hot'),
            array('name'=>'月最热', 'id'=>'month-hot')
        );
        foreach ($articleHotTypes as $k => $v) {
            for ($x=1; $x<=4; $x++) {
                $articleHotTypes[$k]['articles'][$x]['title']=$x.$articleHotTypes[$k]['name'].'、SQL Server2008解除只能编辑前200行，选择1000行的限制';
            }
        }
        $this->assign("articlehottypes",$articleHotTypes);
        /** Demo End*/


        $thumbnailCondition['thumbnail'] = array('neq', '');
        $this->thumbnailList = M('Article')->where($thumbnailCondition)->order('updated_at DESC')->limit(6)->select();

        $condition['fid'] = 0;
        $condition['model'] = 'article';
        $condition['status'] = 1;
        $topCate = $this->articleModel->getList($param = array('modelName' => 'Channel', 'field' => '*', 'order' => 'sort ASC'), $condition);
        $condition2['status'] = 1;
        $cate = $this->articleModel->getList($param = array('modelName' => 'Channel', 'field' => '*', 'order' => 'sort ASC'), $condition2);

        $Article = M('Article');
        $field = array('id', 'cid', 'title', 'cTime');
        foreach ($topCate as $k => $v) {
            $cids = \Com\Category::getChildsId($cate, $v['cid']);
            $cids[] = $v['cid'];
            $articleCondition = array('cid' => array('IN', $cids));
            $topCate[$k]['article'] = $this->articleModel->getList($param = array('modelName' => 'Article', 'field' => '*', 'order' => 'updated_at DESC', 'limit' => '5'), $articleCondition);
        }
        $this->topCate = $topCate;

        $this->display('index');
    }

    public function index3() {

    	$articleMap['title|content'] = array('LIKE', '%' . I('get.kw') . '%');
        $articleList = $this->articleModel->getListbyAll($order = 'updated_at DESC', $articleMap);
        $this->ajaxReturn($articleList);

    }

}

?>