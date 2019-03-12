# MediaRemoteTrainingSystem
多媒体远程培训系统

## 导入项目步骤
### 1. 配置数据库
将db.properties.template重命名为db.properties，并修改数据库用户名密码以及url配置
### 2. 初始化数据库
mysql 5.x 版本以上，创建数据库mrts，使用utf8编码，然后使用运行 WEB-INF/sql/init.sql 文件进行初始化  
### 3.环境
- tomcat 8.5 
	- 官网下载完成后解压，eclipse中 window -> preferences -> Server -> Runtime Environment -> Add -> apache -> tomcat8.5 -> 选择tomcat文件夹路径 -> 选择jre 1.8版本 -> apply
- maven 3.5.x
	- 官网下载完成后解压，eclipse中 window -> preferences -> Maven -> Installation -> Add -> 选择maven文件夹路径 -> finish -> apply
### 4. eclipse导入项目
- eclipse导入项目：file -> import -> Exist Maven Project -> 选择项目目录 -> 导入
- 修改配置：
	- 项目导入等待eclipse右下角进度条全部完成后再进行配置
	- 修改编码：右击项目 -> properties -> Resource -> 选择other -> 选择utf-8 -> apply ,此步操作保证中文不会乱码，否则再windows上中文显示乱码。注意：每次Maven Update Project时需重新修改此选项。
	- 新增tomcat支持：右击项目 -> Build Path -> Config Build Path -> 标签选择Libriaries -> Add Libriaries -> Server Runtime -> tomcat8.5 -> finish
	- 若pom.xml报错，右击项目 -> Maven -> Update Project -> finish 等待右下角进度条走完，若仍然报错，建议将maven源修改为阿里云源（百度搜索）后重试。
### 5.运行
	- 右击项目 -> run as -> run on server -> tomcat8.5 -> finish
	- 等待运行成功后将url复制到Chrome或火狐浏览器，不建议使用eclispe自带浏览器
