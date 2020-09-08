/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.22-community-log : Database - db_wic_book_manager
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_wic_book_manager` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `db_wic_book_manager`;

/*Table structure for table `tb_admin` */

DROP TABLE IF EXISTS `tb_admin`;

CREATE TABLE `tb_admin` (
  `admin_id` int(100) NOT NULL auto_increment COMMENT '管理员编号',
  `admin_acount` varchar(255) NOT NULL default '' COMMENT '管理员账号',
  `admin_psw` varchar(255) NOT NULL default '' COMMENT '管理员密码',
  PRIMARY KEY  (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_admin` */

insert  into `tb_admin`(`admin_id`,`admin_acount`,`admin_psw`) values (1,'admin','4162b4cc70e907fabd08aa44157cbc62');

/*Table structure for table `tb_book` */

DROP TABLE IF EXISTS `tb_book`;

CREATE TABLE `tb_book` (
  `book_id` int(100) NOT NULL auto_increment COMMENT '编号',
  `book_image` varchar(255) NOT NULL default '' COMMENT '图书封面',
  `book_name` varchar(255) NOT NULL default '' COMMENT '图书名',
  `book_author` varchar(255) NOT NULL default '' COMMENT '作者',
  `publish_code` int(100) NOT NULL COMMENT '出版号',
  `publish_name` varchar(255) NOT NULL default '' COMMENT '出版社',
  `publish_time` date NOT NULL COMMENT '出版时间',
  `book_price` double NOT NULL default '0' COMMENT '图书价格',
  `book_info` text NOT NULL COMMENT '图书详情',
  `sales_num` double NOT NULL default '0' COMMENT '价格',
  `class_code` varchar(100) NOT NULL default '' COMMENT '类别号',
  PRIMARY KEY  (`book_id`,`publish_code`),
  UNIQUE KEY `publish_code` (`publish_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_book` */

insert  into `tb_book`(`book_id`,`book_image`,`book_name`,`book_author`,`publish_code`,`publish_name`,`publish_time`,`book_price`,`book_info`,`sales_num`,`class_code`) values (7,'img/bookphoto/5664187.jpg','判决的批判:写在世纪之末','[美]肯尼迪 著,王家国 译',751183037,'法律出版社','2012-10-01',17.9,'美国通过判决与立法两种不同的途径来组织法律创制,本书对这一社会实践的政治效果提出一套理论。这是一部一般社会理论的著作,写作采用了左派/后现代主义者的视角。该书把判决与立法看作政治与文化生活的组成部分,书中所讨论的主要问题是政治意识形态,简单地说比如“自由主义”与“保守主义”,或“州的权利”与“废奴主义”等,在部分司法活动中(*好描述为造法)所起的作用。司法造法已然成为这样那样的意识形态方案的载体,通过对这些不同点的揭示来讨论一个重大问题,即判决在社会中的意义与影响。',1,'law123'),(8,'img/bookphoto/8060353.jpg','法学原论系列现代公司法(第2版)(上下)','刘俊海著',978751188,'法律出版社','2015-09-01',159.6,'《现代公司法（第三版 上下）》主要是根据《公',5,'law123'),(9,'img/bookphoto/7490281.jpg','法的经济解释-法律人的倚天屠龙','熊秉元',978750609,'东方出版社','2017-05-01',14.9,'在诸多法律较为成熟的国家，法律经济学已在其',12,'law123'),(10,'img/bookphoto/7276814.jpg','倒转地极','[美]克莱夫·卡斯勒 著,李继宏 译',978721008,'京江出版社','2016-07-01',15.1,'一段尘封数十年的机密往事 ',4,'science123'),(11,'img/bookphoto/4289707.jpg','格兰特船长的儿女','（法）凡尔纳',978754700,'万卷出版公司','2009-07-01',7.3,'《格兰特船长的儿女》是法国作家、“科幻小说之',7,'science123'),(12,'img/bookphoto/7927641.jpg','时间回旋','罗伯特.查尔斯.威尔森',978753216,'上海文艺出版社','2018-09-01',25.6,'地球突然被一层神秘的黑膜——“时间回旋”——包',52,'science123'),(13,'img/bookphoto/7661942.jpg','沉睡的巨物','(加)沙利文·纽威尔(Sylvain N',978754552,'北京出版社','2017-11-01',13.7,'由一系列审讯记录、绝密日志等文件构成的科幻',13,'science123'),(14,'img/bookphoto/7835222.jpg','小生物语','乙一',978702012,'人民文学','2014-09-01',29.3,'主人公如何在水床上构思密室小说、在与友人聚',9,'science123'),(15,'img/bookphoto/7263859.jpg','改变历史进程的50种机械','(英)埃里克·查林著',978755522,'青岛出版社','2016-05-01',20.9,'',11,'child123'),(16,'img/bookphoto/7554449.jpg','植物大百科-中国少年儿童探索百科','刘全儒',978755365,'浙江教育','2017-05-01',48.3,'这本《植物大百科》能够顺利与小读者们见面，',6,'child123'),(17,'img/bookphoto/7257654.jpg','改变历史进程的50种矿物','埃里克.查林',978755523,'青岛出版社','2016-05-01',15.9,'我们可以从多种不同视角来阐述人类文明。迄今',9,'child123'),(18,'img/bookphoto/7396414.jpg','DK自然传奇大百科','本书编委会',978712130,'电子工业出版社','2017-01-01',90.9,'在自然的深处，汇聚着难以计量的生命 从动物到植物，从骨骼到濒危动物，从池塘到海岸， 完整呈现大自然的面貌 ★经典品牌 DK *品牌EYEWITNESS系列精华版 ★全球畅销 畅销全球90多个国家，被翻译为40多种语言 ★形式独特 以主题形式编排，1500余个知识点，内容丰富有趣；1000多幅清晰图片，超值珍藏 ★权威审校 与英国自然历史博物馆合作，中文版来自中国科学院等专家精心审定 ★科普之美 让孩子“目击”科学，轻松“悦读”，发现自然之美 ',8,'child123'),(19,'img/bookphoto/6974297.jpg','恐龙百科彩色图鉴','易州',978755023,'北京联合出版公司','2014-12-01',37.9,'《中国家庭理想藏书系列：恐龙百科彩色图鉴',45,'child123'),(20,'img/bookphoto/4202871.jpg','丛林里的动物-第一次发现丛书','（法）梅特勒尔',978754480,'接力出版社','2009-08-01',20.9,'“透视眼系列·动物类”共17本，介绍“藏在家里的动',123,'child123'),(21,'img/bookphoto/7345871.jpg','森林林地卷-彩绘神奇的鸟类世界','库尔基',978753769,'河北少年儿童出版社','2017-01-01',23.1,'知识性与文学性相结合。本书用极具文学美感的语言讲述了100多种重点鸟类科普知识，让孩子在了解了丰富的鸟类知识的同时，又体会到文学之美。 科学性与美术性相结合。本书是一部介绍鸟类知识的科普书，里面的知识丰富具体，科学性极强。同时，这也是一本画面十分精美的绘本。作者用细腻生动的画面将世间精灵——鸟描绘得惟妙惟肖，大大地增强了科普知识的亲和力。科普性与生活化相结合。作者用缜密细心的观察、生动有趣的叙述让孩子们发觉原来鸟儿离自己并不遥远，它们就生活在小区里、公园里、学校里。让孩子们在读科普知识的同时，更有了仔细观察生活科普、记录生活科普的积极的学习愿望。',45,'child123'),(22,'img/bookphoto/7663892.jpg','老人与海','[美]厄尼斯特·海明威',978751830,'石油工业出版社','2015-08-01',33.3,'《老人与海(温暖插画纪念版)》是美国著名小说家厄尼斯特·海明威（1899年—1961年）写下的*著名的作品之一，并于1953和1954年分别荣获普利策奖和诺贝尔文学奖。本书不仅在翻译上一如继往地保持了以往温暖流畅的风格，更在插画上下足功夫，专门采用电脑绘图与水彩手绘相结合的画法，突出40余幅精美插画的唯美写实风格，细腻诠释了爱与勇气的真谛！',72,'world123'),(23,'img/bookphoto/6546071.jpg','少年','(俄)陀思妥耶夫斯基著',978711908,'外文出版社','2014-04-01',16.3,'《少年》是陀思妥耶夫斯基后期的一部重要作',45,'world123'),(24,'img/bookphoto/7060524.jpg','羊脂球','莫泊桑',978755310,'巴蜀书社','2015-10-01',23.5,'这是琥珀经典文丛之一。 周国平、曹文轩、刘震云、严歌苓、毕淑敏、白岩松，推荐导读 纪德：莫泊桑是“卓越超群、完美无缺”的文学巨匠。 《羊脂球》： 谁也不看她，想不到她，她感到自己淹没在这些道貌岸然的混蛋的蔑视中，他们起先牺牲她，然后又把她当作肮脏无用的东西抛弃她。……她做出极大的努力，坚强地顶住，像孩子一样将啜泣咽下去，可是哭泣的愿望往上涌，在眼眶边泪水晶莹发光，不久，两颗大泪珠夺眶而出，慢慢地滚落腮边。 英国著名作家 毛姆： 除了莫泊桑，我再也找不到更好的老师了。 莫泊桑的小说都是好小说。撇开叙述技巧不谈，故事本身就趣味盎然，在餐桌上讲讲是很吸引人的，这一点我认为是他的**优点。 他有塑造活生生人物的惊人才能。不管篇幅多短，即使在寥寥几页中，他也照样能写出六七个人物，而且个个栩栩如生。你想知道的，他全能给你描绘出来。 他的环境描写也一样，非常准确、简洁，给人的印象很深刻。其目的都很简单，那就是为了故事的需要。在这方面，我觉得没有人能和他相比。 除了莫泊桑，我再也找不到更好的老师了。——毛姆（英国著名作家）',4,'world123'),(25,'img/bookphoto/8115592.jpg','呼啸山庄','（英）艾米莉.勃朗特著',978751391,'民主与建设出版社','2018-06-01',35.2,'吉卜赛弃儿希思克利夫被呼啸山庄的主人恩肖先生收养后，与其女凯瑟琳相互爱慕，并且反抗其子亨得利的专横暴虐。凯瑟琳因为和希思克利夫社会地位的悬殊以及自己的虚荣心，与画眉山庄的主人埃德加结婚。希斯克利夫愤而出走，三年后致富回乡，发现凯瑟琳已嫁埃德加，便对夺走他爱情与幸福的人进行残酷的报复，通过赌博夺走了亨得利的家财，使其儿子哈里顿成为奴仆，还故意娶了埃德加的妹妹伊莎贝拉进行迫害。希思克利夫的复仇虽然成功了，但他并未从中获得幸福。很终不吃不喝苦恋而死。小凯瑟琳和哈里顿继承了山庄和田庄的产业，两人终于相爱，去画眉田庄安了家。',5,'world123'),(26,'img/bookphoto/5168811.jpg','海底两万里','（法）儒勒·凡尔纳',978753545,'长江文艺出版社','2011-06-01',24.5,'本书是儒勒·凡尔纳的著名科幻小说三部曲中的第二部，主要讲述“鹦鹉螺”号潜艇的故事。该书预见性地描绘了潜水艇、深海潜水和电的众多用途。匠心独具，布局巧妙，在漫长的旅行中，时而将读者推入险象环生的险恶环境，时而又带进充满诗情画意的美妙境界，波澜壮阔的场面描绘和细致入微的细节刻画交替出现。它是公认的科幻小说中的经典之作。',32,'world123'),(27,'img/bookphoto/7808864.jpg','随园食单','袁枚',978751313,'开明出版社','2018-04-01',38.9,'随园食单》堪称食经。',52,'food123'),(28,'img/bookphoto/7878946.jpg','舌尖上的战争:食物、战争、历史的奇妙联系','李从嘉',978754725,'吉林文史出版社','2018-08-01',51.9,'除刀剑、枪炮、核弹外，人类战争史上还存在一种特别的武器， \r\n它如此常见，甚至脱离了武器的范畴，以至于我们经常忽略了它的存在。 \r\n但它确是杀人如麻、血债累累，决定了无数争斗的开始以及结果。 \r\n它带来了饱足，也点燃欲望。 \r\n它的名字你猜到了吗？ ',41,'food123'),(29,'img/bookphoto/7739539.jpg','梦的解析','[奥地利]西格蒙德·弗洛伊德 ',978751681,'台海出版社','2018-02-01',17.6,'《梦的解析》作为世界上首部以科学方法来分析研究“梦”的著作，《梦的解析》不但为人类潜意识的学说奠定了牢固的基础，而且也建立了人类认识自己的新里程碑。包含了许多对文学、神话、教育等领域具有启示性的观点。 \r\n　　《梦的解析》创造性地发明了潜意识、前意识、超我、本我、自我、力比多等词，这些词从心理学蔓延出去，影响了包括社会学、管理学、法学、量子物理、宗教学等几乎所有文理科的科学领域，甚至在自然科学领域也留下了痕迹。 \r\n　　《梦的解析》堪称一部划时代的著作，不仅得到心理学家荣格的大力推崇，还伴有文学界的托马斯·曼和哲学家弗洛姆的梦境感悟。这是一部跨越宗教、哲学、艺术和心理学等综合学科的经典文献，堪称心理学的“**”。',12,'phyco123'),(30,'img/bookphoto/7295719.jpg','Linux运维之道','丁明一',978712129,'电子工业出版社','2016-08-01',55.3,'《Linux运维之道》从运维工作的实际需求出发，全面讲解相关的技术、经典案例，以及常见问题的解决方案。 \r\n　　★作者丁明一具有丰富的实践及教学经验，且非常认真，《Linux运维之道》是其呕心沥血之作，不仅内容精益求精，代码的编排作者也花了一些心思，可见其缜密。 \r\n　　★《Linux运维之道》得到了多位业内专家的强烈推荐，包括红帽大中华区考官黄军宝、原红帽中国高级认证考官许成林，以及百度、新浪、达内、武汉誉天的运维工程师和培训讲师。 \r\n　　★运维是一项需要多种技能的工作，Linux运维之道作者丁明一告诉您如何成为一名合格的运维工程师，能够直接提高运维人员的工作效率，值得阅读。 \r\n　　★本书在*版的基础上进行了全面细致的修订，所有内容全面升级至CentOS7.2系统。 ',46,'computer123');

/*Table structure for table `tb_class` */

DROP TABLE IF EXISTS `tb_class`;

CREATE TABLE `tb_class` (
  `class_id` int(100) NOT NULL auto_increment COMMENT '编号',
  `class_code` varchar(100) NOT NULL COMMENT '类别号',
  `class_name` varchar(255) NOT NULL default '' COMMENT '类别名',
  PRIMARY KEY  (`class_id`,`class_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_class` */

insert  into `tb_class`(`class_id`,`class_code`,`class_name`) values (1,'law123','法律'),(2,'science123','科幻'),(3,'child123','少儿科普'),(4,'world123','世界名著'),(5,'food123','美食'),(6,'phyco123','心理学'),(7,'computer123','计算机');

/*Table structure for table `tb_collect` */

DROP TABLE IF EXISTS `tb_collect`;

CREATE TABLE `tb_collect` (
  `collect_id` int(100) NOT NULL auto_increment COMMENT '编号',
  `collect_num` int(100) NOT NULL default '0' COMMENT '数量',
  `user_id` int(100) default NULL COMMENT '用户id',
  `book_name` varchar(200) default NULL COMMENT '书名',
  `book_price` double default '0' COMMENT '书架',
  `collect_money` double default NULL COMMENT '合计',
  PRIMARY KEY  (`collect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_collect` */

insert  into `tb_collect`(`collect_id`,`collect_num`,`user_id`,`book_name`,`book_price`,`collect_money`) values (8,5,8,'时间回旋',25.6,0),(9,2,9,'时间回旋',25.6,0),(17,1,3,'倒转地极',15.1,0);

/*Table structure for table `tb_money` */

DROP TABLE IF EXISTS `tb_money`;

CREATE TABLE `tb_money` (
  `um_id` int(100) NOT NULL auto_increment COMMENT '编号',
  `um_money` double default '0' COMMENT '余额',
  `user_id` int(100) default NULL,
  PRIMARY KEY  (`um_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_money` */

insert  into `tb_money`(`um_id`,`um_money`,`user_id`) values (8,1,8),(9,220,9),(10,536,10),(13,7,13),(14,99,14),(15,66,15),(16,123,16),(18,11,18),(19,85,19),(21,23,21),(22,69,22),(23,15,23),(24,30,24),(25,46,25),(26,79,26),(27,23,27),(30,98,30),(31,58,31),(32,73,32),(33,45,33),(34,22,34),(35,46,35),(36,77,36),(37,63,37),(38,73,38),(39,49,39),(40,76,40),(41,55,41),(42,13,42),(43,76,43),(44,116,44),(45,376,45),(46,NULL,NULL),(47,NULL,NULL),(48,NULL,NULL);

/*Table structure for table `tb_order` */

DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `order_id` int(100) NOT NULL auto_increment COMMENT '订单ID',
  `order_code` int(100) NOT NULL COMMENT '订单号',
  `order_money` double NOT NULL default '0' COMMENT '订单金额',
  `order_date` date NOT NULL COMMENT '订单日期',
  `order_status` int(10) default '0' COMMENT '订单状态',
  `user_id` int(100) default NULL COMMENT '用户id',
  PRIMARY KEY  (`order_id`,`order_code`),
  UNIQUE KEY `order_code` (`order_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_order` */

insert  into `tb_order`(`order_id`,`order_code`,`order_money`,`order_date`,`order_status`,`user_id`) values (1,20170805,123,'2017-08-05',0,8),(2,20130107,321,'2013-01-07',0,9),(3,20181208,33,'2018-12-08',1,10);

/*Table structure for table `tb_recommend` */

DROP TABLE IF EXISTS `tb_recommend`;

CREATE TABLE `tb_recommend` (
  `recmd_id` int(100) NOT NULL auto_increment COMMENT '推荐ID',
  `recmd_class` varchar(255) NOT NULL default '' COMMENT '推荐类别',
  `recmd_people` varchar(255) NOT NULL COMMENT '推荐人',
  `publish_code` int(200) default NULL COMMENT '出版号',
  `book_name` varchar(255) default NULL COMMENT '图书名',
  PRIMARY KEY  (`recmd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_recommend` */

insert  into `tb_recommend`(`recmd_id`,`recmd_class`,`recmd_people`,`publish_code`,`book_name`) values (1,'618年中大促','张青',978751137,'国富论:“现代经济学之父”亚当·斯密的传世名作'),(2,'618年中大促','韩梦莹',978730120,'中国古代的法律'),(3,'618年中大促','程蕾',978755340,'爱因斯坦密件'),(4,'618年中大促','李寒茜',978753792,'银色之星'),(5,'618年中大促','文轩',751183037,'法的经济解释-法律人的倚天屠龙'),(6,'潮流推荐','彭霞',978751188,'沉睡的巨物'),(7,'潮流推荐','黄凤雪',978750609,'改变历史进程的50种机械'),(8,'潮流推荐','哇哈哈',978756822,'植物大百科-中国少年儿童探索百科'),(9,'潮流推荐','哇哈哈',978721008,'恐龙百科彩色图鉴'),(10,'潮流推荐','哇哈哈',978753215,'老人与海');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `user_id` int(100) NOT NULL auto_increment COMMENT '用户ID',
  `user_image` varchar(255) default NULL COMMENT '用户头像',
  `user_name` varchar(255) NOT NULL default '' COMMENT '用户名',
  `user_psw` varchar(255) NOT NULL default '' COMMENT '用户密码',
  `user_sex` varchar(10) default NULL COMMENT '性别',
  `user_address` varchar(255) NOT NULL default '' COMMENT '地址',
  `user_tel` varchar(255) NOT NULL default '' COMMENT '电话',
  `user_email` varchar(255) default NULL COMMENT '邮箱',
  `user_info` text COMMENT '简介',
  PRIMARY KEY  (`user_id`,`user_name`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`user_id`,`user_image`,`user_name`,`user_psw`,`user_sex`,`user_address`,`user_tel`,`user_email`,`user_info`) values (8,'img/headphoto/123.jpg','周嘉许111','325254553','男','落雁岛9号','15632988745','89379987@qq.com','Name: Hu xiao-lu Date of Birth: Dec. 28th, 1989 Health: Good Address: College of P.R.China 617000 Tel: +8615583559277 (MP) , E-mail: 244296094@qq.com Sex: Male Native Place: Meishan Sichuan, P.R.China Marital Status: Unmarried Biology and Chemical Engineering'),(9,'img/headphoto/123.jpg','林七月','4162b4cc70e907fabd08aa44157cbc62','女','江汉路6号','15669863250','89379987@qq','Name: Hu xiao-lu Date of Birth: Dec. 28th, 1989 Health: Good Address: College of P.R.China 617000 Tel: +8615583559277 (MP) , E-mail: 244296094@qq.com Sex: Male Native Place: Meishan Sichuan, P.R.China Marital Status: Unmarried Biology and Chemical Engineering'),(10,'img/headphoto/123.jpg','安静','4162b4cc70e907fabd08aa44157cbc62','女','珞珈山3号','15632698360','89379987@qq','我依旧是曾经的模样，过着不咸不淡的人生。'),(13,'img/headphoto/123.jpg','喻言','4162b4cc70e907fabd08aa44157cbc62','女','南京路6号','1239885630','89379987@qq','对热爱的事情都要全力以赴，包括爱自己。'),(14,'img/headphoto/123.jpg','舒叶','4162b4cc70e907fabd08aa44157cbc62','女','百锦路3号','13356698204','89379987@qq','清风我敬你一杯酒，他与往事请你都带走。'),(15,'img/headphoto/123.jpg','安浔','4162b4cc70e907fabd08aa44157cbc62','女','松纸路5号','13986224458','89379987@qq','清风我敬你一杯酒，他与往事请你都带走。'),(16,'img/headphoto/123.jpg','梁静姝','4162b4cc70e907fabd08aa44157cbc62','女','松家院子','13386995211','89379987@qq','放弃不难，但坚持一定很酷'),(18,'img/headphoto/123.jpg','段思齐','4162b4cc70e907fabd08aa44157cbc62','男','贤德街','133569865542','89379987@qq','努力是会上瘾的，尤其是在尝到了甜头之后。'),(19,'img/headphoto/123.jpg','穆清1','341434354','男','颂仁路9号','13559863241','89379987@qq.com','一个人至少拥有一个梦想，有一个理由去坚强。心若没有栖息的地方，到哪里都是在流浪。'),(21,'img/headphoto/123.jpg','莫羡','4162b4cc70e907fabd08aa44157cbc62','男','珞珈山7号','15569885632','89379987@qq','我不是看不起你，是压根就不想理你。'),(22,'img/headphoto/123.jpg','顾清让','4162b4cc70e907fabd08aa44157cbc62','男','珞珈山7号','13356985635','89379987@qq','我不是看不起你，是压根就不想理你。'),(23,'img/headphoto/123.jpg','林慕安','4162b4cc70e907fabd08aa44157cbc62','男','珞珈山7号','13356985635','89379987@qq','我不是看不起你，是压根就不想理你。'),(24,'img/headphoto/123.jpg','陆若素','4162b4cc70e907fabd08aa44157cbc62','女','珞珈山7号','13356985635','89379987@qq','我不是看不起你，是压根就不想理你。'),(25,'img/headphoto/123.jpg','简亦繁','4162b4cc70e907fabd08aa44157cbc62','男','珞珈山7号','13356985635','89379987@qq','我不是看不起你，是压根就不想理你。'),(26,'img/headphoto/123.jpg','南易','4162b4cc70e907fabd08aa44157cbc62','男','珞珈山7号','13356985635','89379987@qq','要清楚：人生的剧本不是你父母的续集，不是你子女的前传，更不是你朋友的番外篇。'),(27,'img/headphoto/123.jpg','千九月','4162b4cc70e907fabd08aa44157cbc62','女','松纸路5号','13356985635','89379987@qq','我最近真的很忙，甚至一天都很难保证有16小时的睡眠！'),(30,'img/headphoto/123.jpg','尤念','4162b4cc70e907fabd08aa44157cbc62','女','松纸路5号','13356985635','89379987@qq','我最近真的很忙，甚至一天都很难保证有16小时的睡眠！'),(31,'img/headphoto/123.jpg','柯晚贤','4162b4cc70e907fabd08aa44157cbc62','男','松纸路5号','13356985635','89379987@qq','每个人的心中都有一团火，路过的人只看到烟'),(32,'img/headphoto/123.jpg','方墨亭','4162b4cc70e907fabd08aa44157cbc62','男','松纸路5号','13356985635','89379987@qq','每个人的心中都有一团火，路过的人只看到烟'),(33,'img/headphoto/123.jpg','苏见信','4162b4cc70e907fabd08aa44157cbc62','男','松纸路5号','13356985635','89379987@qq','每个人的心中都有一团火，路过的人只看到烟'),(34,'img/headphoto/123.jpg','谈书墨','4162b4cc70e907fabd08aa44157cbc62','男','松纸路5号','13356985635','89379987@qq','好事坏事，终归，都成往事。'),(35,'img/headphoto/123.jpg','柏梦见','4162b4cc70e907fabd08aa44157cbc62','男','松纸路5号','13356985635','89379987@qq','好事坏事，终归，都成往事。'),(36,'img/headphoto/123.jpg','张砚青','4162b4cc70e907fabd08aa44157cbc62','男','松纸路5号','13356985635','89379987@qq','好事坏事，终归，都成往事。'),(37,'img/headphoto/123.jpg','谢景行','4162b4cc70e907fabd08aa44157cbc62','男','松纸路5号','13356985635','89379987@qq','听闻少年二字，应与平庸相斥。'),(38,'img/headphoto/123.jpg','季忆','4162b4cc70e907fabd08aa44157cbc62','女','松纸路5号','13356985635','89379987@qq','听闻少年二字，应与平庸相斥。'),(39,'img/headphoto/123.jpg','时现','4162b4cc70e907fabd08aa44157cbc62','男','松纸路5号','13356985635','89379987@qq','听闻少年二字，应与平庸相斥。'),(40,'img/headphoto/123.jpg','苏也','4162b4cc70e907fabd08aa44157cbc62','男','江津路1号','13356985635','89379987@qq','听闻少年二字，应与平庸相斥。'),(41,'img/headphoto/123.jpg','林晚洲','4162b4cc70e907fabd08aa44157cbc62','女','江津路1号','13356985635','89379987@qq','听闻少年二字，应与平庸相斥。'),(42,'img/headphoto/123.jpg','姜南','4162b4cc70e907fabd08aa44157cbc62','女','江津路1号','13356985635','89379987@qq','有时候，坚持了你最不想干的事情之后，便可得到你最想要的东西。'),(43,'img/headphoto/123.jpg','姜余娆','4162b4cc70e907fabd08aa44157cbc62','女','江津路1号','13356985635','89379987@qq','有时候，坚持了你最不想干的事情之后，便可得到你最想要的东西。'),(44,'img/headphoto/123.jpg','姜之华','4162b4cc70e907fabd08aa44157cbc62','女','江津路1号','13356985635','89379987@qq','我想成为一个拥有一万块的小富婆。'),(45,'img/headphoto/123.jpg','林语迟','4162b4cc70e907fabd08aa44157cbc62','女','江津路1号','13356985635','89379987@qq','我想成为一个拥有一万块的小富婆。'),(46,'img/headphoto/20200617103505051.JPG','我是添加用户','4162b4cc70e907fabd08aa44157cbc62','女','北京','13453443455','324242@qq.com',''),(47,'img/headphoto/20200618062735933.png','卡换卡伤口缝合','admin4444','男','上海','13554353534','23424@qq.com',''),(48,'img/headphoto/20200618063203506.png','admin','admin4444','女','广州','19329849284','23429428@qq.com','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
