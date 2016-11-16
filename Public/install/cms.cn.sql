/*
SQLyog Ultimate v8.32 
MySQL - 5.5.40 : Database - cms_ewsd_cn
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `ec_access` */

DROP TABLE IF EXISTS `ec_access`;

CREATE TABLE `ec_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限分配表';

/*Data for the table `ec_access` */

insert  into `ec_access`(`role_id`,`node_id`,`level`,`pid`,`module`) values (2,47,3,45,NULL),(2,46,3,45,NULL),(2,45,2,1,NULL),(2,44,3,32,NULL),(2,43,3,32,NULL),(2,42,3,32,NULL),(2,41,3,32,NULL),(2,40,3,32,NULL),(2,39,3,32,NULL),(2,38,3,32,NULL),(3,14,2,1,NULL),(3,13,3,4,NULL),(3,12,3,4,NULL),(3,11,3,4,NULL),(3,10,3,4,NULL),(3,4,2,1,NULL),(3,7,3,3,NULL),(3,3,2,1,NULL),(3,6,3,2,NULL),(3,5,3,2,NULL),(3,2,2,1,NULL),(3,1,1,0,NULL),(4,7,3,3,''),(4,3,2,1,''),(4,6,3,2,''),(4,5,3,2,''),(4,2,2,1,''),(4,1,1,0,''),(2,37,3,32,NULL),(2,36,3,32,NULL),(2,35,3,32,NULL),(2,34,3,32,NULL),(2,33,3,32,NULL),(2,32,2,1,NULL),(2,31,3,26,NULL),(2,30,3,26,NULL),(2,29,3,26,NULL),(2,28,3,26,NULL),(2,27,3,26,NULL),(2,26,2,1,NULL),(2,25,3,14,NULL),(2,24,3,14,NULL),(2,23,3,14,NULL),(2,22,3,14,NULL),(2,21,3,14,NULL),(2,20,3,14,NULL),(2,19,3,14,NULL),(2,18,3,14,NULL),(2,17,3,14,NULL),(2,16,3,14,NULL),(2,15,3,14,NULL),(2,9,3,14,NULL),(2,8,3,14,NULL),(2,14,2,1,NULL),(2,13,3,4,NULL),(2,12,3,4,NULL),(2,11,3,4,NULL),(2,10,3,4,NULL),(2,4,2,1,NULL),(2,7,3,3,NULL),(2,3,2,1,NULL),(2,6,3,2,NULL),(2,5,3,2,NULL),(2,2,2,1,NULL),(2,1,1,0,NULL),(2,48,3,45,NULL);

/*Table structure for table `ec_article` */

DROP TABLE IF EXISTS `ec_article`;

CREATE TABLE `ec_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` smallint(3) DEFAULT NULL COMMENT '所在分类',
  `title` varchar(200) DEFAULT NULL COMMENT '新闻标题',
  `visitNums` int(11) NOT NULL,
  `keywords` varchar(50) DEFAULT NULL COMMENT '文章关键字',
  `description` mediumtext COMMENT '文章描述',
  `status` tinyint(1) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL COMMENT '文章摘要',
  `thumbnail` varchar(500) DEFAULT NULL,
  `content` text,
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '点击数',
  `isDel` int(1) DEFAULT NULL,
  `uTime` bigint(13) DEFAULT NULL,
  `cUid` int(11) DEFAULT NULL COMMENT '发布者UID',
  `cTime` bigint(13) DEFAULT NULL,
  `uUid` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=206 DEFAULT CHARSET=utf8 COMMENT='新闻资讯表';

/*Data for the table `ec_article` */

insert  into `ec_article`(`id`,`cid`,`title`,`visitNums`,`keywords`,`description`,`status`,`summary`,`thumbnail`,`content`,`click`,`isDel`,`uTime`,`cUid`,`cTime`,`uUid`,`updated_at`) values (2,2,'IDC行业中的移动互联网战略',101,'','IDC行业中的移动互联网战略',1,'五十余年前的今天，互联网这个只是存在于大学研究室内的各种硬质的设备，网线之类的东西，最大的便利是用来远距离的传输各自所需要的文件资料。而整个互联网行业的飞速发展，把各个不同的行业的规则进行了重新的定义，手机单纯的通话语音功能也已经发展到了今天多重的数据增值服务内容。伟大的乔布斯重新定义了手机的终端功能，而随之带来的就是重新定义了互联网的规则。','/Uploads/image/2016/08/31/20160831220939_20632.jpg','<div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		五十余年前的今天，互联网这个只是存在于大学研究室内的各种硬质的设备，网线之类的东西，最大的便利是用来远距离的传输各自所需要的文件资料。而整个互联网行业的飞速发展，把各个不同的行业的规则进行了重新的定义，手机单纯的通话语音功能也已经发展到了今天多重的数据增值服务内容。伟大的乔布斯重新定义了手机的终端功能，而随之带来的就是重新定义了互联网的规则。\r\n	</p>\r\n	<p>\r\n		质量带来了数量的变化，而数量的累积带来了产业的变化了，推而广之，中国的4亿手机用户这样的消费群体上建立一个平台广泛应用到企业、商业和农村，是否会创造更惊天动地的奇迹？\r\n	</p>\r\n	<p>\r\n		这些在媒体频频出现的关键词，都预示一个新的时代到来，即\"宽带+移动+互联网\"时代。\r\n	</p>\r\n	<p>\r\n		我们已经领略了互联网以\"内容+应用\"方式所带来的工作、学习、生活及运营效率的提高，以及电信业发展所带来的沟通的无所不在。未来移动互联网时代必将是融合了电信与互联网的优势，将打破人们\"内容+应用\"的位置限制，将给用户提供随时随地的互联网内容及应用服务，用户获取服务将不再受时空的限制。\r\n	</p>\r\n	<p>\r\n		移动互联网现在主要提供的服务有沟通、信息、娱乐、办公、电子商务<img src=\"/Uploads/image/2016/08/31/20160831220939_20632.jpg\" alt=\"\" align=\"left\" height=\"265\" width=\"379\" />等。这些服务满足个人、家庭、企业、政府等不同客户的需求。\r\n	</p>\r\n	<p>\r\n		目前，我国每天多次使用手机上网的用户占到34%，手机用户上网的频率正稳步提高。专业人士认为，这一趋势将长期维持，从而形成更高的移动互联网使用率。\r\n	</p>\r\n	<p>\r\n		移动互联网的发展前景并非画饼充饥，而是由其市场需求所决定的。基于3G上的主要应用，除了视频通话以外，都将从现有的移动互联网业务中延伸而来。在移动互联网浪潮的推动下，移动支付、移动商务、RFID、NFC和二维码等技术应用将获得快速发展。\r\n	</p>\r\n	<p>\r\n		移动互联网、社会化媒体、电子商务、物联网以及云计算的快速发展，使企业在2012年面临大数据所带来的挑战。由于大数据与传统数据特征不同，因此大数据分析对性能和实时性要求更高，对软硬件体系架构提出了不同要求，大数据时代将推动用户存储及数据中心基础设施。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n</div>',0,0,1472988788,1,1363141340,1,1472988788),(3,5,'未来三年中国IDC市场发展预测',87,'银行理财','未来三年中国IDC市场发展预测',1,'近年来，随着国内信息产业的快速发展，加之云计算、物联网、三网融合等新兴产业的推动，国内IDC产业迎来快速发展期。据中国IDC圈发布的《2012-2013年度中国IDC产业发展研究报告》（以下简称“IDC报告”）显示，2007中国IDC产业规模约为34.6亿元人民币，在之后的5年间国内IDC行业基本保持40%以上的增长速度，虽然2012年国内IDC产业受到全球经济不景气的影响增长略有放缓，但与欧美地区相比，国内IDC产业增长趋势依然强劲，2012年IDC产业规模达到210.5亿元人民币，较2007年增长了6','/Uploads/image/2016/08/31/20160831220939_20632.jpg','<p style=\"text-indent:2em;\">\r\n	近年来，随着国内信息产业的快速发展，加之云计算、物联网、三网融合等新兴产业的推动，国内IDC产业迎来快速发展期。据中国IDC圈发布的《2012-2013年度中国IDC产业发展研究报告》（以下简称“IDC报告”）显示，2007中国IDC产业规模约为34.6亿元人民币，在之后的5年间国内IDC行业基本保持40%以上的增长速度，虽然2012年国内IDC产业受到全球经济不景气的影响增长略有放缓，但与欧美地区相比，国内IDC产业增长趋势依然强劲，2012年IDC产业规模达到210.5亿元人民币，较2007年增长了6倍。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	虽然国内IDC产业近几年增速比较明显，但仍然会受到一些诸如行业政策、移动互联网、新技术、行业应用环境等不确定因素的影响。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	从IDC报告分析来看，2011-2015年是“十二五”规划之年。中国政府也处于换届中，其工作重点将是处理好“保持经济平稳较快发展”、“调整经济结构”以及“管理通胀预期”三大任务之间的平衡关系。总体而言，未来三年年宏观经济政策将总体保持平稳和中性的原则，财政、货币政策将较为稳定，经济增速将保持在8%~10%之间。这样温和、稳定的宏观经济环境将为中国ICT市场发展提供较为良好的环境。此外，随着“十二五“规划的逐步开展和实施，一些重点领域和行业将迎来重要的发展机遇，这同样为ICT市场提供了新的发展动力。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	从国内互联网环境来看，截至2011年6月底，中国网民规模达4.85亿，较2010年底增加了2770万人，增幅仅为6.1%，网民规模增长明显减缓，最值得注意的是，微博用户数量以高达208.9%的增幅，从2010年底的6311万爆发增长到1.95亿，成为用户增长最快的互联网应用模式。在微博用户暴涨的过程中，手机微博的表现可圈可点，手机网民使用微博的比例从2010年末的15.5%上升至34%.包括网络购物、网上支付、网上银行、旅行预订在内的电子商务类应用在2011年继续保持稳步发展态势，其中网络购物用户规模达到1.94亿人，较上年底增长20.8%，网上支付用户和网上银行全年用户也增长了21.6%和19.2%，目前用户规模分别为1.67亿和1.66亿。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	对于近几年新兴产业相关技术发展来说，无论是云计算还是下一代数据中心的技术，当前中国自政府到企业都在提倡。目前，在软件园区、生物园区、动漫园区等政府扶植的新兴产业孵化园区，为园区内企业提供各类公共服务的云计算平台正在成为新的建设热点。预计未来几年，政府云计算建设将进一步增加，以降低成本和提升政府服务质量。随着各地政府云的建设浪潮，各种私有云的建设也将快速启动。与传统数据中心相比，新一代数据中心利用最新的 IT 技术和解决方案对数据中心的基础设施资产、信息数据资产、应用资产进行整合，形成共享的、虚拟化的、面向服务的整体数据中心结构，能够显著提高数据中心的资源利用率、消除信息孤岛、增强安全管理并降低能源消耗。虚拟化和云计算有助于提高数据中心效率，并减少实体数据中心规模，淘汰小型数据中心，把应用程序转移到大型的数据中心中。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	另外，随着 IT 技术的进步，企业的管理不断向精细化、集约化方向发展，集中化的企业级数据中心服务已成为大中型企事业单位业务正常运行的必要支撑。因此，为应对业务发展和 IT 技术进步的挑战，客户需要对数据中心运维不断进行更新改造和扩容。未来几年，我国金融、电信、能源等信息化程度较高的重点行业对数据中心服务的更新改造需求，互联网、生物、动漫等新兴行业对数据中心的外包需求以及云计算带来的巨大市场机遇，将推动我国IDC服务市场不断扩大。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	从IDC报告的分析结果可以看出，未来几年IDC产业大环境仍然比较有利，随着相关政策、技术和应用的逐步落实，IDC产业在未来几年，还将保持持续性高增长的态势。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>',0,0,1472989238,1,1363141499,1,1472989238),(6,5,'全球数据中心市场格局生变',95,'','全球数据中心市场格局生变',1,'目前，全球数据中心市场发展速度开始减缓，但金砖国家的这一市场仍然保持快速增长，数据中心的建设工作刚进入活跃期。与此同时，美国服务器、加拿大等发达国家被迫减少数据中心建设项目，并考虑如何提高数据中心效率。进入2012年，全球数据中心市场的格局正悄然发生改变。','/Uploads/image/2016/08/31/20160831220939_20632.jpg','<p style=\"text-indent:2em;\">\r\n	目前，全球数据中心市场发展速度开始减缓，但金砖国家的这一市场仍然保持快速增长，数据中心的建设工作刚进入活跃期。与此同时，<a href=\"http://www.lingzhong.cn/aserver.asp\">美国服务器</a>、加拿大等发达国家被迫减少数据中心建设项目，并考虑如何提高数据中心效率。进入2012年，全球数据中心市场的格局正悄然发生改变。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	美国适时修改战略\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	市场咨询公司Canalys的数据显示，2011年第三季度，全球数据中心基础设施规模达到了262亿美元，比上一季度增长了2.7%.数据中心管理工具市场也相应增长，据451IT咨询及机房和选址研究公司预计，2015年，数据中心管理工具市场规模将超过12.7亿美元。在2011年～2015年期间，这一领域年平均增长率将达到40%左右。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	但全球数据中心市场的领航者美国正考虑重新修订自己的数据中心部署战略和云战略，求“质”而不求“量”。美国是全球IT资源最重要的消费者，IT年度预算将近800亿美元，其中有30%的预算用于数据中心的建设。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	据Juniper Networks公司数据，美国政府计划缩减高度膨胀的IT基础设施投资。参与调查的企业中，有近60%的企业代表指出，他们的数据中心使用着超过20种不同的操作系统；有16%的企业代表表示，使用的操作系统数量超过100种。软件领域也遇到同样的问题：有48%的企业代表强调，他们使用的软件种类超过20种；有6%的企业代表表示正在使用的软件超过100种。在这种情况下，如果国家机构不下决心更换软件，那么向“云”过渡和缩减数据中心数量不仅不会带来显著效果，还会在系统管理方面增加负担。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	欧洲重视节能\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	据英国数据中心服务商Digital Realty Trust每年一度进行的一项独立调查显示，8%以上的欧洲公司计划今明两年扩建其数据中心的基础设施。报告称，越来越多的公司开始计量数据中心的能源利用效率。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	该项调查是在Digital Realty Trust的委托下，针对205家具有影响力的欧洲公司的IT决策者进行的。82%的受访决策者称，他们将在近期把数据中心的容量扩大，调查还发现，英国成为最热门的数据中心建设目的地。37%的受访者计划将数据中心建在英国，其次是法国（30%）、德国（26%）、西班牙（21%）和荷兰（21%）。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	主要城市和商业枢纽中心仍然是新建数据中心最受欢迎的所在地，其中伦敦、巴黎、都柏林、阿姆斯特丹和法兰克福是最热门的地方。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	在欧洲之外，美国（25%）是欧洲公司颇为青睐的目的市场，而亚太地区紧随其后（21%）。欧洲公司计划扩建数据中心的主要驱动力是安全性的提高、灾难后的数据恢复以及稳固战略的实施。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	在数据中心<a href=\"http://www.lingzhong.net/\">网站建设</a>中，节能意识逐渐深入人心。调查结果显示，采取一定措施控制电力消耗、提高能源利用效率的受访者数量有所增加。这一增长表明，仍存在改善能源利用效率的余地。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	对电流容量和功耗方面的调查结果显示，采取提高能源利用效率措施的受访者数量有所增加。尽管这仅仅是名义上的增加，但仍然显示出了改善余地。另外，PUE（Power Usage Effectiveness，电力使用效率，是评价数据中心能源效率的指标）水平有了明显的提高，这表明，企业仍然有办法减少因电力消耗和IT基础设施的环境负担而造成的运营成本。此项调查发现，有2/3的受访者在寻找伙伴组织的支持，特别是在收购和建设新的数据中心期间。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	总体而言，大家对“DIY”式的数据中心的兴趣正在减少。只有30%的参与调查者表示会考虑这种做法，比上年减少了4个百分点。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	俄罗斯急起直追\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	据Datacenter Dynamics公司预计，从投资角度来看，俄罗斯数据中心市场在2011～2012年期间将会超过印度、中国和巴西。从数据中心面积增长情况来看，俄罗斯在“金砖五国”当中将仅次于巴西。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	IDC数据显示，2010年俄罗斯商用数据中心服务开支规模超过了1.6亿美元。分析家预计，俄罗斯数据中心市场还将以较快速度继续发展，其中发展较快的领域将会是IT基础设施相关服务和设备租赁服务。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	根据市场分析人士的观点，俄罗斯IT咨询领域正在经历一个非常重要的发展时期。在后金融危机时期，综合性IT服务在市场上快速成熟，设备排列服务已经不再是客户使用数据中心的唯一出发点。IT市场中的数据中心领域的发展从本质上看已经超越了国界，国际竞争趋势也愈加明显。所有这一切给基础设施提供商带来的不仅仅是新的严峻考验，同时也带来了新的战略机遇。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	“云”唱主角\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	美国思科公司曾经指出，数据中心领域增长最快的是云计算。目前，云服务流量在数据中心总流量中的比重为11%左右。预计到2015年，数据中心年度总流量将增长4倍，达到4.8泽字节（Zettabyte），流量年均增长速度达到33%.因此，云计算对于信息技术的未来，以及视频和内容传输等起着至关重要的作用。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	事实上，数据中心的流量并不是由最终用户产生的，而是由支持用户后台操作、执行备份和数据复制等操作命令的数据中心和云本身产生的。到2015年，76%的数据中心流量将保留在数据中心内部。同时，工作量在各个虚拟机之间迁移并且产生一些后台的流量，只有17%的流量将提供给最终用户，还有7%的流量将用于处理数据峰值负载、数据复制、数据和应用的更新。\r\n</p>',0,0,1472989254,1,1394939633,1,1472989254),(7,5,'云计算很热 但何时能够大规模商用？',93,'','云计算很热 但何时能够大规模商用？',1,'什么是云计算，至今很多人可能都不清楚。金蝶国际软件集团董事局主席兼首席执行官徐少春笑称，很多人都问过他，他的回答是：“如果一个东西能够说得很懂，说明这个东西就没有太大价值。正是因为云计算蕴藏着太多技术、太多价值，所以他存在巨大的机会。”','/Uploads/image/2016/08/31/20160831220939_20632.jpg','<p style=\"text-indent:2em;\">\r\n	什么是云计算，至今很多人可能都不清楚。金蝶国际软件集团董事局主席兼首席执行官徐少春笑称，很多人都问过他，他的回答是：“如果一个东西能够说得很懂，说明这个东西就没有太大价值。正是因为云计算蕴藏着太多技术、太多价值，所以他存在巨大的机会。”\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	对于云计算何时“开花结果”？中国宽带资本董事长、创始合伙人田溯宁表示，“天时比什么都重要”。他解释说，就像早期我们做互联网的并不是因为我们聪明，或者有很多能力，而是时候赶得好，那时候互联网刚刚开始，坚持１０年都有成就。“我觉得ＩＴ行业就有这种好处，每１０年有一次变革，云计算是３０年未有的一次变革。”\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	云计算是否安全\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	对于云计算，主要时间在美国硅谷的fortinet创始人、董事长谢青表示，“将给中国一个很好的机会。”他表示，云计算改变了互联网的结构，云计算给了很多厂商、很多用户比较平等的新机会。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	对于外界普遍关心的云计算是否安全？谢青表示并不担心，他举例说：３０～４０年前大家使用信用卡，都很担心，这需要一个过程，云计算的安全为外界接受也需要有一个过程，信用卡至今每年都要处理一些不安全的问题。“把东西放在云端，我利用起来会比较方便，但我也要有一部分的损失，就看中间怎么平衡，采取多少安全手续。”他表示，找到一个平衡点，云计算才能不断往前发展。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	云计算何时能大规模商用\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	虽然目前云计算很热，但何时能尽快大规模变成商用赚钱？徐少春表示“过程会比较曲折，但只有与商业结合起来才能产生价值。”\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	怎么与商业结合起来？徐少春建议要让企业高层及每一名员工感觉到云服务带来的价值。原来ＥＲＰ给少数人用的，实际上ＥＲＰ可以给所有员工使用，移动互联网可以做到这一点，岗位变成了移动岗位，你可以在上厕所的时候审批工作流。现在有流行的说法，工作生活化，在家里就可以办公，像我们这样从事ＥＲＰ的公司，云计算给我们带来了巨大的机会。“我想也只有和商业应用起来，才真正让云计算与商业、企业产生很大的互动。”\r\n</p>',0,0,1472989267,1,0,1,1472989267),(204,2,'ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1',0,'','ceshi1ceshi1ceshi1ceshi1ceshi1',1,'ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1','','ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1',0,0,1473004776,1,1473004776,1,1473004776),(205,2,'ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2',0,'','ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2',0,'ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2','','ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2',0,0,1473004944,1,1473004944,1,1473004944);

/*Table structure for table `ec_article_reply` */

DROP TABLE IF EXISTS `ec_article_reply`;

CREATE TABLE `ec_article_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `content` text,
  `isDel` int(1) NOT NULL,
  `cUid` varchar(11) DEFAULT NULL,
  `cTime` int(10) DEFAULT NULL,
  `uUid` int(11) DEFAULT NULL,
  `uTime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ec_article_reply` */

