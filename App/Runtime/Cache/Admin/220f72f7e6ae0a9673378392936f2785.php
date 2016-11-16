<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo C('siteName');?></title>
<meta name="Keywords" content="<?php echo C('siteName');?>"/> 
<!-- bootstrap - css -->
<link href="/Static/Plugins/BJUI/themes/css/bootstrap.min.css" rel="stylesheet">
<!-- core - css -->
<link href="<?php echo C('STATIC_PATH');?>Plugins/BJUI/themes/css/style.css" rel="stylesheet">
<link href="<?php echo C('STATIC_PATH');?>Plugins/BJUI/themes/green/core.css" id="bjui-link-theme" rel="stylesheet">
<!-- plug - css -->
<link href="/Static/Plugins/kindeditor/themes/default/default.css" rel="stylesheet">
<link href="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
<link href="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/niceValidator/jquery.validator.css" rel="stylesheet">
<link href="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/bootstrapSelect/bootstrap-select.css" rel="stylesheet">
<link href="/Static/Plugins/BJUI/themes/css/FA/css/font-awesome.min.css" rel="stylesheet">
<style type="text/css">
    tr{height: 32px; line-height: 32px} /* 优化表格行高 */
    .resize-head{height:0;} /* 修正表格行距增加后表头显示问题 */
    .panel-body td{line-height:1.5;font-size: 14px;} /* kindEditor文字行距 */
    .panel-body p{line-height:1.5;font-size: 14px;} /* kindEditor文字行距 */
</style>
<!--[if lte IE 7]>
<link href="<?php echo C('STATIC_PATH');?>Plugins/BJUI/themes/css/ie7.css" rel="stylesheet">
<![endif]-->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lte IE 9]>
    <script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/other/html5shiv.min.js"></script>
    <script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/other/respond.min.js"></script>
<![endif]-->
<!-- jquery -->
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/jquery-1.7.2.min.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/jquery.cookie.js"></script>
<!--[if lte IE 9]>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/other/jquery.iframe-transport.js"></script>    
<![endif]-->
<!-- BJUI.all 分模块压缩版 -->
<!-- <script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-all.js"></script> -->

<!-- 以下是B-JUI的分模块未压缩版，建议开发调试阶段使用下面的版本 -->
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-core.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-regional.zh-CN.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-frag.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-extends.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-basedrag.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-slidebar.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-contextmenu.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-navtab.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-dialog.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-taskbar.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-ajax.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-alertmsg.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-pagination.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-util.date.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-datepicker.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-ajaxtab.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-tablefixed.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-tabledit.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-spinner.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-lookup.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-tags.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-upload.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-theme.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-initui.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/js/bjui-plugins.js"></script>

<!-- plugins -->
<!-- swfupload for uploadify && kindeditor -->
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/swfupload/swfupload.js"></script>
<!-- kindeditor -->
<script src="/Static/Plugins/kindeditor/kindeditor-all.js"></script>
<script src="/Static/Plugins/kindeditor/lang/zh_CN.js"></script>
<!-- colorpicker -->
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- ztree -->
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/ztree/jquery.ztree.all-3.5.js"></script>
<!-- nice validate -->
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/niceValidator/jquery.validator.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/niceValidator/jquery.validator.themes.js"></script>
<!-- bootstrap plugins -->
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/bootstrap.min.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/bootstrapSelect/bootstrap-select.min.js"></script>
<!-- icheck -->
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/icheck/icheck.min.js"></script>
<!-- dragsort -->
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/dragsort/jquery.dragsort-0.5.1.min.js"></script>
<!-- highcharts -->
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/highcharts/highcharts.js"></script>
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/highcharts/highcharts-3d.js"></script>
<!-- ECharts -->
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/echarts/echarts.js"></script>
<!-- other plugins -->
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/other/jquery.autosize.js"></script>
<link href="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/uploadify/css/uploadify.css" rel="stylesheet">
<script src="<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/uploadify/scripts/jquery.uploadify.min.js"></script>
<script src="/Public/Js/functions.js"></script>
<!-- init -->
<script type="text/javascript">
$(function() {
    BJUI.init({
        JSPATH       : '<?php echo C('STATIC_PATH');?>Plugins/BJUI/',
        PLUGINPATH   : '<?php echo C('STATIC_PATH');?>Plugins/BJUI/plugins/',
        loginInfo    : {url:'login_timeout.html', title:'登录', width:400, height:200}, // 会话超时后弹出登录对话框
        statusCode   : {ok:200, error:300, timeout:301}, //[可选]
        ajaxTimeout  : 50000, //[可选]全局Ajax请求超时时间(毫秒)
        alertTimeout : 3000,  //[可选]信息提示[info/correct]自动关闭延时(毫秒)
        pageInfo     : {pageCurrent:'pageCurrent', pageSize:'pageSize', orderField:'orderField', orderDirection:'orderDirection'}, //[可选]分页参数
        keys         : {statusCode:'statusCode', message:'message'}, //[可选]
        ui           : {showSlidebar:true, clientPaging:true}, //[可选]clientPaging:在客户端响应分页及排序参数
        debug        : true,    // [可选]调试模式 [true|false，默认false]
        theme        : 'purple' // 若有Cookie['bjui_theme'],优先选择Cookie['bjui_theme']。皮肤[五种皮肤:default, orange, purple, blue, red, green]
    })
    //时钟
    var today = new Date(), time = today.getTime()
    $('#bjui-date').html(today.formatDate('yyyy/MM/dd'))
    setInterval(function() {
        today = new Date(today.setSeconds(today.getSeconds() + 1))
        $('#bjui-clock').html(today.formatDate('HH:mm:ss'))
    }, 1000)
})

