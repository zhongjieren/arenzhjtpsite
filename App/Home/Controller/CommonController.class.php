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
use Common\Model\CommonModel;
use Common\Model\ChannelModel;
use Common\Model\ArticleModel;

class CommonController extends Controller {

    function _initialize() {
//        var_dump('111111');
//        exit;
    	if(I('get.cid')) {
    		$cat_id = I('get.cid');
    	} else {
    		$cat_id = ArticleModel::getCidById(I('get.id'));
    	}
    	$this->channelModel = D('Common/Channel');
        $this->channelDetail = $this->channelModel->getChannelDetailById($cat_id);
        //dump($this->channelDetail);
    }

}

?>