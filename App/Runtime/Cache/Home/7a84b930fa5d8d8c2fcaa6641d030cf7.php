<?php if (!defined('THINK_PATH')) exit();?><ol class="breadcrumb">
	<li><a href="/"><i class="fa fa-home fa-fw"></i>网站首页</a></li>
	<?php if(is_array($linkMenu)): $i = 0; $__LIST__ = $linkMenu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["link"]); ?>"><?php echo ($vo["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
	<span class="pull-right">
		<?php if(strstr($_SERVER['REQUEST_URI'],"article-")){ echo $articleDetail["cacheInfo"]; } else if(strstr($_SERVER['REQUEST_URI'],"index-")){ echo $articleList["cacheInfo"]; } else if(strstr($_SERVER['REQUEST_URI'],"page-")){ echo $channelDetail["cacheInfo"]; } ?>
	</span>
</ol>