//console.log('IE:'+ (!$.support.leadingWhitespace))
//菜单-事件
function MainMenuClick(event, treeId, treeNode) {
    if (treeNode.isParent) {
        var zTree = $.fn.zTree.getZTreeObj(treeId)
        
        zTree.expandNode(treeNode)
        return
    }
    
    if (treeNode.target && treeNode.target == 'dialog')
        $(event.target).dialog({id:treeNode.tabid, url:treeNode.url, title:treeNode.name})
    else
        $(event.target).navtab({id:treeNode.tabid, url:treeNode.url, title:treeNode.name, fresh:treeNode.fresh, external:treeNode.external})
    event.preventDefault()
}
</script>

</head>
<body>
    <!--[if lte IE 7]>
    <div id="errorie"><div>您还在使用老掉牙的IE，正常使用系统前请升级您的浏览器到 IE8以上版本 <a target="_blank" href="http://windows.microsoft.com/zh-cn/internet-explorer/ie-8-worldwide-languages">点击升级</a>&nbsp;&nbsp;强烈建议您更改换浏览器：<a href="http://down.tech.sina.com.cn/content/40975.html" target="_blank">谷歌 Chrome</a></div></div>
<![endif]-->
<header id="bjui-header">
    <div class="bjui-navbar-header">
        <button type="button" class="bjui-navbar-toggle btn-default" data-toggle="collapse" data-target="#bjui-navbar-collapse">
            <i class="fa fa-bars"></i>
        </button>
        <a class="bjui-navbar-logo" href="<?php echo U('index');?>"><img src="/App/Admin/View/default//Public/Img/logo.png"></a>
    </div>
    <nav id="bjui-navbar-collapse">
        <ul class="bjui-navbar-right">
            <li class="datetime"><div><span id="bjui-date"></span> <span id="bjui-clock"></span></div></li>
            <li><a href="/" target="_blank">网站首页</a></li>
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">我的账户 <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="<?php echo U('Admin/Index/myInfo');?>" data-toggle="dialog" data-id="changepwd_page" data-mask="true" data-width="400" data-height="260">&nbsp;<span class="fa fa-lock"></span> 修改密码&nbsp;</a></li>
                    <li><a href="#">&nbsp;<span class="fa fa-user"></span> 我的资料</a></li>
                    <li><a href="<?php echo U('Admin/Index/cache');?>" data-toggle="navtab">&nbsp;<span class="fa fa-trash"></span> 清理缓存</a></li>
                    <li class="divider"></li>
                    <li><a href="<?php echo U('Admin/Public/loginOut');?>" class="red">&nbsp;<span class="fa fa-power-off"></span> 注销登陆</a></li>
                </ul>
            </li>
            <li class="dropdown"><a href="#" class="dropdown-toggle theme purple" data-toggle="dropdown"><i class="fa fa-tree"></i></a>
                <ul class="dropdown-menu" role="menu" id="bjui-themes">
                    <li><a href="javascript:;" class="theme_default" data-toggle="theme" data-theme="default">&nbsp;<i class="fa fa-tree"></i> 黑白分明&nbsp;&nbsp;</a></li>
                    <li><a href="javascript:;" class="theme_orange" data-toggle="theme" data-theme="orange">&nbsp;<i class="fa fa-tree"></i> 橘子红了</a></li>
                    <li class="active"><a href="javascript:;" class="theme_purple" data-toggle="theme" data-theme="purple">&nbsp;<i class="fa fa-tree"></i> 紫罗兰</a></li>
                    <li><a href="javascript:;" class="theme_blue" data-toggle="theme" data-theme="blue">&nbsp;<i class="fa fa-tree"></i> 青出于蓝</a></li>
                    <li><a href="javascript:;" class="theme_red" data-toggle="theme" data-theme="red">&nbsp;<i class="fa fa-tree"></i> 红红火火</a></li>
                    <li><a href="javascript:;" class="theme_green" data-toggle="theme" data-theme="green">&nbsp;<i class="fa fa-tree"></i> 绿草如茵</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <div id="bjui-hnav">
        <button type="button" class="btn-default bjui-hnav-more-left" title="导航菜单左移"><i class="fa fa-angle-double-left"></i></button>
        <div id="bjui-hnav-navbar-box">
            <ul id="bjui-hnav-navbar"> 
