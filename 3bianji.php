<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>添加借阅过的书</title>
<style>
	*{
		margin: 0;
		padding: 0;
	}
	body{
		background-image:url("");
		background-position: center 0;
		background-size:cover;
		margin: 0px;
	}
	.a0{
		margin:0px;
		height:60px;
		
	}
	.heading{
		position:fixed;
		top: 0;
	}
	.heading img{
		margin-bottom: 10px;
	}
	.heading td{
		text-align: center;
		height:35px;
		line-height: 35px;
		padding-top: 15px;
		padding-bottom: 0px;
		font-family: "黑体";
		font-size: 20px;
		color:#ffffff;
		margin:2px;
	}
   
	
	.big{
		float: center;
		width: 100%;
		height:100%;
		height: auto;
		overflow-x: auto;
		padding: 10px;
		margin: 0 auto;
		line-height: 30px;
		font-size: 20px;
		padding: 0px;
		text-align: center;
	}
	.big .idnum{
		font-family: "黑体";
		font-weight: bold;
	}
	.big .nickname{
		font-family: "黑体";
		font-size: 16px;
		
	}
	.shuru{
		height:30px;
		line-height:30px;
		width: 40%;
		font-size: 14px;
		padding-left: 5px;
		padding-right: 5px;
	}
	.big .info{
		font-family: "黑体";
		font-size: 16px;
	}
	.big .peras{
		font-family: "黑体";
		font-size: 16px;
	}


	 .big .image img{
		border-radius: 75px;
	
	}
	.image{
		margin: 20px 0px 0px 0px;
	}
	p{
		text-align:center;
	}
	
	.kuang{
		margin:10px;
		text-align: center;
	}
	.anniu1{
		text-align: center;
		line-height: 50px;
		height: 50px;
		font-size: 20px;
		font-family: "黑体";
		color: #ffffff;
		background-color:#33cc99;
		border-radius: 10px;
		width:200px;
		font-family: "黑体";
		text-decoration: none;
		margin: 0 auto;
		border:none;
	}
	
	
	.kuang img{
		text-align: center;
		border-radius: 40px;
		width:80px;
		height: 80px;
		border-radius: 40px;
	}
	.anniu a{
		text-decoration: none;
	}
	.space{
		height:30px;
	}
</style>
</head>

<body>
<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>编辑资料</p></td>
      <td width="20%" bgcolor="#FF8600"></td>
    </tr>
	</tbody>
</table>

<table border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
		  <div class="a0">
				
			</div>
		</td>
	</tr>
</table>
    <form action=" 3kuozhan.php" method="post">
<table class="big" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td>
<?php 
$id=$_SESSION['uid'];
include "includes/magicquotes.inc.php";
include "includes/db.inc.php";
try {
$sql = "select * from user where uid='$id' limit 1";
$result = $pdo->query($sql);
foreach($result as $row)
{
	$sex=$row['sex'];
}
} catch (Exception $e) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();
}
if($sex==0){
?>
		<div class="image"><img src="touxiang5.jpg" height="150px" width="150px"></div>
<?php 
}
else if($sex==1)
{  ?>
	<div class="image"><img src="touxiang1.jpg" height="150px" width="150px"></div>
<?php }   ?>
	 <div class="idnum">
	  ID：<?php echo $id; ?></div>
	  <div class="nickname">
	  	更改昵称：
	  	  <input class="shuru" type="text" name="nicheng" placeholder="输入昵称（小于20个字符）"/>
	  </div>
		<div class="gender">
		  <p class="info">修改性别：
		    <span class="genderitem">
		    <input type="radio" name="sex"  value="1" unchecked>
		    男</span>
		    <span class="genderitem">
                    <input type="radio" name="sex"  value="2" unchecked>
	            女</span>
		  </p>
		</div>
		  <div class="peras">
		  <p>个性签名：
	        <input class="shuru" type="text" name="qianming" placeholder="这个同学很懒，什么也没写。"/></p></div>
      </td>
    </tr>
  </tbody>
</table>

<table class="anniu" width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td>
    <div class="space"></div>
	<div class="kuang"><a href="4.php">
	<div class="anniu1">更改兴趣标签</div></a></div>
	<div class="kuang"><a href="2addbookrted.php">
	<div class="anniu1">添加借阅过的书</div></a></div>
	<div class="kuang"><a href="5show.php">
	<div class="anniu1">更改上过的课</div></a></div>
	<div class="kuang">
        <div class="anniu1" ><button class="anniu1" type="submit" onClick="return dosubmit()">保存修改</button></div></div>
	<div class="space"></div></td>
	</tr>
	</tbody>
	</table>
        </form>
	</body>
 
</html>

<!--11mypersonalpage.html-->