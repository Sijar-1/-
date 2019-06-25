<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui" http-equiv="Content-Type">

<?php
session_start();
$id=$_POST['shunxu']; 
include_once 'includes/db.inc.php';
$uid=$_SESSION['uid'];
$sql="select * from user where uid='$uid' ";
$res=$pdo->query($sql);
$row=$res->fetch();
$username=$row['username'];
$sql="select * from user where uid='$id' ";
$res=$pdo->query($sql);
$row=$res->fetch();
$username2=$row['username'];
?>
<title><?php echo $username2; ?></title>
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
		height:80px;
		
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
	.messinfo{
		float: right;
		margin-right: 10px;
	}
	.message{
		
		font-size: 20px;
		margin: 5px 10px 10px;
		background-color: #F7D9B9;
		color:#000000;
		height:32px;
		line-height: 32px;
		border-radius: 10px;
		padding: 10px;
		display: inline;
		float: right;
		height:auto;
		min-height: 32px;
	}
	.messinfo2{
		float: left;
		margin-left: 10px;
	}
	.message2{
		
		font-size: 20px;
		margin: 5px 10px 10px;
		background-color: #B7F1DE;
		
		color:#000000;
		height:32px;height: auto;
		line-height: 32px;
		border-radius: 10px;
		padding: 10px;
		display: inline;
		float: left;
		min-height: 32px;
	}
	.overflow{
		overflow-y: scroll;
		height: 480px;
		position: fixed;
		top: 65px;
		background-color:#ffffff;
		width: 100%;
	}
	.radius{
	
	height: 40px;
	line-height: 40px;
	padding-top: 10px;
	text-align: center;
	position: fixed;
	width: 100%;
	bottom: 0;
	left: 0;
		padding-bottom: 5px;
		background-color: #ffffff;
		
	}
	
	.input{
		margin-left: 20px;
		text-align: center;
		
	}
	.input #shuru{
		height:40px;
		line-height: 40px;
		width:100%;
		border-radius: 0px;
		margin-right: 0px;
		border: none;
		border:1px solid #dddddd;
		font-size: 15px;
		padding-left: 5px;
		
	}
	.input .sousuo{
		font-size: 20px;
		width: 85%;
		font-weight: bold;
		font-family: "黑体";
		color: #ffffff;
		background-color: #33cc99;
		margin-right: 10px;
		text-align: center;
		height: 42px;
		line-height: 42px;
		border: none;
		float: left;
	}
	#shuru:focus{
		
		outline:none;
	}
	.bottomblank{
		height:65px;
	}
	a{
		text-decoration: none;
	}
</style>
	</head>
	<script>
	window.location ="#zhidao";//自动跳转到锚点处
function checkForm(){ 
window.location.reload();
		//setTimeout('myrefresh()',1000); //指定1秒刷新一次

		tag = true;
    return tag;
}
</script>
	</head>
<body >

<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p><?php echo $username2; ?></p></td>
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



	<?php
				$sql1="select * from chat where (senduid='$uid' and receiveuid='$id') or (senduid='$id' and receiveuid='$uid')"; 
				$res1=$pdo->query($sql1);
              foreach($res1 as $row1)
			  {
				  $content=$row1['content'];
				  $time=$row1['time'];
				  if($row1['senduid']==$uid and $row1)
				  {
				
				  ?>
				  
				
<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
		  <div class="messinfo">
			<?php echo $time; ?>
			</div>
		</td>
	</tr>
	<tr>
		<td>
		  <div class="message">
			<?php echo $content; ?>
			</div>
		</td>
	</tr>
</table>
	
		<?php	  }
		else if($row1['senduid']==$id and $row1)
		{ ?>
			
			
			<table border="0" cellpadding="0" cellspacing="0">
	<tr text-align="left">
		<td>
		  <div class="messinfo2">
			<?php echo $time; ?>
			</div>
		</td>
				</tr>
				<tr>
		<td>
		  <div class="message2">
			<?php echo $content; ?>
			</div>
		</td>
	</tr>
</table>
	<?php	     }
             }
			  ?>
<div class="bottomblank">
	
</div>

<div class="radius">
<table class="input" width="95%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      
      <td width="70%">
	  <form action="18chattingbox/18send.php"  method="post" onsubmit="return checkForm()" target="formsubmit">
      	<input id="shuru" type="text" name="shuru" />
      	<input name="shunxu" type="hidden" value="<?php echo $id; ?>" />
</td>
		<td width="30%">
			<button type="submit" class="sousuo" value="发送">发送</button>
		</td>
	  </form>
	<iframe name="formsubmit" style="display:none"></iframe>

    
    </tr>
  </tbody>
</table>
</div>
<a name="zhidao"></a><!--锚点处-->

</body>
</html>

