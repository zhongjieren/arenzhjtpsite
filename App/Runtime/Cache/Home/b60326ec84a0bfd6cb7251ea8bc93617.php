<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
    <head>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="<?php echo ($articleDetail["keywords"]); ?>" />
<meta name="description" content="<?php echo ($articleDetail["summary"]); ?>" />
<link href="<?php echo C('STATIC_PATH');?>Plugins/BJUI/themes/css/bootstrap.min.css" rel="stylesheet">
<link href="<?php echo C('STATIC_PATH');?>Plugins/BJUI/themes/css/FA/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/App/Home/View/default/Public/Css/sb-admin-2.css" />
<link rel="stylesheet" type="text/css" href="/App/Home/View/default/Public/Css/base.css" />
<!--[if lte IE 9]>
    <script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/other/html5shiv.min.js"></script>
    <script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/other/respond.min.js"></script>
<![endif]-->
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/jquery-1.7.2.min.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/bootstrap.min.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/jquery/plugins/jquery.imgAutoSize.js"></script>
<script src="/Public/Js/functions.js"></script>
<script src="/App/Home/View/default/Public/Js/index.js"></script>
<script>
    $(function ($) {
        $('.panel-body').imgAutoSize(30);
        $('.thumbnail').imgAutoSize(30);
    });
</script>
    <link href="<?php echo C('STATIC_PATH');?>Plugins/jquery/plugins/SuperSlide/style.css" rel="stylesheet">
    <script src="<?php echo C('STATIC_PATH');?>Plugins/jquery/plugins/SuperSlide/jquery.SuperSlide.2.1.js"></script>
    <title><?php echo C('siteName');?></title>
    <link href="<?php echo C('STATIC_PATH');?>Plugins/bootstrap3/css/bootstrap.css" rel="stylesheet">
    <link href="<?php echo C('STATIC_PATH');?>Plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo C('STATIC_PATH');?>Plugins/kindeditor/plugins/code/prettify.css" rel="stylesheet">
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="<?php echo C('STATIC_PATH');?>Plugins/bootstrap3/js/html5shiv.js"></script>
    <![endif]-->


</head>
<body>
<div id="b-public-nav"  class="navbar navbar-inverse navbar-fixed-top" style="padding-top:2px; padding-bottom:2px;">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="/"><img src="/App/Home/View/default/Public/Img/logo.png"></a>
        </div>
        <div class="navbar-collapse collapse">
            <?php echo W('Channel/menu');?>
        </div><!--/.nav-collapse -->

    </div>
</div>

