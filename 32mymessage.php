<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>消息</title>
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
	.inner{
		margin: 20px 0px 20px 0px;
	}
	.image{
		margin:20px 10px 10px 10px;
		border-radius: 50px;
		width: 100px;
		float:left;
	}
	.image img{
		border-radius: 50px;
	}
	.info{
		font-family: "黑体";
		font-size: 18px;
		margin: 5px 10px 0px;
	}
	.info1{
		font-family: "黑体";
		font-size: 16px;
		margin: 0px 10px 0px;
		font-weight: lighter;
	}
	.check{
		text-align: center;
		float:left; 
		width:40%;
		margin: 0 auto;
		height:50px;
		line-height: 50px;
		margin: 0px 0px 0px 10px;
		color:#ffffff;
		border-radius: 10px;;
		background-color: #33cc99;
		font-size: 20px;
		font-family: "黑体";
		font-weight: bold;

	}
	.hide{
		text-align: center;
		float:left; 
		width:40%;
		margin: 0 auto;
		height:50px;
		line-height: 50px;
		margin: 0px 0px 0px 10px;
		color:#ffffff;
		border-radius: 10px;;
		background-color: #33cc99;
		font-size: 20px;
		font-family: "黑体";
		font-weight: bold;
	}
	.input{
		margin:20px 0px 20px 10px;
	}
	.input #shuru{
		height:30px;
		line-height: 30px;
		width:100%;
	}
	.input .sousuo{
		font-size: 20px;
		font-weight: bold;
		font-family: "黑体";
		color: #ffffff;
		background-color: #33cc99;
		margin-left: 20px;
		border-radius: 5px;
		text-align: center;
		height: 30px;
		line-height: 30px;
	}
	.anniu1{
			text-align: center;
		float:left; 
		width:40%;
		margin: 0 auto;
		height:50px;
		line-height: 50px;
		margin: 0px 0px 0px 10px;
		color:#ffffff;
		border-radius: 10px;;
		background-color: #33cc99;
		font-size: 20px;
		font-family: "黑体";
		font-weight: bold;
		border: none;
	}
	
	a{
		text-decoration: none;
	}
.info2 {		font-family: "黑体";
		font-weight: bold;
		font-size: 24px;
		margin: 5px 10px 5px;
}
</style>
<script type="text/javascript">
function checkForm(){
        alert("已成为好友！");
		window.location.reload(); 
        tag = true;
    return tag;
}
</script>
	</head>
	
<body>

<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>消息</p></td>
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


<table class="inner" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
  <tr></tr>
</tbody>
<tbody>
 
<?php
session_start();
$uid=$_SESSION['uid'];
include "includes/magicquotes.inc.php";
include "includes/db.inc.php";
$sql="select * from friend where  uid2='$uid' and verify=0";
$res=$pdo->query($sql);
foreach($res as $row)
{
	if($row['uid2']==$uid)
	{
		$id=$row['uid1'];
	}
	else if($row['uid1']==$uid)
	{$id=$row['uid2'];}

$sql2="select * from user where uid='$id' limit 1";
$res2=$pdo->query($sql2);

foreach($res2 as $row2)
{
	$name=$row2['username'];
?>
 <tr>
    <td width="100px" rowspan="2"><div class="image"> 
    <img src="touxiang1.jpg" width="100px" height="100px"> </div>
    </td>
	</tr>
   <tr>
    <td>
	<div class="info"><?php echo $name; ?></div>
	<div class="info1">请求加好友</div>
	<form  action="9.php" method="post"> 
	<input name="shunxu" type="hidden" value="<?php echo $id; ?>" />
		<button class="anniu1" type="submit"  class="info1" value="查看信息">查看信息</button>
	</form>
	<form  action="32agree.php" method="post"  onsubmit="return checkForm()" target="formsubmit"> 
	<input name="shunxu" type="hidden" value="<?php echo $id; ?>" />
		<button class="anniu1" type="submit"  class="info1" value="同意"  >同意</button>
	</form>
	<iframe name="formsubmit" style="display:none"  ></iframe>

    </td>
	
 </tr>
<?php   }  
}?>
 
</tbody>
</table>
</body>
</html>