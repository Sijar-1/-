<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>个人资料</title>
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
	.big #nickname{
		font-family: "黑体";
		font-weight: bold;
	}
	.big #info{
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
	}
	
	
	.kuang img{
		text-align: center;
		border-radius: 40px;
		width:80px;
		height: 80px;
		border-radius: 4
	}
	.anniu a{
		text-decoration: none;
	}
	.space{
		height:30px;
	}
</style>
</head>


<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
     <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>个人资料</p></td>
      <td width="20%" bgcolor="#FF8600"><a href="3.php"><img src="edit.png" height="40vx" width="40vx"></a></td>
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
<table class="big" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td>
<?php
include "11.php";
$uid=$_SESSION['uid'];
$sql="select * from user where uid='$uid' ";
$res=$pdo->query($sql);
foreach($res as $row)
{$sex=$row['sex'];}
if($sex==1)
{
?>
<div class="image"><img src="touxiang1.jpg"  width="30%"></div>
<?php
}
else if($sex==0)
{  ?>
<div class="image"><img src="touxiang5.jpg"  width="30%"></div>
<?php  }  ?>
	<div class="nickname">
	  <p id="nickname"><?php echo $name; ?></p></div>
		<div class="gender">
		  <p id="info"><?php echo $sexx; ?></p></div>
     <div class="peras">
		  <p id="info"><?php echo $text; ?></p></div>
      </td>
    </tr>
  </tbody>
</table>

<table class="anniu" width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td>
    <div class="space"></div>
	<div class="kuang"><a href="10.php">
	<div class="anniu1">好友</div></a></div>
	<div class="kuang"><a href="20myrentinghistory.php">
	<div class="anniu1">借阅过的书</div></a></div>
	<div class="kuang"><a href="22mylessonhistory.php">
	<div class="anniu1">上过的课</div></a></div>
	<div class="kuang"><a href="21.php">
	<div class="anniu1">兴趣标签</div></a></div>
</td>
	</tr>
	</tbody>
	</table>

	
 
</html>

