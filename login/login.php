<?php
session_start();

//注销登录
/*if($_GET['action'] == "logout"){
	unset($_SESSION['userid']);
	unset($_SESSION['username']);
	echo '注销登录成功！请 <a href="index.html">登录</a>';
	exit;
}
*/
//登录
if(!isset($_POST['submit'])){
	exit('非法访问!');
}
$uid = htmlspecialchars($_POST['uid']);
$password = MD5($_POST['password']);
//数据库连接
include "conn.php";
//检测学号及密码是否正确
$sql="select * from user where uid='$uid' and password='$password' limit 1";
	$res=$pdo->query($sql);
	$arr=$res->fetch();
	if($arr)
	{
		$res=$pdo->query($sql);
		foreach($res as $row)
		{
		    $_SESSION['uid'] = $uid;
		   $admin=$row["admin"];
		   if($admin==1)
		    {
			   echo "<script language='javascript'>window.location='../manageYorN.php'</script>";
			   exit;
		   }
		   else if($admin==0)
		   {
	           //登录成功
	            echo "<script language='javascript'>window.location='../12.php'</script>";
		        exit;
		    }
		  
		}
	}
else {
	exit('登录失败！点击此处 <a href="javascript:history.back(-1);">返回</a> 重试');
}
?>