<!--                 <li class="active"><a href="javascript:;" data-toggle="slidebar"><i class="fa fa-check-square-o"></i> 站点设置</a> -->
<!--                     <div class="items hide" data-noinit="true"> -->
<!--                         <ul id="bjui-hnav-tree1" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="true" data-faicon="check-square-o"> -->
<!--                             <li data-id="1" data-pid="0" data-faicon="folder-open-o" data-faicon-close="folder-o">自定义导航</li> -->
<!--                             <li data-id="10" data-pid="1" data-url="form-button.html" data-tabid="form-button" data-faicon="hand-o-up">站内链接</li> -->
<!--                             <li data-id="11" data-pid="1" data-url="form-input.html" data-tabid="form-input" data-faicon="terminal">自定义链接</li> -->
<!--                             <li data-id="2" data-pid="0" data-faicon="folder-open-o" data-faicon-close="folder-o">站点参数</li> -->
<!--                             <li data-id="20" data-pid="2" data-url="form-select.html" data-tabid="form-select" data-faicon="caret-square-o-down"> 系统参数</li> -->
<!--                             <li data-id="21" data-pid="2" data-url="form-checkbox.html" data-tabid="table" data-faicon="check-square-o">自定义参数</li> -->
<!--                             <li data-id="22" data-pid="2" data-url="form.html" data-tabid="form" data-faicon="list">其它参数</li> -->
<!--                         </ul> -->
<!--                     </div> -->
<!--                 </li> -->
<!--                 <li><a href="javascript:;" data-toggle="slidebar"><i class="fa fa-plane"></i> 幻灯片管理</a> -->
<!--                     <div class="items hide" data-noinit="true"> -->
<!--                         <ul id="bjui-hnav-tree4" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="true" data-faicon="plane"> -->
<!--                             <li data-id="2" data-pid="0" data-faicon="folder-open-o" data-faicon-close="folder-o">弹出窗口</li> -->
<!--                             <li data-id="20" data-pid="2" data-url="dialog.html" data-tabid="dialog" data-faicon="plane">弹出窗口</li> -->
<!--                             <li data-id="21" data-pid="2" data-url="alert.html" data-tabid="alert" data-faicon="info-circle">信息提示</li> -->
<!--                         </ul> -->
<!--                     </div> -->
<!--                 </li> -->
<!--                 <li><a href="javascript:;" data-toggle="slidebar"><i class="fa fa-plane"></i> 单页面管理</a> -->
<!--                     <div class="items hide" data-noinit="true"> -->
<!--                         <ul id="bjui-hnav-tree4" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="true" data-faicon="plane"> -->
<!--                             <li data-id="4" data-pid="0" data-faicon="folder-open-o" data-faicon-close="folder-o">弹出窗口</li> -->
<!--                             <li data-id="40" data-pid="4" data-url="dialog.html" data-tabid="dialog" data-faicon="plane">弹出窗口</li> -->
<!--                             <li data-id="41" data-pid="4" data-url="alert.html" data-tabid="alert" data-faicon="info-circle">信息提示</li> -->
<!--                         </ul> -->
<!--                     </div> -->
<!--                 </li> -->
<!--                 <li><a href="javascript:;" data-toggle="slidebar"><i class="fa fa-image"></i> 文章管理</a> -->
<!--                     <div class="items hide" data-noinit="true"> -->
<!--                         <ul id="bjui-hnav-tree5" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="true" data-faicon="image"> -->
<!--                             <li data-id="5" data-pid="0" data-faicon="folder-open-o" data-faicon-close="folder-o">文章管理</li> -->
<!--                             <li data-id="51" data-pid="5" data-url="highcharts.html" data-tabid="chart" data-faicon="image">文章分类</li> -->
<!--                             <li data-id="52" data-pid="5" data-url="/admin/article/add" data-tabid="article-list" data-faicon="image">新增文章</li> -->
<!--                             <li data-id="53" data-pid="5" data-url="<?php echo U('Admin/Article/index');?>" data-tabid="article-list" data-faicon="image">文章列表</li> -->
<!--                         </ul> -->
<!--                     </div> -->
<!--                 </li> -->
<!--                 <li><a href="javascript:;" data-toggle="slidebar"><i class="fa fa-coffee"></i> 商品管理</a> -->
<!--                     <div class="items hide" data-noinit="true"> -->
<!--                         <ul id="bjui-hnav-tree6" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="true" data-faicon="coffee"> -->
<!--                             <li data-id="6" data-pid="0" data-faicon="folder-open-o" data-faicon-close="folder-o">商品管理</li> -->
<!--                             <li data-id="61" data-pid="6" data-url="tabs.html" data-tabid="tabs" data-faicon="columns">商品分类</li> -->
<!--                             <li data-id="62" data-pid="6" data-url="tabs.html" data-tabid="tabs" data-faicon="columns">商品列表</li> -->
<!--                         </ul> -->
<!--                     </div> -->
<!--                 </li> -->
<!--                 <li><a href="javascript:;" data-toggle="slidebar"><i class="fa fa-bug"></i> 用户管理</a> -->
<!--                     <div class="items hide" data-noinit="true"> -->
<!--                         <ul id="bjui-hnav-tree6" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="true" data-faicon="bug"> -->
<!--                             <li data-id="7" data-pid="0" data-faicon="folder-open-o" data-faicon-close="folder-o">用户管理</li> -->
<!--                             <li data-id="71" data-pid="7" data-url="ztree.html" data-tabid="ztree" data-faicon="tree">系统管理员</li> -->
<!--                             <li data-id="72" data-pid="7" data-url="ztree-select.html" data-tabid="ztree-select" data-faicon="caret-square-o-down">注册用户</li> -->
<!--                         </ul> -->
<!--                     </div> -->
<!--                 </li> -->
<!--                 <li><a href="javascript:;" data-toggle="slidebar"><i class="fa fa-bug"></i> 系统管理</a> -->
<!--                     <div class="items hide" data-noinit="true"> -->
<!--                         <ul id="bjui-hnav-tree6" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="true" data-faicon="bug"> -->
<!--                             <li data-id="8" data-pid="0" data-faicon="folder-open-o" data-faicon-close="folder-o">数据备份</li> -->
<!--                             <li data-id="81" data-pid="8" data-url="ztree.html" data-tabid="ztree" data-faicon="tree">系统日志</li> -->
<!--                             <li data-id="82" data-pid="8" data-url="ztree-select.html" data-tabid="ztree-select" data-faicon="caret-square-o-down">在线列表</li> -->
<!--                         </ul> -->
<!--                     </div> -->
<!--                 </li> -->
<!--                 <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cog"></i> 系统设置 <span class="caret"></span></a> -->
<!--                     <ul class="dropdown-menu" role="menu"> -->
<!--                         <li><a href="#">角色权限</a></li> -->
<!--                         <li><a href="#">用户列表</a></li> -->
<!--                         <li class="divider"></li> -->
<!--                         <li><a href="#">关于我们</a></li> -->
<!--                         <li class="divider"></li> -->
<!--                         <li><a href="#">友情链接</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
            </ul>
        </div>
        <button type="button" class="btn-default bjui-hnav-more-right" title="导航菜单右移"><i class="fa fa-angle-double-right"></i></button>
    </div>
