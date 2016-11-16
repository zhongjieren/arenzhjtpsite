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
    <link rel="Stylesheet" type="text/css" href="<?php echo C('STATIC_PATH');?>Plugins/kindeditor/plugins/code/prettify.css" />
    <!--Custom Style-->
    <link rel="Stylesheet" type="text/css" href="/App/Home/View/default/Public/Css/style.css" />

    <script type="text/javascript"  src="<?php echo C('STATIC_PATH');?>Plugins/kindeditor/plugins/code/prettify.js"></script>
    <title><?php echo ($articleDetail["title"]); ?></title>
</head>

<body>
<!-- 头部 -->
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
<!-- /头部 -->

<!-- 主体 -->
<div id="main-container" class="container" style="padding-top:70px">
    <div class="col-md-3 col-sm-12">
        <!--左侧文章作者信息 Start -->
        <div class="panel panel-default">
    <div class="panel-body" style="background: url('/App/Home/View/default/Public/Img/user-bg.jpg'); background-size:100% 120px; background-repeat:no-repeat;">
        <div class="user">
            <a href="/User/1.html" title="" data-toggle="tooltip" data-original-title="点击修改头像">
                <img class="avatar" src="/App/Home/View/default/Public/Img/noavatar_small.gif" alt="头像">
            </a>
            <h1>小策1</h1>
            <p></p>
            <ul class="stat">
                <li>财富值<h3>25</h3></li>
                <li>威望值<h3>0</h3></li>
                <li>总积分<h3>35</h3></li>
            </ul>
        </div>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2 class="panel-title"><i class="fa fa-user fa-fw"></i> 作者信息</h2>
        <span class="pull-right"><a class="btn btn-xs" href="/User/1.html" title="" data-toggle="tooltip" data-original-title="帐户设置"><i class="fa fa-cog"></i> </a></span>
    </div>
    <div class="panel-body">
        <ul class="user-info">
            <li><i class="fa fa-calendar fa-fw"></i> 呢称：小策</li>
            <li><i class="fa fa-calendar fa-fw"></i> 注册日期：2016-06-30 21:56</li>
            <li><i class="fa fa-sign-in fa-fw"></i> 最后登录：2016-07-04 08:58</li>
            <li><i class="fa fa-clock-o fa-fw"></i> 在线时长：1小时34分</li>
            <li><i class="fa fa-map-marker fa-fw"></i> 个人主页：60</li>
            <li><i class="fa fa-envelope-o fa-fw"></i>  arenzhj@163.com </li>
            <!--<li><i class="fa fa-group fa-fw"></i> </li>-->
            <ul></ul>
        </ul>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2 class="panel-title"><i class="fa fa-user fa-fw"></i>文章分类</h2>
        <span class="pull-right"><a class="btn btn-xs" href="/User/1.html" title="" data-toggle="tooltip" data-original-title="帐户设置"><i class="fa fa-cog"></i> </a></span>
    </div>
    <div class="panel-body">
        <ul class="user-info">
            <li><i class="fa fa-calendar fa-fw"></i>文学类</li>
            <li><i class="fa fa-calendar fa-fw"></i>c#</li>
            <li><i class="fa fa-sign-in fa-fw"></i>Java</li>
            <li><i class="fa fa-clock-o fa-fw"></i>美食</li>
        </ul>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2 class="panel-title"><i class="fa fa-user fa-fw"></i>社区板块</h2>
        <span class="pull-right"><a class="btn btn-xs" href="/User/1.html" title="" data-toggle="tooltip" data-original-title="帐户设置"><i class="fa fa-cog"></i> </a></span>
    </div>
    <div class="panel-body">
        <ul class="user-info">
            <li><i class="fa fa-calendar fa-fw"></i>我的资讯</li>
            <li><i class="fa fa-calendar fa-fw"></i>我的论坛</li>
            <li><i class="fa fa-sign-in fa-fw"></i>我的回答</li>
        </ul>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2 class="panel-title"><i class="fa fa-user fa-fw"></i>归档分类</h2>
        <span class="pull-right"><a class="btn btn-xs" href="/User/1.html" title="" data-toggle="tooltip" data-original-title="帐户设置"><i class="fa fa-cog"></i> </a></span>
    </div>
    <div class="panel-body">
        <ul class="user-info">
            <li><i class="fa fa-calendar fa-fw"></i>2016-08</li>
            <li><i class="fa fa-calendar fa-fw"></i>2016-07</li>
            <li><i class="fa fa-sign-in fa-fw"></i>更多归档...</li>
        </ul>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2 class="panel-title"><i class="fa fa-user fa-fw"></i>评论排行榜</h2>
        <span class="pull-right"><a class="btn btn-xs" href="/User/1.html" title="" data-toggle="tooltip" data-original-title="帐户设置"><i class="fa fa-cog"></i> </a></span>
    </div>
    <div class="panel-body">
        <ul class="user-info">
            <li><i class="fa fa-calendar fa-fw"></i>第一个文章...</li>
            <li><i class="fa fa-calendar fa-fw"></i>第二个文章...</li>
            <li><i class="fa fa-sign-in fa-fw"></i>第三个文章...</li>
        </ul>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <h2 class="panel-title"><i class="fa fa-user fa-fw"></i>最新评论</h2>
        <span class="pull-right"><a class="btn btn-xs" href="/User/1.html" title="" data-toggle="tooltip" data-original-title="帐户设置"><i class="fa fa-cog"></i> </a></span>
    </div>
    <div class="panel-body">
        <ul class="user-info">
            <li><i class="fa fa-calendar fa-fw"></i>第一个文章...</li>
            <li><i class="fa fa-calendar fa-fw"></i>第二个文章...</li>
            <li><i class="fa fa-sign-in fa-fw"></i>第三个文章...</li>
        </ul>
    </div>
