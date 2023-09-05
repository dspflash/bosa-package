该软件是在3UCS X+(3uX)平台上定制的应用，需要3UCS软件的支持。关于ERP的PPT介绍：http://3ucs.com/dl40.html
1	软件安装
	3UCS server：		http://3ucs.com/dl1.html
	windows客户端XOne：	http://3ucs.com/dl56.html
	android客户端：		http://3ucs.com/dl35.html
	傻瓜式安装即可，安装完成后可用全局用户登录（例如6178账号，非ERP账户）————管理员初始用户名6178、密码6178、服务器为3UCS server的IP地址/或计算机网络ID；
2	将 bosa.zip 里所有文件解压至3UCS server的layout\ucin\bosa_tester目录（ 3UCS\Server\layout\ucin\bosa_tester）中，文件路径示例 3UCS\Server\layout\ucin\bosa_tester\index.xml
3	在SQL Server创建数据表，建表脚本为sql.txt
4	SQL Server的登录使用的是其内部的windows身份验证（本机验证）, 故做如下配置即可。 修改index.xml中数据库配置<Host>(local)</Host>，<Database>test</Database>中test更改为所使用的数据库名
5	XOne客户端使用6178（密码 6178 ）账号登录，建立使用者账号，应用设置为 layout/ucin/bosa_tester/index.xml 参见图片“账号.png”
6	XOne客户端使用新建的账号登录系统，参见图片“1.png”，进入“包装箱管理”页面，点击“添加”创建包装箱，输入包装箱SN条码（或扫码），点击 “新增”保存，如“2.png”所示，在列表区域右键弹出菜单点击“添加”，进入“4.png”，在 料件 框输入或扫码料件SN条码，系统或自动查询“MAC_10GBOSADATA”表该数据是否存在，点击新增即可保存；如需连续扫码自动完成可勾选“自动”，扫码完成或回车系统自动保存，并可在当前界面继续扫码
7	完成扫描录入后可在“包装料件管理”页面输入包装箱条码，点击查询，如“5.png”所示
8	手机操作类似