/*Table structure for table `ec_category` */

DROP TABLE IF EXISTS `ec_category`;

CREATE TABLE `ec_category` (
  `cid` int(5) NOT NULL AUTO_INCREMENT,
  `fid` int(5) DEFAULT NULL COMMENT 'parentCategory上级分类',
  `oid` int(2) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL COMMENT '文章类型',
  `name` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `status` int(1) DEFAULT NULL COMMENT '是否启用状态',
  `isDel` int(1) NOT NULL,
  `cUid` int(11) DEFAULT NULL,
  `cTime` int(10) DEFAULT NULL,
  `uUid` int(11) DEFAULT NULL,
  `uTime` int(10) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻分类表';

/*Data for the table `ec_category` */

insert  into `ec_category`(`cid`,`fid`,`oid`,`type`,`name`,`status`,`isDel`,`cUid`,`cTime`,`uUid`,`uTime`) values (1,0,3,'article','新闻动态',1,0,NULL,NULL,NULL,NULL),(8,2,1,'product','软件产品',1,0,NULL,NULL,NULL,NULL),(2,0,2,'product','公司产品',1,0,NULL,NULL,NULL,NULL),(9,2,NULL,'product','产品分类三',0,0,NULL,NULL,NULL,NULL),(6,1,NULL,'article','其它新闻',0,0,NULL,NULL,NULL,NULL),(10,2,NULL,'product','产品分类四',0,0,NULL,NULL,NULL,NULL),(12,2,NULL,'product','产品分类六',0,0,NULL,NULL,NULL,NULL),(4,1,1,'article','公司动态',1,0,NULL,NULL,NULL,NULL),(5,1,3,'article','行业新闻',1,0,NULL,NULL,NULL,NULL),(11,2,NULL,'product','产品分类五',0,0,NULL,NULL,NULL,NULL),(3,1,2,'article','公司新闻',1,0,NULL,NULL,NULL,NULL),(7,2,2,'product','客户案例',1,0,NULL,NULL,NULL,NULL);

/*Table structure for table `ec_channel` */

DROP TABLE IF EXISTS `ec_channel`;

CREATE TABLE `ec_channel` (
  `cid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `fid` int(8) DEFAULT NULL,
  `oid` smallint(3) DEFAULT NULL COMMENT '发布者UID',
  `code` varchar(20) DEFAULT NULL COMMENT '所在分类',
  `url` varchar(200) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL COMMENT '系统内部固定频道',
  `position` int(1) DEFAULT NULL COMMENT '栏目位置,1为顶部显示,2为底部显示,3为顶部底部一起显示',
  `status` tinyint(1) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL COMMENT '新闻标题',
  `keywords` varchar(50) DEFAULT NULL COMMENT '文章关键字',
  `description` mediumtext COMMENT '文章描述',
  `summary` varchar(255) DEFAULT NULL COMMENT '文章摘要',
  `content` text,
  `sort` int(8) DEFAULT NULL,
  `isDel` int(1) NOT NULL,
  `cUid` int(11) DEFAULT NULL,
  `cTime` int(10) DEFAULT NULL,
  `uUid` int(11) DEFAULT NULL,
  `uTime` int(10) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='频道分类表';

/*Data for the table `ec_channel` */

insert  into `ec_channel`(`cid`,`fid`,`oid`,`code`,`url`,`model`,`position`,`status`,`name`,`keywords`,`description`,`summary`,`content`,`sort`,`isDel`,`cUid`,`cTime`,`uUid`,`uTime`) values (6,0,6,'about','/Article/page/code/about','page',2,1,'关于博主','','','','<p>\r\n	一、基本信息\r\n</p>\r\n<pre class=\"prettyprint lang-html\">网名：小策一喋\r\n籍贯性格：湖南人 吃得苦/霸得蛮/耐得烦\r\n联系方式：QQ：331273345 / Phone：18910886243\r\n兴趣爱好：代码、美食、影视、旅游\r\n关于本博：本博客基于ThinkPHP(Widget/TagLib)、MySQL、mongoDB、Redis、B-JUI、jQuery(jQuery-Plugins)、Bootstrap、Json、Rewrite等技术自主开发\r\n工作经验：七年PHP、ThinkPHP开发及Linux系统运维经验，目前在北京一国企信息中心负责系统架构设计、核心功能开发及系统运维管理工作</pre>\r\n<p>\r\n	二、掌握技能\r\n</p>\r\n<pre class=\"prettyprint lang-html\">PHP：熟练PHP开发，熟练ThinkPHP（ThinkPHP功能封装/Widget微件/TabLib自定义标签）开发\r\nDataBase：熟练MySQL、mongoDB数据库安装配置及性能调优，熟悉MsSQL数据库使用\r\nUI：熟练Jquery、Jquery插件开发，熟练B-JUI、Bootstrap、DIV+CSS及PhotoShop使用\r\nLinux：熟练Linux命令，熟悉Bash Shell开发，熟练Linux系统中lnmp、vsftp、rsync、squid等软件安装配置，熟练Linux环境中nginx、memcache、redis负载均衡集群架构配置\r\nSVN/GIT：熟练Linux及Windows环境下SVN、GIT的安装配置及协同开发\r\n.NET：熟悉C# MVC3开发\r\n</pre>\r\n<p>\r\n	三、开源项目\r\n</p>\r\n<pre class=\"prettyprint lang-html\">NO.1：开源前端框架<a href=\"http://www.b-jui.com\" target=\"_blank\">B-JUI</a>（借鉴<a href=\"http://www.j-ui.com\" target=\"_blank\">J-UI</a>、结合Bootstrap、Jquery开发）开发团队核心成员 <a href=\"http://git.oschina.net/xknaan/B-JUI\" target=\"_blank\">GIT</a> \r\nNO.2：基于ThinkPHP、B-JUI和MySQL/mongoDB开发的开源内容管理系统<a href=\"http://www.topstack.cn\" target=\"_blank\">ewsdCMS</a> <a href=\"https://coding.net/u/xvpindex/p/ewsdCMS/git\" target=\"_blank\">GIT</a></pre>\r\n<p>\r\n	四、项目经验\r\n</p>\r\n<pre class=\"prettyprint lang-html\">NO.1：中**公司：综合业务信息管理系统（PHP、ThinkPHP+MySQL开发，B/S架构）\r\nNO.2：中**公司：综合业务信息管理系统辅助工具（C#+MySQL开发，C/S架构）\r\nNO.3：中**公司：焊接行业在线培训及考试系统（ThinkPHP+MySQL开发，B/S架构）\r\nNO.4：中**公司：民用核安全设备无损检验人员资格考试在线测试系统（C#+MsSQL开发，C/S架构）\r\nNO.5：国家**局：检测行业在线培训及考试系统（C#+MsSQL MVC3开发，B/S架构)\r\nNO.6：中**公司：党建云管理系统（ThinkPHP+MySQL+mongoDB开发，B/S架构）\r\nNO.7：N个公司/企业/自媒体网站\r\n</pre>',1,0,NULL,0,NULL,1423016156),(1,0,1,'index','/','url',2,1,'网站首页','网站建设,系统开发,网站优化,SEO,网站维护,域名服务,虚拟主机,VPS,服务器租用,服务器托管','深圳易网时代信息技术有限公司是一家高科技软件开发服务提供商和网络运营商，公司以高科技为起点、以技术为核心、以强大的技术队伍为支撑，致力于为政府、企业、个人和网络提供商提供高技术含量的各类应用解决方案，网站系统开发和建设。','','<div class=\"myblock\">\n	<div class=\"header\">\n		公司简介\n	</div>\n	<ul>\n		<li>\n			易网时代网络科技是一家高科技软件开发服务提供商和网络运营商，公司以高科技为起点、以技术为核心、以强大的技术队伍为支撑\n		</li>\n		<li>\n			致力于为政府、企业、个人和网络提供商提供高技术含量的各类应用解决方案，网站系统开发和建设\n		</li>\n		<li>\n			易网时代网络科技拥有先进的技术实力和专业人才、优良的客户服务及其标准的国际化管理营销体系\n		</li>\n		<li>\n			在开发软件、互联网、网站建设应用和系统平台开发等方面始终保持领先地位，并获得了社会各行业的广泛赞誉和认同\n		</li>\n	</ul>\n</div>\n<div class=\"myblock\">\n	<div class=\"header\">\n		业务范围\n	</div>\n	<ul>\n		<li>\n			网站、自动办公系统OA、业务信息系统的规划及建设\n		</li>\n		<li>\n			域名申请、虚拟主机、VPS空间租用\n		</li>\n		<li>\n			网站的升级改造、优化及运行维护\n		</li>\n		<li>\n			DEDECMS系统、DEDEEIMS系统、DISCUZ系统、ThinkPHP框架等系统的技术支持\n		</li>\n		<li>\n			网站SEO优化、关键词排名\n		</li>\n	</ul>\n</div>',2,0,NULL,0,NULL,1404110671),(2,0,2,'ui','#','article',2,1,'前端设计',NULL,NULL,NULL,NULL,3,0,NULL,NULL,NULL,NULL),(3,0,3,'program','/','article',2,1,'后端开发',NULL,NULL,NULL,NULL,4,0,NULL,NULL,NULL,NULL),(4,0,4,'server','#','article',2,1,'系统运维',NULL,NULL,NULL,NULL,5,0,NULL,NULL,NULL,NULL),(5,0,5,'opinion','/Article/index/code/opinion','article',2,1,'码农视角',NULL,NULL,NULL,NULL,6,0,NULL,NULL,NULL,NULL),(7,2,0,'jsjQuery','/Article/index/code/jsjQuery','article',2,1,'JS/jQuery',NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL,NULL),(8,3,4,'','/Article/index/code/','article',2,1,'Shell开发','','','','',8,0,NULL,NULL,NULL,1418001526),(9,2,0,'htmldivcss','/Article/index/code/htmldivcss','article',2,1,'html/div/css',NULL,NULL,NULL,NULL,9,0,NULL,NULL,NULL,NULL),(10,3,3,'','/Article/index/code/','article',2,1,'Python开发','','','','',10,0,NULL,NULL,NULL,1418001322),(11,2,0,'Bootstrap','/Article/index/code/Bootstrap','article',2,1,'Bootstrap',NULL,NULL,NULL,NULL,11,0,NULL,NULL,NULL,NULL),(12,2,0,'photoshop','/Article/index/code/photoshop','article',2,1,'图形处理',NULL,NULL,NULL,NULL,12,0,NULL,NULL,NULL,NULL),(13,3,1,'','/Article/index/code/','article',2,1,'PHP开发',NULL,NULL,NULL,NULL,13,0,NULL,NULL,NULL,NULL),(14,3,2,'','/Article/index/code/','article',2,1,'ThinkPHP',NULL,NULL,NULL,NULL,14,0,NULL,NULL,NULL,NULL),(15,4,0,'linux','/Article/index/code/linux','article',2,1,'Linux系统',NULL,NULL,NULL,NULL,15,0,NULL,NULL,NULL,NULL),(16,4,0,'windows','/Article/index/code/windows','article',2,1,'Windows系统',NULL,NULL,NULL,NULL,16,0,NULL,NULL,NULL,NULL),(17,4,0,'database','/Article/index/code/database','article',2,1,'数据库',NULL,NULL,NULL,NULL,17,0,NULL,NULL,NULL,NULL),(18,4,0,'structruing','/Article/index/code/structruing','article',2,1,'架构设计',NULL,NULL,NULL,NULL,18,0,NULL,NULL,NULL,NULL),(19,4,0,'soft','/Article/index/code/soft','article',2,1,'工具软件',NULL,NULL,NULL,NULL,19,0,NULL,NULL,NULL,NULL);

/*Table structure for table `ec_config` */

DROP TABLE IF EXISTS `ec_config`;

CREATE TABLE `ec_config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT '0' COMMENT '参数类型\n0 为系统参数，不能删除\n1 为自定义参数',
  `name` varchar(50) NOT NULL DEFAULT '',
  `code` varchar(100) NOT NULL DEFAULT '',
  `value` text,
  `desc` text,
  `isDel` int(1) NOT NULL,
  `cUid` int(11) DEFAULT NULL,
  `cTime` int(10) DEFAULT NULL,
  `uUid` int(11) DEFAULT NULL,
  `uTime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='配置信息表';

/*Data for the table `ec_config` */

insert  into `ec_config`(`id`,`type`,`name`,`code`,`value`,`desc`,`isDel`,`cUid`,`cTime`,`uUid`,`uTime`) values (1,'input','站点名称','siteName','小策一喋 - 专注WEB开发及系统运维技术！','sdfsdf',0,NULL,NULL,NULL,NULL),(2,'input','站点关键词','keyword','前端设计,后端开发,系统运维','34234',0,NULL,NULL,NULL,NULL),(4,'textarea','站点描述','description','小策一喋 - 专注WEB开发及系统运维技术：前端设计、后端开发、系统运维','csf234',0,NULL,NULL,NULL,NULL),(5,'textarea','办公电话','tel','57968663','',0,NULL,NULL,NULL,NULL),(6,'input','手机号码','mobilephone','18588220078','',0,NULL,NULL,NULL,NULL),(7,'input','公司传真','fax','57968663','',0,NULL,NULL,NULL,NULL),(8,'input','联系邮箱','email','xvpindex@qq.com','',0,NULL,NULL,NULL,NULL),(9,'input','联系QQ','qq','470701948','',0,NULL,NULL,NULL,NULL),(10,'input','公司地址','address','深圳市南山区创业路中兴工业城13栋109室','',0,NULL,NULL,NULL,NULL),(11,'input','邮政编码','postcode','518054','',0,NULL,NULL,NULL,NULL),(14,'input','ICP备案号','','','',0,NULL,NULL,NULL,NULL),(15,'textarea','统计代码','counter','&lt;script language=&quot;javascript&quot; type=&quot;text/javascript&quot; src=&quot;http://js.users.51.la/7242161.js&quot;&gt;&lt;/script&gt;\r\n&lt;noscript&gt;&lt;a href=&quot;http://www.51.la/?7242161&quot; target=&quot;_blank&quot;&gt;&lt;img alt=&quot;我要啦免费统计&quot; src=&quot;http://img.users.51.la/7242161.asp&quot; style=&quot;border:none&quot; /&gt;&lt;/a&gt;&lt;/noscript&gt;','',0,NULL,NULL,NULL,NULL),(16,'input','邮件服务器','smtp_host','smtp.sina.com','',0,NULL,NULL,NULL,NULL),(17,'input','邮件发送端口','smtp_port','22','',0,NULL,NULL,NULL,NULL),(18,'input','发件人地址','from_email','xvpindex@sina.com123123','',0,NULL,NULL,NULL,NULL),(19,'input','发件人名称','from_name','赵峡策','',0,NULL,NULL,NULL,NULL),(20,'input','验证用户名','smtp_user','xvpindex','',0,NULL,NULL,NULL,NULL),(21,'input','验证密码','smtp_pass','123456','',0,NULL,NULL,NULL,NULL),(22,'input','回复EMAIL','reply_email','xvpindex@qq.com','',0,NULL,NULL,NULL,NULL),(23,'input','回复名称','reply_name','赵峡策','',0,NULL,NULL,NULL,NULL),(24,'input','接收测试邮件地址','test_email','331273345@qq.com','',0,NULL,NULL,NULL,NULL),(25,'input','概述列表方式下概述内容最大长度','subSummaryLen','300','',0,NULL,NULL,NULL,NULL),(26,'input','简述中可以使用的html标签','summaryHtmlTags','','',0,NULL,NULL,NULL,NULL),(28,'input','记住用户登录状态的cookie时间','autoLoginDuration','604800','用户登录时选择记住状态时cookie保存的时间，单位为秒',0,NULL,NULL,NULL,NULL),(29,'input','当前使用的模板','theme','eblog','',0,NULL,NULL,NULL,NULL),(30,'input','启用lazyload方式载入列表图片','enable_lazyload_img','1','',0,NULL,NULL,NULL,NULL),(31,'input','首页文章列表是否显示主题图片','post_list_show_topic_icon','0','',0,NULL,NULL,NULL,NULL),(32,'input','用户注册是否需要管理员审核','user_required_admin_verfiy','1','用户注册是否需要管理审核',0,NULL,NULL,NULL,NULL),(33,'input','用户注册是否需要邮件审核','user_required_email_verfiy','0','用户注册是否需要邮件审核',0,NULL,NULL,NULL,NULL),(34,'input','分类文章列表方式','post_list_type','0','0 为跟首页一样显示概述1 为标题列表方式',0,NULL,NULL,NULL,NULL),(35,'input','图片本地化','auto_remote_image_local','0','后台发表修改文章的时候自动将内容中的图片本地化，0为关闭，1为开启',0,NULL,NULL,NULL,NULL),(36,'input','手机网站每页显示文章数量7','mobile_post_list_page_count','8','手机网站每页显示文章数量',0,NULL,NULL,NULL,NULL),(37,'input','手机网站概述中允许使用的html标签78','mobileSummaryHtmlTags','','手机网站概述中允许使用的html标签，可以自行添加，如：&amp;amp;amp;amp;amp;amp;amp;amp;lt;b&amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;lt;img&amp;amp;amp;amp;amp;amp;amp;amp;gt;',0,NULL,NULL,NULL,NULL);

/*Table structure for table `ec_leftmenu` */

DROP TABLE IF EXISTS `ec_leftmenu`;

CREATE TABLE `ec_leftmenu` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `pid` int(5) DEFAULT NULL COMMENT 'parentCategory上级分类',
  `level` int(1) DEFAULT NULL,
  `oid` int(2) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL COMMENT '文章类型',
  `icon` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `fullName` varchar(50) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '是否启用状态',
  `fcdFromDate` varchar(7) DEFAULT NULL,
  `fcdToDate` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻分类表';

/*Data for the table `ec_leftmenu` */

insert  into `ec_leftmenu`(`id`,`pid`,`level`,`oid`,`type`,`icon`,`name`,`fullName`,`code`,`url`,`status`,`fcdFromDate`,`fcdToDate`) values (2,0,2,2,'product','group','内容管理',NULL,'45','#',1,NULL,NULL),(41,2,2,1,'system','dashboard','栏目管理',NULL,NULL,'Admin/Channel/index',1,NULL,NULL),(10,0,10,2,'product','sitemap','用户管理',NULL,'','#',1,NULL,NULL),(12,0,12,3,'product','beer','数据管理',NULL,'','#',1,NULL,NULL),(11,3,1,5,'system','globe','机构管理',NULL,'','Admin/Branch/index',1,NULL,NULL),(3,0,3,20,'system','cog','系统设置','','','#',1,NULL,NULL),(14,3,3,4,'system','file','自定义配置',NULL,'','Admin/Webinfo/index',1,NULL,NULL),(26,10,10,NULL,'system','file','用户列表',NULL,NULL,'Admin/User/index',1,NULL,NULL),(27,10,10,NULL,'system','file','节点管理',NULL,NULL,'Admin/Access/nodeList',1,NULL,NULL),(28,10,10,NULL,'system','file','角色管理',NULL,NULL,'Admin/Access/roleList',1,NULL,NULL),(34,12,12,NULL,'system','file','数据库备份',NULL,NULL,'Admin/SysData/index',1,NULL,NULL),(35,12,12,NULL,'system','file','数据库导入',NULL,NULL,'Admin/SysData/restore',1,NULL,NULL),(36,12,12,NULL,'system','file','数据库压缩包',NULL,NULL,'Admin/SysData/zipList',1,NULL,NULL),(37,12,12,NULL,'system','file','数据库优化修复',NULL,NULL,'Admin/SysData/repair',1,NULL,NULL),(38,3,3,1,'system','file','基础配置',NULL,NULL,'Admin/Webinfo/index',1,NULL,NULL),(39,3,3,2,'system','file','邮箱配置',NULL,NULL,'Admin/Webinfo/setEmailConfig',1,NULL,NULL),(40,3,3,3,'system','file','安全配置',NULL,NULL,'Admin/Webinfo/setSafeConfig',1,NULL,NULL),(44,2,2,2,NULL,'file','文章列表',NULL,NULL,'Admin/Article/index?type=1',1,NULL,NULL);

/*Table structure for table `ec_node` */

DROP TABLE IF EXISTS `ec_node`;

CREATE TABLE `ec_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='权限节点表';

/*Data for the table `ec_node` */

insert  into `ec_node`(`id`,`name`,`title`,`status`,`remark`,`sort`,`pid`,`level`) values (1,'Admin','后台管理',1,'网站后台管理项目',10,0,1),(2,'Index','管理首页',1,'',1,1,2),(3,'Member','注册会员管理',1,'',3,1,2),(4,'Webinfo','系统管理',1,'',4,1,2),(5,'index','默认页',1,'',5,4,3),(6,'myInfo','我的个人信息',1,'',6,2,3),(7,'index','会员首页',1,'',7,3,3),(8,'index','管理员列表',1,'',8,14,3),(9,'addAdmin','添加管理员',1,'',9,14,3),(10,'index','系统设置首页',1,'',10,4,3),(11,'setEmailConfig','设置系统邮件',1,'',12,4,3),(12,'testEmailConfig','发送测试邮件',1,'',0,4,3),(13,'setSafeConfig','系统安全设置',1,'',0,4,3),(14,'Access','权限管理',1,'权限管理，为系统后台管理员设置不同的权限',0,1,2),(15,'nodeList','查看节点',1,'节点列表信息',0,14,3),(16,'roleList','角色列表查看',1,'角色列表查看',0,14,3),(17,'addRole','添加角色',1,'',0,14,3),(18,'editRole','编辑角色',1,'',0,14,3),(19,'opNodeStatus','便捷开启禁用节点',1,'',0,14,3),(20,'opRoleStatus','便捷开启禁用角色',1,'',0,14,3),(21,'editNode','编辑节点',1,'',0,14,3),(22,'addNode','添加节点',1,'',0,14,3),(23,'addAdmin','添加管理员',1,'',0,14,3),(24,'editAdmin','编辑管理员信息',1,'',0,14,3),(25,'changeRole','权限分配',1,'',0,14,3),(26,'Article','资讯管理',1,'',0,1,2),(27,'index','新闻列表',1,'',0,26,3),(28,'category','新闻分类管理',1,'',0,26,3),(29,'add','发布新闻',1,'',0,26,3),(30,'edit','编辑新闻',1,'',0,26,3),(31,'del','删除信息',0,'',0,26,3),(32,'SysData','数据库管理',1,'包含数据库备份、还原、打包等',0,1,2),(33,'index','查看数据库表结构信息',1,'',0,32,3),(34,'backup','备份数据库',1,'',0,32,3),(35,'restore','查看已备份SQL文件',1,'',0,32,3),(36,'restoreData','执行数据库还原操作',1,'',0,32,3),(37,'delSqlFiles','删除SQL文件',1,'',0,32,3),(38,'sendSql','邮件发送SQL文件',1,'',0,32,3),(39,'zipSql','打包SQL文件',1,'',0,32,3),(40,'zipList','查看已打包SQL文件',1,'',0,32,3),(41,'unzipSqlfile','解压缩ZIP文件',1,'',0,32,3),(42,'delZipFiles','删除zip压缩文件',1,'',0,32,3),(43,'downFile','下载备份的SQL,ZIP文件',1,'',0,32,3),(44,'repair','数据库优化修复',1,'',0,32,3),(45,'Channel','栏目管理',1,'',4,1,2),(46,'index','栏目列表',1,'',0,45,3),(47,'add','添加栏目',1,'',0,45,3),(48,'edit','编辑栏目',1,'',0,45,3);

/*Table structure for table `ec_operationlog` */

DROP TABLE IF EXISTS `ec_operationlog`;

CREATE TABLE `ec_operationlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `cUid` int(11) DEFAULT NULL,
  `cTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `ec_operationlog` */

insert  into `ec_operationlog`(`id`,`content`,`cUid`,`cTime`) values (1,'UPDATE `ec_article` SET `title`=\'IDC行业中的移动互联网战略\',`cid`=\'5\',`status`=\'1\',`keywords`=\'\',`description`=\'IDC行业中的移动互联网战略\',`summary`=\'五十余年前的今天，互联网这个只是存在于大学研究室内的各种硬质的设备，网线之类的东西，最大的便利是用来远距离的传输各自所需要的文件资料。而整个互联网行业的飞速发展，把各个不同的行业的规则进行了重新的定义，手机单纯的通话语音功能也已经发展到了今天多重的数据增值服务内容。伟大的乔布斯重新定义了手机的终端功能，而随之带来的就是重新定义了互联网的规则。\',`thumbnail`=\'\',`content`=\'<div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		五十余年前的今天，互联网这个只是存在于大学研究室内的各种硬质的设备，网线之类的东西，最大的便利是用来远距离的传输各自所需要的文件资料。而整个互联网行业的飞速发展，把各个不同的行业的规则进行了重新的定义，手机单纯的通话语音功能也已经发展到了今天多重的数据增值服务内容。伟大的乔布斯重新定义了手机的终端功能，而随之带来的就是重新定义了互联网的规则。\r\n	</p>\r\n	<p>\r\n		质量带来了数量的变化，而数量的累积带来了产业的变化了，推而广之，中国的4亿手机用户这样的消费群体上建立一个平台广泛应用到企业、商业和农村，是否会创造更惊天动地的奇迹？\r\n	</p>\r\n	<p>\r\n		这些在媒体频频出现的关键词，都预示一个新的时代到来，即\\\"宽带+移动+互联网\\\"时代。\r\n	</p>\r\n	<p>\r\n		我们已经领略了互联网以\\\"内容+应用\\\"方式所带来的工作、学习、生活及运营效率的提高，以及电信业发展所带来的沟通的无所不在。未来移动互联网时代必将是融合了电信与互联网的优势，将打破人们\\\"内容+应用\\\"的位置限制，将给用户提供随时随地的互联网内容及应用服务，用户获取服务将不再受时空的限制。\r\n	</p>\r\n	<p>\r\n		移动互联网现在主要提供的服务有沟通、信息、娱乐、办公、电子商务<img src=\\\"/Uploads/image/2016/08/31/20160831220939_20632.jpg\\\" alt=\\\"\\\" align=\\\"left\\\" height=\\\"265\\\" width=\\\"379\\\" />等。这些服务满足个人、家庭、企业、政府等不同客户的需求。\r\n	</p>\r\n	<p>\r\n		目前，我国每天多次使用手机上网的用户占到34%，手机用户上网的频率正稳步提高。专业人士认为，这一趋势将长期维持，从而形成更高的移动互联网使用率。\r\n	</p>\r\n	<p>\r\n		移动互联网的发展前景并非画饼充饥，而是由其市场需求所决定的。基于3G上的主要应用，除了视频通话以外，都将从现有的移动互联网业务中延伸而来。在移动互联网浪潮的推动下，移动支付、移动商务、RFID、NFC和二维码等技术应用将获得快速发展。\r\n	</p>\r\n	<p>\r\n		移动互联网、社会化媒体、电子商务、物联网以及云计算的快速发展，使企业在2012年面临大数据所带来的挑战。由于大数据与传统数据特征不同，因此大数据分析对性能和实时性要求更高，对软硬件体系架构提出了不同要求，大数据时代将推动用户存储及数据中心基础设施。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n</div>\',`updated_at`=\'1472652636\',`uUid`=\'1\',`uTime`=\'1472652636\' WHERE `id` = \'2\'',1,1472652636),(2,'UPDATE `ec_article` SET `title`=\'IDC行业中的移动互联网战略\',`cid`=\'2\',`status`=\'1\',`keywords`=\'\',`description`=\'IDC行业中的移动互联网战略\',`summary`=\'五十余年前的今天，互联网这个只是存在于大学研究室内的各种硬质的设备，网线之类的东西，最大的便利是用来远距离的传输各自所需要的文件资料。而整个互联网行业的飞速发展，把各个不同的行业的规则进行了重新的定义，手机单纯的通话语音功能也已经发展到了今天多重的数据增值服务内容。伟大的乔布斯重新定义了手机的终端功能，而随之带来的就是重新定义了互联网的规则。\',`thumbnail`=\'\',`content`=\'<div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		五十余年前的今天，互联网这个只是存在于大学研究室内的各种硬质的设备，网线之类的东西，最大的便利是用来远距离的传输各自所需要的文件资料。而整个互联网行业的飞速发展，把各个不同的行业的规则进行了重新的定义，手机单纯的通话语音功能也已经发展到了今天多重的数据增值服务内容。伟大的乔布斯重新定义了手机的终端功能，而随之带来的就是重新定义了互联网的规则。\r\n	</p>\r\n	<p>\r\n		质量带来了数量的变化，而数量的累积带来了产业的变化了，推而广之，中国的4亿手机用户这样的消费群体上建立一个平台广泛应用到企业、商业和农村，是否会创造更惊天动地的奇迹？\r\n	</p>\r\n	<p>\r\n		这些在媒体频频出现的关键词，都预示一个新的时代到来，即\\\"宽带+移动+互联网\\\"时代。\r\n	</p>\r\n	<p>\r\n		我们已经领略了互联网以\\\"内容+应用\\\"方式所带来的工作、学习、生活及运营效率的提高，以及电信业发展所带来的沟通的无所不在。未来移动互联网时代必将是融合了电信与互联网的优势，将打破人们\\\"内容+应用\\\"的位置限制，将给用户提供随时随地的互联网内容及应用服务，用户获取服务将不再受时空的限制。\r\n	</p>\r\n	<p>\r\n		移动互联网现在主要提供的服务有沟通、信息、娱乐、办公、电子商务<img src=\\\"/Uploads/image/2016/08/31/20160831220939_20632.jpg\\\" alt=\\\"\\\" align=\\\"left\\\" height=\\\"265\\\" width=\\\"379\\\" />等。这些服务满足个人、家庭、企业、政府等不同客户的需求。\r\n	</p>\r\n	<p>\r\n		目前，我国每天多次使用手机上网的用户占到34%，手机用户上网的频率正稳步提高。专业人士认为，这一趋势将长期维持，从而形成更高的移动互联网使用率。\r\n	</p>\r\n	<p>\r\n		移动互联网的发展前景并非画饼充饥，而是由其市场需求所决定的。基于3G上的主要应用，除了视频通话以外，都将从现有的移动互联网业务中延伸而来。在移动互联网浪潮的推动下，移动支付、移动商务、RFID、NFC和二维码等技术应用将获得快速发展。\r\n	</p>\r\n	<p>\r\n		移动互联网、社会化媒体、电子商务、物联网以及云计算的快速发展，使企业在2012年面临大数据所带来的挑战。由于大数据与传统数据特征不同，因此大数据分析对性能和实时性要求更高，对软硬件体系架构提出了不同要求，大数据时代将推动用户存储及数据中心基础设施。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n</div>\',`updated_at`=\'1472652687\',`uUid`=\'1\',`uTime`=\'1472652687\' WHERE `id` = \'2\'',1,1472652687),(3,'UPDATE `ec_article` SET `title`=\'IDC行业中的移动互联网战略\',`cid`=\'2\',`status`=\'1\',`keywords`=\'\',`description`=\'IDC行业中的移动互联网战略\',`summary`=\'五十余年前的今天，互联网这个只是存在于大学研究室内的各种硬质的设备，网线之类的东西，最大的便利是用来远距离的传输各自所需要的文件资料。而整个互联网行业的飞速发展，把各个不同的行业的规则进行了重新的定义，手机单纯的通话语音功能也已经发展到了今天多重的数据增值服务内容。伟大的乔布斯重新定义了手机的终端功能，而随之带来的就是重新定义了互联网的规则。\',`thumbnail`=\'/Uploads/image/2016/08/31/20160831220939_20632.jpg\',`content`=\'<div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		五十余年前的今天，互联网这个只是存在于大学研究室内的各种硬质的设备，网线之类的东西，最大的便利是用来远距离的传输各自所需要的文件资料。而整个互联网行业的飞速发展，把各个不同的行业的规则进行了重新的定义，手机单纯的通话语音功能也已经发展到了今天多重的数据增值服务内容。伟大的乔布斯重新定义了手机的终端功能，而随之带来的就是重新定义了互联网的规则。\r\n	</p>\r\n	<p>\r\n		质量带来了数量的变化，而数量的累积带来了产业的变化了，推而广之，中国的4亿手机用户这样的消费群体上建立一个平台广泛应用到企业、商业和农村，是否会创造更惊天动地的奇迹？\r\n	</p>\r\n	<p>\r\n		这些在媒体频频出现的关键词，都预示一个新的时代到来，即\\\"宽带+移动+互联网\\\"时代。\r\n	</p>\r\n	<p>\r\n		我们已经领略了互联网以\\\"内容+应用\\\"方式所带来的工作、学习、生活及运营效率的提高，以及电信业发展所带来的沟通的无所不在。未来移动互联网时代必将是融合了电信与互联网的优势，将打破人们\\\"内容+应用\\\"的位置限制，将给用户提供随时随地的互联网内容及应用服务，用户获取服务将不再受时空的限制。\r\n	</p>\r\n	<p>\r\n		移动互联网现在主要提供的服务有沟通、信息、娱乐、办公、电子商务<img src=\\\"/Uploads/image/2016/08/31/20160831220939_20632.jpg\\\" alt=\\\"\\\" align=\\\"left\\\" height=\\\"265\\\" width=\\\"379\\\" />等。这些服务满足个人、家庭、企业、政府等不同客户的需求。\r\n	</p>\r\n	<p>\r\n		目前，我国每天多次使用手机上网的用户占到34%，手机用户上网的频率正稳步提高。专业人士认为，这一趋势将长期维持，从而形成更高的移动互联网使用率。\r\n	</p>\r\n	<p>\r\n		移动互联网的发展前景并非画饼充饥，而是由其市场需求所决定的。基于3G上的主要应用，除了视频通话以外，都将从现有的移动互联网业务中延伸而来。在移动互联网浪潮的推动下，移动支付、移动商务、RFID、NFC和二维码等技术应用将获得快速发展。\r\n	</p>\r\n	<p>\r\n		移动互联网、社会化媒体、电子商务、物联网以及云计算的快速发展，使企业在2012年面临大数据所带来的挑战。由于大数据与传统数据特征不同，因此大数据分析对性能和实时性要求更高，对软硬件体系架构提出了不同要求，大数据时代将推动用户存储及数据中心基础设施。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n</div>\',`updated_at`=\'1472988788\',`uUid`=\'1\',`uTime`=\'1472988788\' WHERE `id` = \'2\'',1,1472988788),(4,'UPDATE `ec_article` SET `title`=\'未来三年中国IDC市场发展预测\',`cid`=\'5\',`status`=\'1\',`keywords`=\'银行理财\',`description`=\'未来三年中国IDC市场发展预测\',`summary`=\'近年来，随着国内信息产业的快速发展，加之云计算、物联网、三网融合等新兴产业的推动，国内IDC产业迎来快速发展期。据中国IDC圈发布的《2012-2013年度中国IDC产业发展研究报告》（以下简称“IDC报告”）显示，2007中国IDC产业规模约为34.6亿元人民币，在之后的5年间国内IDC行业基本保持40%以上的增长速度，虽然2012年国内IDC产业受到全球经济不景气的影响增长略有放缓，但与欧美地区相比，国内IDC产业增长趋势依然强劲，2012年IDC产业规模达到210.5亿元人民币，较2007年增长了6\',`thumbnail`=\'/Uploads/image/2016/08/31/20160831220939_20632.jpg\',`content`=\'<p style=\\\"text-indent:2em;\\\">\r\n	近年来，随着国内信息产业的快速发展，加之云计算、物联网、三网融合等新兴产业的推动，国内IDC产业迎来快速发展期。据中国IDC圈发布的《2012-2013年度中国IDC产业发展研究报告》（以下简称“IDC报告”）显示，2007中国IDC产业规模约为34.6亿元人民币，在之后的5年间国内IDC行业基本保持40%以上的增长速度，虽然2012年国内IDC产业受到全球经济不景气的影响增长略有放缓，但与欧美地区相比，国内IDC产业增长趋势依然强劲，2012年IDC产业规模达到210.5亿元人民币，较2007年增长了6倍。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	虽然国内IDC产业近几年增速比较明显，但仍然会受到一些诸如行业政策、移动互联网、新技术、行业应用环境等不确定因素的影响。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	从IDC报告分析来看，2011-2015年是“十二五”规划之年。中国政府也处于换届中，其工作重点将是处理好“保持经济平稳较快发展”、“调整经济结构”以及“管理通胀预期”三大任务之间的平衡关系。总体而言，未来三年年宏观经济政策将总体保持平稳和中性的原则，财政、货币政策将较为稳定，经济增速将保持在8%~10%之间。这样温和、稳定的宏观经济环境将为中国ICT市场发展提供较为良好的环境。此外，随着“十二五“规划的逐步开展和实施，一些重点领域和行业将迎来重要的发展机遇，这同样为ICT市场提供了新的发展动力。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	从国内互联网环境来看，截至2011年6月底，中国网民规模达4.85亿，较2010年底增加了2770万人，增幅仅为6.1%，网民规模增长明显减缓，最值得注意的是，微博用户数量以高达208.9%的增幅，从2010年底的6311万爆发增长到1.95亿，成为用户增长最快的互联网应用模式。在微博用户暴涨的过程中，手机微博的表现可圈可点，手机网民使用微博的比例从2010年末的15.5%上升至34%.包括网络购物、网上支付、网上银行、旅行预订在内的电子商务类应用在2011年继续保持稳步发展态势，其中网络购物用户规模达到1.94亿人，较上年底增长20.8%，网上支付用户和网上银行全年用户也增长了21.6%和19.2%，目前用户规模分别为1.67亿和1.66亿。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	对于近几年新兴产业相关技术发展来说，无论是云计算还是下一代数据中心的技术，当前中国自政府到企业都在提倡。目前，在软件园区、生物园区、动漫园区等政府扶植的新兴产业孵化园区，为园区内企业提供各类公共服务的云计算平台正在成为新的建设热点。预计未来几年，政府云计算建设将进一步增加，以降低成本和提升政府服务质量。随着各地政府云的建设浪潮，各种私有云的建设也将快速启动。与传统数据中心相比，新一代数据中心利用最新的 IT 技术和解决方案对数据中心的基础设施资产、信息数据资产、应用资产进行整合，形成共享的、虚拟化的、面向服务的整体数据中心结构，能够显著提高数据中心的资源利用率、消除信息孤岛、增强安全管理并降低能源消耗。虚拟化和云计算有助于提高数据中心效率，并减少实体数据中心规模，淘汰小型数据中心，把应用程序转移到大型的数据中心中。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	另外，随着 IT 技术的进步，企业的管理不断向精细化、集约化方向发展，集中化的企业级数据中心服务已成为大中型企事业单位业务正常运行的必要支撑。因此，为应对业务发展和 IT 技术进步的挑战，客户需要对数据中心运维不断进行更新改造和扩容。未来几年，我国金融、电信、能源等信息化程度较高的重点行业对数据中心服务的更新改造需求，互联网、生物、动漫等新兴行业对数据中心的外包需求以及云计算带来的巨大市场机遇，将推动我国IDC服务市场不断扩大。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	从IDC报告的分析结果可以看出，未来几年IDC产业大环境仍然比较有利，随着相关政策、技术和应用的逐步落实，IDC产业在未来几年，还将保持持续性高增长的态势。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	<br />\r\n</p>\',`updated_at`=\'1472989238\',`uUid`=\'1\',`uTime`=\'1472989238\' WHERE `id` = \'3\'',1,1472989238),(5,'UPDATE `ec_article` SET `title`=\'全球数据中心市场格局生变\',`cid`=\'5\',`status`=\'1\',`keywords`=\'\',`description`=\'全球数据中心市场格局生变\',`summary`=\'目前，全球数据中心市场发展速度开始减缓，但金砖国家的这一市场仍然保持快速增长，数据中心的建设工作刚进入活跃期。与此同时，美国服务器、加拿大等发达国家被迫减少数据中心建设项目，并考虑如何提高数据中心效率。进入2012年，全球数据中心市场的格局正悄然发生改变。\',`thumbnail`=\'/Uploads/image/2016/08/31/20160831220939_20632.jpg\',`content`=\'<p style=\\\"text-indent:2em;\\\">\r\n	目前，全球数据中心市场发展速度开始减缓，但金砖国家的这一市场仍然保持快速增长，数据中心的建设工作刚进入活跃期。与此同时，<a href=\\\"http://www.lingzhong.cn/aserver.asp\\\">美国服务器</a>、加拿大等发达国家被迫减少数据中心建设项目，并考虑如何提高数据中心效率。进入2012年，全球数据中心市场的格局正悄然发生改变。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	美国适时修改战略\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	市场咨询公司Canalys的数据显示，2011年第三季度，全球数据中心基础设施规模达到了262亿美元，比上一季度增长了2.7%.数据中心管理工具市场也相应增长，据451IT咨询及机房和选址研究公司预计，2015年，数据中心管理工具市场规模将超过12.7亿美元。在2011年～2015年期间，这一领域年平均增长率将达到40%左右。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	但全球数据中心市场的领航者美国正考虑重新修订自己的数据中心部署战略和云战略，求“质”而不求“量”。美国是全球IT资源最重要的消费者，IT年度预算将近800亿美元，其中有30%的预算用于数据中心的建设。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	据Juniper Networks公司数据，美国政府计划缩减高度膨胀的IT基础设施投资。参与调查的企业中，有近60%的企业代表指出，他们的数据中心使用着超过20种不同的操作系统；有16%的企业代表表示，使用的操作系统数量超过100种。软件领域也遇到同样的问题：有48%的企业代表强调，他们使用的软件种类超过20种；有6%的企业代表表示正在使用的软件超过100种。在这种情况下，如果国家机构不下决心更换软件，那么向“云”过渡和缩减数据中心数量不仅不会带来显著效果，还会在系统管理方面增加负担。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	欧洲重视节能\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	据英国数据中心服务商Digital Realty Trust每年一度进行的一项独立调查显示，8%以上的欧洲公司计划今明两年扩建其数据中心的基础设施。报告称，越来越多的公司开始计量数据中心的能源利用效率。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	该项调查是在Digital Realty Trust的委托下，针对205家具有影响力的欧洲公司的IT决策者进行的。82%的受访决策者称，他们将在近期把数据中心的容量扩大，调查还发现，英国成为最热门的数据中心建设目的地。37%的受访者计划将数据中心建在英国，其次是法国（30%）、德国（26%）、西班牙（21%）和荷兰（21%）。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	主要城市和商业枢纽中心仍然是新建数据中心最受欢迎的所在地，其中伦敦、巴黎、都柏林、阿姆斯特丹和法兰克福是最热门的地方。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	在欧洲之外，美国（25%）是欧洲公司颇为青睐的目的市场，而亚太地区紧随其后（21%）。欧洲公司计划扩建数据中心的主要驱动力是安全性的提高、灾难后的数据恢复以及稳固战略的实施。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	在数据中心<a href=\\\"http://www.lingzhong.net/\\\">网站建设</a>中，节能意识逐渐深入人心。调查结果显示，采取一定措施控制电力消耗、提高能源利用效率的受访者数量有所增加。这一增长表明，仍存在改善能源利用效率的余地。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	对电流容量和功耗方面的调查结果显示，采取提高能源利用效率措施的受访者数量有所增加。尽管这仅仅是名义上的增加，但仍然显示出了改善余地。另外，PUE（Power Usage Effectiveness，电力使用效率，是评价数据中心能源效率的指标）水平有了明显的提高，这表明，企业仍然有办法减少因电力消耗和IT基础设施的环境负担而造成的运营成本。此项调查发现，有2/3的受访者在寻找伙伴组织的支持，特别是在收购和建设新的数据中心期间。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	总体而言，大家对“DIY”式的数据中心的兴趣正在减少。只有30%的参与调查者表示会考虑这种做法，比上年减少了4个百分点。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	俄罗斯急起直追\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	据Datacenter Dynamics公司预计，从投资角度来看，俄罗斯数据中心市场在2011～2012年期间将会超过印度、中国和巴西。从数据中心面积增长情况来看，俄罗斯在“金砖五国”当中将仅次于巴西。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	IDC数据显示，2010年俄罗斯商用数据中心服务开支规模超过了1.6亿美元。分析家预计，俄罗斯数据中心市场还将以较快速度继续发展，其中发展较快的领域将会是IT基础设施相关服务和设备租赁服务。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	根据市场分析人士的观点，俄罗斯IT咨询领域正在经历一个非常重要的发展时期。在后金融危机时期，综合性IT服务在市场上快速成熟，设备排列服务已经不再是客户使用数据中心的唯一出发点。IT市场中的数据中心领域的发展从本质上看已经超越了国界，国际竞争趋势也愈加明显。所有这一切给基础设施提供商带来的不仅仅是新的严峻考验，同时也带来了新的战略机遇。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	“云”唱主角\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	美国思科公司曾经指出，数据中心领域增长最快的是云计算。目前，云服务流量在数据中心总流量中的比重为11%左右。预计到2015年，数据中心年度总流量将增长4倍，达到4.8泽字节（Zettabyte），流量年均增长速度达到33%.因此，云计算对于信息技术的未来，以及视频和内容传输等起着至关重要的作用。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	事实上，数据中心的流量并不是由最终用户产生的，而是由支持用户后台操作、执行备份和数据复制等操作命令的数据中心和云本身产生的。到2015年，76%的数据中心流量将保留在数据中心内部。同时，工作量在各个虚拟机之间迁移并且产生一些后台的流量，只有17%的流量将提供给最终用户，还有7%的流量将用于处理数据峰值负载、数据复制、数据和应用的更新。\r\n</p>\',`updated_at`=\'1472989254\',`uUid`=\'1\',`uTime`=\'1472989254\' WHERE `id` = \'6\'',1,1472989254),(6,'UPDATE `ec_article` SET `title`=\'云计算很热 但何时能够大规模商用？\',`cid`=\'5\',`status`=\'1\',`keywords`=\'\',`description`=\'云计算很热 但何时能够大规模商用？\',`summary`=\'什么是云计算，至今很多人可能都不清楚。金蝶国际软件集团董事局主席兼首席执行官徐少春笑称，很多人都问过他，他的回答是：“如果一个东西能够说得很懂，说明这个东西就没有太大价值。正是因为云计算蕴藏着太多技术、太多价值，所以他存在巨大的机会。”\',`thumbnail`=\'/Uploads/image/2016/08/31/20160831220939_20632.jpg\',`content`=\'<p style=\\\"text-indent:2em;\\\">\r\n	什么是云计算，至今很多人可能都不清楚。金蝶国际软件集团董事局主席兼首席执行官徐少春笑称，很多人都问过他，他的回答是：“如果一个东西能够说得很懂，说明这个东西就没有太大价值。正是因为云计算蕴藏着太多技术、太多价值，所以他存在巨大的机会。”\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	对于云计算何时“开花结果”？中国宽带资本董事长、创始合伙人田溯宁表示，“天时比什么都重要”。他解释说，就像早期我们做互联网的并不是因为我们聪明，或者有很多能力，而是时候赶得好，那时候互联网刚刚开始，坚持１０年都有成就。“我觉得ＩＴ行业就有这种好处，每１０年有一次变革，云计算是３０年未有的一次变革。”\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	云计算是否安全\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	对于云计算，主要时间在美国硅谷的fortinet创始人、董事长谢青表示，“将给中国一个很好的机会。”他表示，云计算改变了互联网的结构，云计算给了很多厂商、很多用户比较平等的新机会。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	对于外界普遍关心的云计算是否安全？谢青表示并不担心，他举例说：３０～４０年前大家使用信用卡，都很担心，这需要一个过程，云计算的安全为外界接受也需要有一个过程，信用卡至今每年都要处理一些不安全的问题。“把东西放在云端，我利用起来会比较方便，但我也要有一部分的损失，就看中间怎么平衡，采取多少安全手续。”他表示，找到一个平衡点，云计算才能不断往前发展。\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	云计算何时能大规模商用\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	虽然目前云计算很热，但何时能尽快大规模变成商用赚钱？徐少春表示“过程会比较曲折，但只有与商业结合起来才能产生价值。”\r\n</p>\r\n<p style=\\\"text-indent:2em;\\\">\r\n	怎么与商业结合起来？徐少春建议要让企业高层及每一名员工感觉到云服务带来的价值。原来ＥＲＰ给少数人用的，实际上ＥＲＰ可以给所有员工使用，移动互联网可以做到这一点，岗位变成了移动岗位，你可以在上厕所的时候审批工作流。现在有流行的说法，工作生活化，在家里就可以办公，像我们这样从事ＥＲＰ的公司，云计算给我们带来了巨大的机会。“我想也只有和商业应用起来，才真正让云计算与商业、企业产生很大的互动。”\r\n</p>\',`updated_at`=\'1472989267\',`uUid`=\'1\',`uTime`=\'1472989267\' WHERE `id` = \'7\'',1,1472989267),(7,'INSERT INTO `ec_article` (`id`,`title`,`cid`,`status`,`keywords`,`description`,`summary`,`thumbnail`,`content`,`updated_at`,`cUid`,`uTime`,`cTime`) VALUES (\'\',\'ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1\',\'2\',\'1\',\'\',\'ceshi1ceshi1ceshi1ceshi1ceshi1\',\'ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1\',\'\',\'ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1ceshi1\',\'1473004776\',\'1\',\'1473004776\',\'1473004776\')',1,1473004776),(8,'INSERT INTO `ec_article` (`id`,`title`,`cid`,`status`,`keywords`,`description`,`summary`,`thumbnail`,`content`,`updated_at`,`cUid`,`uTime`,`cTime`) VALUES (\'0\',\'ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2\',\'2\',\'0\',\'\',\'ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2\',\'ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2\',\'\',\'ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2ceshi2\',\'1473004944\',\'1\',\'1473004944\',\'1473004944\')',1,1473004944),(9,'UPDATE `ec_article` SET `visitNums`=visitNums+1 WHERE `id` = 7',1,1473261967),(10,'UPDATE `ec_article` SET `visitNums`=visitNums+1 WHERE `id` = 7',1,1473261979),(11,'UPDATE `ec_article` SET `visitNums`=visitNums+1 WHERE `id` = 7',1,1473262050),(12,'UPDATE `ec_article` SET `visitNums`=visitNums+1 WHERE `id` = 7',1,1473262072),(13,'UPDATE `ec_article` SET `visitNums`=visitNums+1 WHERE `id` = 7',1,1473262697),(14,'UPDATE `ec_article` SET `visitNums`=visitNums+1 WHERE `id` = 7',1,1473262796),(15,'UPDATE `ec_article` SET `visitNums`=visitNums+1 WHERE `id` = 7',1,1473262806);

/*Table structure for table `ec_role` */

DROP TABLE IF EXISTS `ec_role`;

CREATE TABLE `ec_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='权限角色表';

/*Data for the table `ec_role` */

insert  into `ec_role`(`id`,`name`,`pid`,`status`,`remark`) values (1,'超级管理员',0,1,'系统内置超级管理员组，不受权限分配账号限制'),(2,'管理员',1,1,'拥有系统仅此于超级管理员的权限'),(3,'领导',1,1,'拥有所有操作的读权限，无增加、删除、修改的权限'),(4,'测试组',1,1,'测试');

/*Table structure for table `ec_role_user` */

DROP TABLE IF EXISTS `ec_role_user`;

CREATE TABLE `ec_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户角色表';

/*Data for the table `ec_role_user` */

insert  into `ec_role_user`(`role_id`,`user_id`) values (2,'1');

/*Table structure for table `ec_user` */

DROP TABLE IF EXISTS `ec_user`;

CREATE TABLE `ec_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `pwd` char(32) DEFAULT NULL COMMENT '登录密码',
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '账号状态',
  `tel` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL COMMENT '登录账号',
  `remark` varchar(255) DEFAULT '' COMMENT '备注信息',
  `findCode` char(5) DEFAULT NULL COMMENT '找回账号验证码',
  `allowSystem` varchar(100) DEFAULT NULL,
  `isDel` int(1) NOT NULL,
  `cUid` int(11) DEFAULT NULL,
  `cTime` int(10) DEFAULT NULL COMMENT '开通时间',
  `uUid` int(11) DEFAULT NULL,
  `uTime` int(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='网站后台管理员表';

/*Data for the table `ec_user` */

insert  into `ec_user`(`uid`,`oid`,`nickname`,`username`,`pwd`,`name`,`sex`,`status`,`tel`,`mobile`,`email`,`remark`,`findCode`,`allowSystem`,`isDel`,`cUid`,`cTime`,`uUid`,`uTime`) values (1,1,'小策一喋','admin','b9d11b3be25f5a1a7dc8ca04cd310b28','小策一喋','男',1,'','','','我是超级管理员 哈哈~~','','Admin;Dangjian',0,1,1387763092,1,1416885758);

/*Table structure for table `trole` */

DROP TABLE IF EXISTS `trole`;

CREATE TABLE `trole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `trole` */

/*Table structure for table `tuser` */

DROP TABLE IF EXISTS `tuser`;

CREATE TABLE `tuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdatetime` datetime DEFAULT NULL,
  `modifydatetime` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tuser` */

insert  into `tuser`(`id`,`createdatetime`,`modifydatetime`,`name`,`pwd`,`create_time`,`update_time`) values (1,'2015-04-23 09:07:15','2015-04-23 09:07:19','赵峡策','123456','2015-04-23 09:07:45','2015-04-23 09:07:50'),(2,'2015-04-23 09:08:56','2015-04-23 09:08:59','赵策','654321','2015-04-23 09:09:13','2015-04-23 09:09:16');

/*Table structure for table `tuser_trole` */

DROP TABLE IF EXISTS `tuser_trole`;

CREATE TABLE `tuser_trole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tuser_trole` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