</div>
        <!--左侧文章作者信息 End -->
    </div>

    <div class="col-md-9 col-sm-12">
        <!-- Contents ================================================== -->
        <?php echo W('Channel/linkMenu');?>

        <section id="contents">
            <div class="page-header">
                <h1> <?php echo ($articleDetail["title"]); ?></h1>
            </div>
            <div class="action">
                <span>
                    <a href="/Article/lists/category/jquery.html">
                        <i class="fa fa-book"></i> jQuery框架
                    </a>
                </span>
                <span><a href="/User/1.html"><i class="fa fa-user"></i> <?php echo (getChannelNameByCid($articleDetail["cat_id"])); ?></a></span>
                <span><i class="fa fa-clock-o"></i> <?php echo (timeFormat($articleDetail["uTime"])); ?></span>
                <span><i class="fa fa-eye"></i><?php echo ($articleDetail["click"]); ?>次浏览</span>
            </div>
            <div class="panel-body">
                <p><?php echo ($articleDetail["content"]); ?></p>
            </div>

            <div style="padding-bottom: 10px;color: #999;">
                <span><i class="fa fa-eye"></i>
                    <?php echo ($front); ?>
                </span>
            </div>
            <div style="padding-bottom: 10px;color: #999;">
                <span><i class="fa fa-eye"></i>
                    <?php echo ($after); ?>
                </span>
            </div>

        </section>
        <hr/>

        <!-- Duoshuo Comment BEGIN -->
        <div class="ds-thread" data-form-positon="top" data-limit="10" data-order="desc"></div>
        <script type="text/javascript">
            var duoshuoQuery = {
                short_name: "xiace"
            };
            (function() {
                var ds = document.createElement('script');
                ds.type = 'text/javascript';ds.async = true;
                ds.src = 'http://static.duoshuo.com/embed.js';
                ds.charset = 'UTF-8';
                (document.getElementsByTagName('head')[0]
                || document.getElementsByTagName('body')[0]).appendChild(ds);
            })();
        </script>
        <!-- Duoshuo Comment END -->

        <!--<p></p>-->
        <!--<div class="clearfix"></div>-->
        <!--<p></p>-->

        <!-- UY BEGIN -->
        <!--<div id="uyan_frame"></div>-->
        <!--<script type="text/javascript" src="http://v2.uyan.cc/code/uyan.js?uid=1867659"></script>-->
        <!-- UY END -->
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

<script>
    jQuery(document).ready(function(){
        jQuery(window).load(function(){
            prettyPrint();
        });
    })
    $(function () {
        $(window).resize(function () {
            $("#main-container").css("min-height", $(window).height() - 343);
        }).resize();
    })
</script>

</body>
</html>