</header>
    <div id="bjui-container" class="clearfix">
	   <div id="bjui-leftside">
    <div id="bjui-sidebar-s">
        <div class="collapse"></div>
    </div>
    <div id="bjui-sidebar">
        <div class="toggleCollapse"><h2><i class="fa fa-bars"></i> 导航栏 <i class="fa fa-bars"></i></h2><a href="javascript:;" class="lock"><i class="fa fa-lock"></i></a></div>
        <div class="panel-group panel-main" data-toggle="accordion" id="bjui-accordionmenu" data-heightbox="#bjui-sidebar" data-offsety="26">

            <?php foreach($level as $k => $v){ ?>
            <div class="panel panel-default">
                <div class="panel-heading panelContent">
                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#bjui-accordionmenu" href="#bjui-collapse<?php echo ($k); ?>" class="<?php if($k == 0){echo 'active';} ?>"><i class="fa fa-caret-square-o-down"></i>&nbsp;<?php echo ($v["name"]); ?></a></h4>
                </div>
                <div id="bjui-collapse<?php echo ($k); ?>" class="panel-collapse panelContent collapse <?php if($k == 0){echo 'in';} ?>">
                    <div class="panel-body" >
                        <ul id="bjui-tree<?php echo ($k); ?>" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="<?php if($k == 0){echo 'true';}else{echo 'false';} ?>">
                            <?php foreach($leftMenu[$k] as $k2 => $v2){ ?>
                            <li data-id="<?php echo ($v2["id"]); ?>" data-pid="<?php echo ($v2["pid"]); ?>" <?php if($v2[url] != '#'){ ?>data-url="<?php echo U($v2['url']);?>" data-tabid="leftMenu_<?php echo ($v2["id"]); ?>" data-fresh="true" data-reloadWarn="true"<?php } ?>><?php echo ($v2["name"]); ?></li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
                <div class="panelFooter"><div class="panelFooterContent"></div></div>
            </div>
            <?php } ?>

        </div>
    </div>
</div>
        <div id="bjui-navtab" class="tabsPage">
            <div class="tabsPageHeader">
                <div class="tabsPageHeaderContent">
                    <ul class="navtab-tab nav nav-tabs">
                        <li data-tabid="main" class="main active"><a href="javascript:;"><span><i class="fa fa-home"></i> #maintab#</span></a></li>
                    </ul>
                </div>
                <div class="tabsLeft"><i class="fa fa-angle-double-left"></i></div>
                <div class="tabsRight"><i class="fa fa-angle-double-right"></i></div>
                <div class="tabsMore"><i class="fa fa-angle-double-down"></i></div>
            </div>
            <ul class="tabsMoreList">
                <li><a href="javascript:;">#maintab#</a></li>
            </ul>
            <div class="navtab-panel tabsPageContent layoutBox">
                <div class="page unitBox">
                    <div class="bjui-pageHeader" style="background:#FFF;">
                        <div style="padding: 0 5px; border-bottom: 1px #DDD solid;">
                            <h4><?php echo C('siteName');?></h4>
                            <hr style="margin: 12px 0 0px;">
                            <div class="row">
                                <div class="col-md-4">
                                    <h5>B-JUI论坛：<a href="http://www.b-jui.com" target="_blank">http://www.b-jui.com</a></h5>
                                </div>
                                <div class="col-md-4">
                                    <h5>项目地址：<a href="https://git.oschina.net/xvpindex/BJUI_TP_CMS" target="_blank">https://git.oschina.net/xvpindex/BJUI_TP_CMS</a></h5>
                                </div>
                                <div class="col-md-4">
                                    <h5>演示地址：<a href="http://www.topstack.cn" target="_blank">http://www.topstack.cn</a></h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bjui-pageContent" style="top: 80px; bottom: 0px;" data-layout-h="0">
                        <!--<div style="position: absolute;top:10px;right:0;width:300px;">-->
                            <!---->
                        <!--</div>-->
                        <!--<div style="">-->
                            <!--<div class="row" style="padding: 0 8px;">-->
                                <div class="col-md-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-bar-chart fa-fw"></i> 文章发布统计</h3></div>
                                        <div class="panel-body">
                                            <div style="min-width:400px;height:350px;" data-toggle="echarts" data-type="bar,line" data-url="<?php echo U('barChart');?>"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-line-chart fa-fw"></i> 会员新增统计</h3></div>
                                        <div class="panel-body">
                                            <div style="min-width:400px;height:350px;" data-toggle="echarts" data-type="line,bar" data-url="<?php echo U('lineChart');?>"></div>
                                        </div>
                                    </div>
                                </div>
                            <!--</div>-->
                        <!--</div>-->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer id="bjui-footer">Powered By <a href="http://www.topstack.cn" target="_blank">丹贸科技</a> Copyright &copy; 2014</footer>
</body>
</html>