<div class="container " style="margin-top:80px;">

    <div class="row">

        <div class="col-md-8">

            <div class="foucebox" style="margin:0 auto">
                    <!-- 大图 -->
                    <div  class="bd">
                        <?php if(is_array($thumbnailList)): $i = 0; $__LIST__ = $thumbnailList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$tVo): $mod = ($i % 2 );++$i;?><div  class="showDiv">
                                <h2><a href="/article-<?php echo ($tVo["cid"]); ?>-<?php echo ($tVo["id"]); ?>.html"><?php echo ($tVo["title"]); ?></a></h2>
                                <a href="/article-<?php echo ($tVo["cid"]); ?>-<?php echo ($tVo["id"]); ?>.html"><img src="<?php echo ($tVo["thumbnail"]); ?>" ></a>
                                <div class="foucebox_bg"></div>
                                <div>
                                    <h2><a href="/article-<?php echo ($tVo["cid"]); ?>-<?php echo ($tVo["id"]); ?>.html"><?php echo ($tVo["title"]); ?></a></h2>
                                    <p><?php echo ($tVo["summary"]); ?></p>
                                </div>
                            </div><?php endforeach; endif; else: echo "" ;endif; ?>
                    </div>
                    <!-- 小图 -->
                    <div class="hd">
                        <ul>
                            <?php if(is_array($thumbnailList)): $i = 0; $__LIST__ = $thumbnailList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$tVo): $mod = ($i % 2 );++$i;?><li><a href="/article-<?php echo ($tVo["cid"]); ?>-<?php echo ($tVo["id"]); ?>.html"><img src="<?php echo ($tVo["thumbnail"]); ?>"><span class="txt"><?php echo ($tVo["title"]); ?></span><span class="txt_bg"></span><span class="mask"></span></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                        </ul>
                    </div>
            </div>
            <script type="text/javascript">
                jQuery(".foucebox").slide({ effect:"fold", autoPlay:true, delayTime:300, startFun:function(i){
                        //下面代码控制文字显示
                        jQuery(".foucebox .showDiv").eq(i).find("h2").css({display:"none",bottom:0}).animate({opacity:"show",bottom:"60px"},300);
                        jQuery(".foucebox .showDiv").eq(i).find("p").css({display:"none",bottom:0}).animate({opacity:"show",bottom:"10px"},300);
                    }
                });
            </script>

            <p></p>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <i class="fa fa-fire"></i>
                        热门推荐
                    </h4>
                    <span class="pull-right" >
                        <a class="btn btn-xs" href="/Article/lists/jquery.html">更多»</a>
                    </span>
                </div>
                <div class="panel-body" style="padding:0px;">
                    <ul id="myTab" class="nav nav-tabs">
                        <?php if(is_array($topCate)): $k = 0; $__LIST__ = $topCate;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><li <?php if($k == 1): ?>class="active"<?php endif; ?>  >
                            <a href="#<?php echo ($vo["cid"]); ?>-cat"  data-toggle="tab"  >
                                <?php echo ($vo["name"]); ?>
                            </a>
                            </li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <?php if(is_array($topCate)): $k = 0; $__LIST__ = $topCate;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><div <?php if($k == 1): ?>class="tab-pane fade in active" <?php else: ?> class="tab-pane fade"<?php endif; ?>  id="<?php echo ($vo['cid']); ?>-cat">
                                <div class="list-group">
                                    <?php if(is_array($vo["article"])): $n = 0; $__LIST__ = $vo["article"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$articleVo): $mod = ($n % 2 );++$n;?><!--<a href="/article-<?php echo ($articleVo["cid"]); ?>-<?php echo ($articleVo["id"]); ?>.html" class="list-group-item"><span class="fa fa-th-list b-black"></span>  <?php echo (cutStr($articleVo["title"],"28")); ?></a>-->
                                        <a href="<?php echo U('Home/Article/detail',array('cid'=>$articleVo['cid'],'id'=>$articleVo['id']));?>" class="list-group-item"><span class="fa fa-th-list b-black"></span>  <?php echo (cutStr($articleVo["title"],"28")); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
                                </div>
                            </div><?php endforeach; endif; else: echo "" ;endif; ?>
                    </div>
                </div>
            </div>
            <p></p>
        </div>

        <div class="col-md-4 col-sm-12">

            <form class="form-group" action="<?php echo U('Article/search');?>">
                <div class="form-group input-group">
                    <input type="text" name="keyWords" class="form-control" placeholder="请输入标题/内容关键词" value="<?php echo ($_GET['kw']); ?>">
                    <span class="input-group-btn">
                        <button type="submit" class="btn btn-default submit"><i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </form>

            <div class="panel panel-red">
                <div class="panel-heading"><h4 class="panel-title"><i class="fa fa-fire"></i>热门推荐</h4></div>
                <div class="list-group">
                    <?php $M = M("Article");$count = $M->where()->count();$Page = new \Think\Page($count, 15);$Page->setConfig("theme", "<ul class='pagination'><li><a>%totalRow% %header% %nowPage%/%totalPage% 页</a></li><li>%upPage%</li><li>%first%</li><li>%prePage%</li><li>%linkPage%</li><li>%nextPage%</li><li>%end%</li><li>%downPage%</li></ul>");$list["page"] = $Page->show();$list["info"] = $M->field("id,cid,title")->where()->order("click DESC")->limit($Page->firstRow, $Page->listRows)->select();foreach ($list["info"] as $value):extract($value);?><a href="/article-<?php echo ($cid); ?>-<?php echo ($id); ?>.html" class="list-group-item"><span class="fa fa-th-list b-black"></span> <?php echo (cutStr($title,"28")); ?></a><?php endforeach ?>
                </div>
            </div>

            <div class="panel panel-warning">
                <div class="panel-heading"><h4 class="panel-title"><i class="fa fa-fire"></i>热门主题</h4></div>
                <div class="list-group">
                    <?php $M = M("Article");$count = $M->where()->count();$Page = new \Think\Page($count, 15);$Page->setConfig("theme", "<ul class='pagination'><li><a>%totalRow% %header% %nowPage%/%totalPage% 页</a></li><li>%upPage%</li><li>%first%</li><li>%prePage%</li><li>%linkPage%</li><li>%nextPage%</li><li>%end%</li><li>%downPage%</li></ul>");$list["page"] = $Page->show();$list["info"] = $M->field("id,cid,title")->where()->order("click DESC")->limit($Page->firstRow, $Page->listRows)->select();foreach ($list["info"] as $value):extract($value);?><a href="/article-<?php echo ($cid); ?>-<?php echo ($id); ?>.html" class="list-group-item"><span class="fa fa-flag b-black"></span> <?php echo (cutStr($title,"28")); ?></a><?php endforeach ?>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- 底部 -->
