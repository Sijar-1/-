<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>添加上过的课程</title>
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
		margin:20px 0px 20px 10px;
		position:fixed;
		top: 45px;
		background-color: #ffffff;
		padding-top: 20px;
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
	
	.overflow{
		overflow-y: scroll;
		height: 500px;
		position: fixed;
		top: 150px;
		background-color:#F2FFFA;
		width: 100%;
	}
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
		border: none;
	}
	.bottomblank{
		height: 65px;
	}
	.bottom{
		position: fixed;
		background-color: #ffffff;
		bottom: 0;
		margin-bottom: 10px;
		width: 100%;
		padding: 0;
		text-align: center;
		margin-top: 20px;
		
		
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
	}
	
</style>
	</head>
	
<body>
<?php
session_start();
$uid=$_SESSION['uid'];
?>
<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>添加上过的课程</p></td>
      <td width="20%" bgcolor="#FF8600"></td>
    </tr>
  </tbody>
</table>

<table class="input" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      
      <td width="80%">
		<form action="5changelesson.php" method="post">
      	<input id="shuru" type="" name="shuru" placeholder="输入相关内容：如高等数学"/>
      </td>
      <td width="20%">
        <p><input type="submit" value="检索" class="sousuo"/></p>
		</form>
		  </td>
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
	include 'includes/magicquotes.inc.php';
	include 'includes/db.inc.php';
	
	try{
		$sql="select * from course where cname like '%".$_POST['shuru']."%'";
		$result = $pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
		foreach($result as $row){
			$cname=$row["cname"];
	        $teacher=$row["teacher"];
			$school=$row["school"];
	        $credit=$row["credit"];
	        $course_hour=$row["course_hour"];
	        $course_nature=$row["course_nature"];
			$course_id=$row["course_id"];
			$picture=$row['picture'];
	?>
	<table class="inner" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
  <tr></tr>
</tbody>
<tbody>
  <tr>
    <td width="100px" rowspan="2"><div class="image"> 
    <img src="<?php echo $picture; ?>" width="100px" height="100px"> </div></td>
    <td><div class="info">
	<?php
	    echo $cname;
	    echo '<br/>';
	?>
	</div>
    <div class="info1">
	<?php
	
	if($teacher!=""){echo $teacher." ";}
	if($school!=""){echo $school." ";}
	if($credit!=""){echo $credit."学分 ";} 
	if($course_nature!=""){echo $course_nature." ";}
	if($course_hour!=""){echo $course_hour."学时 ";}
	?>   
	</div></td>
  </tr>
  <tr>
    <td><a href="15indicatedlesson.php">
      <div>
	  <form method="post" action="15indicatedlesson.php" >
	   <input type="hidden" name="shunxu" value=<?php echo $course_id; ?>    />
		  <button class="hide"  type="submit">查看信息</button>
	    </form>
		<form method="post" action="14lessons.php"  >
		<input type="hidden" name="shunxu" value=<?php echo $course_id; ?>    />
			<button class="hide" type="submit">加入收藏夹</button>
	    </form></div>       
      </td>
  </tr>
</tbody>
<tbody>  
</tbody>
</table>
<?php
		}
?>
	<div class="bottomblank"></div>
	
  </tr>   
  
</tbody>
</table>
	
	
<table class="bottom" width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td>
    
	<a href="6addlessonbm.html">
	<div class="bottom1">手动创建课程</div></a>
	
	
</td>
	</tr>
  </tbody>
</table>



</body>
</html>