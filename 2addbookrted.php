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
		height:110px;
		
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
		margin:5px 0px 0px 10px;
		position:fixed;
		top: 60px;
		background-color: #ffffff;
		padding-top: 15px;
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
		border:0px;
	}
	.info1{
		font-family: "黑体";
		font-size: 16px;
		margin: 0px 10px 0px;
		border:0px;
		font-weight: lighter;
	}
	input{
		outline:none;
		appearance:
	}
	a{
		text-decoration: none;
	}
	
	.overflow{
		overflow-y: scroll;
		height: 460px;
		position: fixed;
		top: 130px;
		background-color:#F2FFFA;
		width: 100%;
	}
	.hide{
		text-align: center;
		float:left; 
		width:40%;
		height:50px;
		line-height: 50px;
		margin: 0px 0px 0px 10px;
		color:#ffffff;
		border-radius: 10px;
		background-color: #33cc99;
		font-size: 20px;
		font-family: "黑体";
		font-weight: bold;
		border: none;
	}
	.bottom{
		position: fixed;
		background-color: #eeeeee;
		bottom: 0;
		padding-bottom: 10px;
		width: 100%;
		padding: 0;
		text-align: center;
		padding-top: 10px;
		
		
	}
	.bottom1{
		width:60%;
		height:50px;
		line-height: 50px;
		font-family: "黑体";
		margin:auto;
		text-align: center;
		background-color: #33cc99;
		color:#ffffff;
		font-size: 22px;
		font-weight: bold;
		border-radius: 10px;
		margin-bottom: 10px;
	}
</style>

	</head>
	
<body>
<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>添加借阅过的书</p></td>
      <td width="20%" bgcolor="#FF8600">&nbsp;</td>
    </tr>
  </tbody>
</table>

<table class="input" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <form action="2search.php" method="post">
	  <td>
      	<input id="shuru" type="" name="shuru" placeholder="输入相关内容：如《月亮与六便士》"  />
     </td>
      <td width="20%">
		  <button class="sousuo" type="submit" value="检索" >检索</button>
		</td>
		</form>
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

<table border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td>
      	<?php
include '2addbookrted/2show.php';
?>
      </td>
    </tr>
  </tbody>
</table>


<table class="bottom" width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td>
    
	<a href="1addbookbm.html">
	<div class="bottom1">手动创建书目</div></a>
</td>
	</tr>
  </tbody>
</table>




	



</body>
</html>

