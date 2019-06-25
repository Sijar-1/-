<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>推荐书籍</title>
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
		height:120px;
		
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
	
	.input{
		margin:20px 0px 20px 0px;
		position:fixed;
		top: 45px;
		background-color: #ffffff;
		padding-top: 20px;
		padding-left: 10px;
		padding-bottom: 10px;
	}
	.input #shuru{
		height:30px;
		line-height: 30px;
		width:90%;
		background-color: #eeeeee;
		background: url("sousuo.png") no-repeat scroll left center transparent;
		background-size: 20px 18px;
		padding-left: 30px;
		font-size: 14px;
		letter-spacing: -1px;
	}
	.input .sousuo{
		font-size: 20px;
		font-weight: bold;
		font-family: "黑体";
		color: #ffffff;
		background-color: #33cc99;
		margin-left: 20px;
		border-radius: 5px;
		height: 30px;
		width:80px;
		line-height: 30px;
		margin-right: 20px;
		border: none;
	}
	.kuang img{
		text-align: center;
		border-radius: 40px;
		width:80px;
		height: 80px;
		border-radius: 40px;
	}
	
	.space{
		height:30px;
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
	
	
	
	
	a{
		text-decoration: none;
	}
	
	/*.overflow{
		overflow-y: scroll;
		height: 500px;
		position: fixed;
		top: 150px;
		background-color:#F2FFFA;
		width: 100%;
	}*/
	.hide{
		text-align: center;
		float:left; 
		width:40%;
		height:50px;
		line-height: 40px;
		margin: 0px 0px 0px 10px;
		color:#ffffff;
		border-radius: 10px;
		background-color: #33cc99;
		font-size: 20px;
		font-family: "黑体";
		font-weight: bold;
		border:none;
	}
	
</style>
	</head>
	
<body>

<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>推荐书籍</p></td>
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

<table class="input" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
	 <form action="2search.php" method="post">
      
      <td width="70%">
	 <input type="hidden" name="shunxu" id="shunxu"  />
      	<input id="shuru" type="" name="shuru" placeholder="输入相关内容：如 月亮与六便士"/>
      	
      </td>
      <td width="30%">
		  <p><button type="submit" value="检索" class="sousuo">检索</button></p>
		  </td>
		  </form>
    </tr>
  </tbody>
</table>

<table class="geren3" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td valign="top">
<?php
session_start();
$uid=$_SESSION['uid'];
include_once 'includes/db.inc.php';
include 'includes/magicquotes.inc.php';
try{	
	$sql="select * from user_book where uid='$uid' order by rand() limit 1";
	$result=$pdo->query($sql);
	$num1=$result->rowCount();
}
catch(Exception $e)
{
	$output = 'Error performing update'.$e->getMessage();
	echo $output;
	exit();
}





	
	
	
	//推荐书籍算法就不放进来了
?>     	


</body>
</html>






