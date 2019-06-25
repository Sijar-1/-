<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>可能感兴趣的人</title>
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
	.hide{
		text-align: center;
		float:left; 
		width:45%;
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
		font-size: 20px;
		margin: 5px 10px 5px;
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
		width:60%;
		height:40px;
		line-height: 40px;
		margin: 0px 0px 0px 10px;
		color:#ffffff;
		border-radius: 10px;
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
	a{
		text-decoration: none;
	}
</style>
	</head>
	
<body>

<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>可能感兴趣的人</p></td>
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
session_start();
$uid=$_SESSION['uid'];
try{
	include_once $_SERVER['DOCUMENT_ROOT'].'/html/includes/db.inc.php';
	$sql="select * from user_book where uid=$uid";
	$result=$pdo->query($sql);
}
catch(Exception $e)
{
	$output = 'Error performing update'.$e->getMessage();
	echo $output;
	exit();
}

foreach($result as $row)
{
	$book_id1=$row["book_id"];
	$sql2="select distinct uid from user_book where uid<>$uid and book_id=$book_id1 order by uid";
    $res2=$pdo->query($sql2);
     foreach($res2 as $row2)
	 {
		$id=$row2["uid"];
		$sql3="select * from user where uid=$id";
		 $res3=$pdo->query($sql3);
     foreach($res3 as $row3)
	 {
		$name=$row3['username'];
		$qianming=$row3['personality_signature'];
		?>
		<table class="inner" width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
 
     
        <tr>
          <td width="5%"><div class="image"><img src="touxiang2.jpg" width="100vx" height="100vx"></div></td>
          <td width="95%"><div class="info"><?php echo $name ?></div>
            <div class="info1"><?php echo $qianming ?></div>
           <form action="27.php" method="post">
			<input type="hidden" name="shunxu" value="<?php echo $id; ?>" /> 
			   <button class="hide" type="submit" value="查看信息" >查看信息</button>
			</form>
			<form action="18chattingbox.php" method="post">
			<input type="hidden" name="shunxu" value="<?php echo $id; ?>" />
				<button class="hide"  type="submit" value="传纸条儿">传纸条儿</button>
			</form>
          
            </td>
		  </tr>
     <tr>
     	<td colspan="2">
     		<div class="line">
     			<img src="line.png" width="100%" height="20">
     		</div>
     	</td>
     </tr>
      </tbody>
    </table>
	
	<?php
	 }
	 }	 
	 
}



try{
		$sql="select * from user_course where uid='$uid'";
		$result = $pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
foreach($result as $row){
	$course_id=$row["course_id"];
	try{
		$sql2="select distinct uid from user_course where uid<>$uid and course_id=$course_id order by uid";
		$result2 = $pdo->query($sql2);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
	foreach($result2 as $row2){
	$id=$row2['uid'];
	$sql3="select * from user where uid=$id";
		$result3 = $pdo->query($sql3);
		foreach($result3 as $row3)
		{
	$name=$row3['username'];
	$qianming=$row3['personality_signature'];
	?>
	<table class="inner" width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
 
     
        <tr>
          <td width="5%"><div class="image"><img src="touxiang2.jpg" width="100vx" height="100vx"></div></td>
          <td width="95%"><div class="info"><?php echo $name ?></div>
            <div class="info1"><?php  echo $qianming ?></div>
           <form action="27.php" method="post">
			<input type="hidden" name="shunxu" value="<?php echo $id; ?>" /> 
            <input  class="hide" type="submit" value="查看信息" >
			</form>
			<form action="18chattingbox.php" method="post">
			<input type="hidden" name="shunxu" value="<?php echo $id; ?>" />
			<input class="hide"  type="submit" value="传纸条儿"  />
			</form>
          
            </td>
		  </tr>
     <tr>
     	<td colspan="2">
     		<div class="line">
     			<img src="line.png" width="100%" height="20">
     		</div>
     	</td>
     </tr>
      </tbody>
    </table>
	<?php
		}
	}
}
?>
</body>
</html>