<!-- 底部 ================================================== -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-2">
                <h2><i class="fa fa-info-circle"></i> 关于 Yii</h2>
                <ul>
                    <li><a href="/about">Yii 的简介</a></li>
                    <li><a href="/news">Yii 的动态</a></li>
                    <li><a href="/features">Yii 的特性</a></li>
                    <li><a href="/performance">Yii 的性能</a></li>
                    <li><a href="/license">Yii 的许可</a></li>
                </ul>
            </div>
            <div class="col-lg-2">
                <h2><i class="fa fa-book"></i> 文档手册</h2>
                <ul>
                    <li><a href="/doc">中文文档</a></li>
                    <li><a href="/download">框架下载</a></li>
                    <li><a href="/tutorial">中文教程</a></li>
                    <li><a href="/extension">安装扩展</a></li>
                    <li><a href="/code">优秀源码</a></li>
                </ul>
            </div>
            <div class="col-lg-2">
                <h2><i class="fa fa-commenting"></i> 社区资源</h2>
                <ul>
                    <li><a href="/question">社区问答</a></li>
                    <li><a href="/topic">社区讨论</a></li>
                    <li><a href="/case">用户案例</a></li>
                    <li><a href="/video">视频教程</a></li>
                    <li><a href="/top">会员排行</a></li>
                </ul>
            </div>
            <div class="col-lg-3">
                <h2><i class="fa fa-qq"></i> QQ交流群</h2>
                <ul class="list-unstyled">
                    <li>
                        ① <a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=19f92b4525df025f856917537c4a6d9bb8dd6a0fc1c660b408d65cc21fef6c22">4241653</a> <font class="fast">(已满)</font>　
                        ② <a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=38dee71f9bd97c37e131c0722e640fe7c12f459afc67ca34fb82d67dd1ab9b0c">4829703</a> <font class="secure">(未满)</font>
                    </li>
                    <li>
                        ③ <a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=215d55638b0eac69f25b68664d394579994b48b34789149855419c548a620d57">4958407</a> <font class="secure">(未满)</font>　
                        ④ <a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=7aa35873c42e820781a4822e7ba2c7352c3c85454ea9454009fe2c15a2797c5d">5476028</a> <font class="fast">(已满)</font>
                    </li>
                    <li>
                        ⑤ <a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=1a0c961d723cd24f98185b4a631f303efa05c2442f24022c3eb1ddb8b623a270">5478523</a> <font class="fast">(已满)</font>　
                        ⑥ <a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=f0ab6fcfcd0a431c53c0ef8e5538609a6920360c86b73dd401e7e88f1a2795b9">5604716</a> <font class="fast">(已满)</font>
                    </li>
                    <li>
                        ⑦ <a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=143aade31ff7a073a07bdc75d3c960b3f671a76f6f6de0c608c3702b6aac60a7">5629416</a> <font class="fast">(已满)</font>　
                        ⑧ <a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=57b5f15c3b1f35cd2721b45a6eb20fd63cc76a4776e5c1767b521f01c14dec9c">6419794</a> <font class="fast">(已满)</font>
                    </li>
                    <li>
                        ⑨ <a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=77e547190bdda1bac3d1fed071882b53585d63120f65ef656e7f4f0d3112cbdd">7415106</a> <font class="fast">(已满)</font>　
                        ⑩ <a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=d626c01d0074072d2e01219259aab99d10d8691711a2882478c1dbf8a9b5e23e">7594839</a> <font class="fast">(已满)</font>
                    </li>
                </ul>
            </div>
            <div class="col-lg-3">
                <h2><i class="fa fa-share-alt"></i> 关注我们</h2>
                <dl>
                    <dt><i class="fa fa-weibo"></i> Yii 中文社区 官方微博</dt>
                    <dd><a href="http://weibo.com/yiichina">http://weibo.com/yiichina</a></dd>
                </dl>
                <dl>
                    <dt><i class="fa fa-github"></i> Yii China GitHub 仓库</dt>
                    <dd><a href="https://github.com/yiichina">https://github.com/yiichina</a></dd>
                </dl>
            </div>
        </div>
    </div>
    <hr>
    <div class="container">
        <span class="pull-left">Copyright © 2009-2016 by <a href="http://www.topstack.cn">小策一喋</a>. All Rights Reserved.</span>
            <span class="pull-right">
                Powered by <a href="http://www.topstack.cn/" rel="external">小策一喋</a>.
                <a href="http://www.miibeian.gov.cn" target="_blank">京ICP备16006038号-1</a>
            	<script language="javascript" type="text/javascript" src="http://js.users.51.la/7242161.js"></script>
<noscript><a href="http://www.51.la/?7242161" target="_blank"><img alt="我要啦免费统计" src="http://img.users.51.la/7242161.asp" style="border:none" /></a></noscript>
	    </span>
    </div>
</footer>

<!--<div style="background:#385881;">-->
    <!--<div class="container" style="margin-top:10px;padding-top: 10px;color: white;">-->
        <!--<center>-->
            <!--<?php if(is_array($channelList)): $i = 0; $__LIST__ = $channelList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$data): $mod = ($i % 2 );++$i;?>-->
                <!--<a href='/index.php<?php echo ($data["url"]); ?>'><?php echo ($data["name"]); ?></a>&nbsp;&nbsp;-->
            <!--<?php endforeach; endif; else: echo "" ;endif; ?>-->
            <!--<p style="padding-top:5px;">-->
                <!--<?php echo C("sys_copyright");?> -->
            <!--</p>-->
            <!--<p style="padding-top:5px; display: none;">-->
                <!--<?php echo C("icp");?> <?php echo C("counter");?>-->
            <!--</p>-->
        <!--</center>-->
    <!--</div>-->
<!--</div>-->


</body>
</html>