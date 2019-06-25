<?php
session_start();
if(!isset($_POST['submit'])){
	exit('非法访问!');
}
$uid = $_POST['uid'];
$password = $_POST['password'];
//注册信息判断
if(!preg_match('/^[\w]{8}$/', $uid)){
	exit('错误：学号不符合规定。<a href="javascript:history.back(-1);">返回</a>');
}
if(strlen($password) < 6){
	exit('错误：密码长度不符合规定。<a href="javascript:history.back(-1);">返回</a>');
}
//包含数据库连接文件
include('conn.php');
//检测用户名是否已经存在
$check_query = "select uid from user where uid='$uid' limit 1";
$res=$pdo->query($check_query);
$arr=$res->fetch();
if($arr){
	echo "错误：学号".$uid." 已存在。<a href=\'javascript:history.back(-1);\'>返回</a>";
	exit();
}
//写入数据
$_SESSION['uid'] = $uid;
$password = MD5($password);
$regdate = time();
$sql = "INSERT INTO user(uid,password)VALUES('$uid ','$password')";
if($pdo->query($sql)){	
	header('Location: ../0.php');
} else {
	echo '抱歉！添加数据失败：',$pdo->errorinfo(),'<br />';
	echo '点击此处 <a href="javascript:history.back(-1);">返回</a> 重试';
}
?>