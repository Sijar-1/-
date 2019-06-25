<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>推荐课程</title>
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
	

	
</style>
	</head>
	
<body>

<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>推荐课程</p></td>
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
	 <form action="5changelesson.php" method="post">
      
      <td width="70%">
	 <input type="hidden" name="shunxu" id="shunxu" />
      	<input id="shuru" type="" name="shuru" placeholder="输入相关内容：如 高等数学"/>
      	
      </td>
      <td width="30%">
		  <p><button type="submit" value="检索" class="sousuo">检索</button></p>
		  </td>
		  </form>
    </tr>
  </tbody>
</table>

 <?php
session_start();
$uid=$_SESSION['uid'];
include_once 'includes/db.inc.php';
include 'includes/magicquotes.inc.php';
try{
	$sql="select * from user_course where uid='$uid' order by rand() limit 1";
	$result=$pdo->query($sql);
	$num1=$result->rowCount();
}
catch(Exception $e)
{
	$output = 'Error performing update'.$e->getMessage();
	echo $output;
	exit();
}

$num=0;
if($num1!=0){//用户有收藏的课开始


foreach($result as $row)
{
	$course_id=$row["course_id"];
}
try{
	$sql="select * from coursecategory where course_id=$course_id";
	$result = $pdo->query($sql);
	$num=$result->rowCount();
}
catch(Exception $e)
{
	$output = 'Error performing update'.$e->getMessage();
	echo $output;
	exit();
}



if($num!=0){//此课有兴趣标签的开始


foreach($result as $row){
$category=$row["category"];
}
try{
	

	
		$sql3="select * from coursecategory where category='$category' order by rand() limit 3";//按照课程分类推选书
		$result3 = $pdo->query($sql3);
	
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
foreach($result3 as $row3){
	$course_id=$row3["course_id"];
	try{
		$sql2="select * from course where course_id=$course_id limit 1";
		$result2 = $pdo->query($sql2);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
	foreach($result2 as $row2){
	        $cname=$row2["cname"];
	        $teacher=$row2["teacher"];
			$school=$row2["school"];
	        $credit=$row2["credit"];
	        $course_hour=$row2["course_hour"];
	        $course_nature=$row2["course_nature"];
			$course_id=$row2["course_id"];
			$picture=$row2['picture'];
	}
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
}//此课有兴趣标签的结束
}//用户有收藏的课结束


try{
	$sql="select * from user_interest_label where uid=$uid order by rand() limit 1";
		$result = $pdo->query($sql);
		$num2=$result->rowCount();
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
	
	
	if($num2!=0)
	{//用户已添加部分兴趣标签的开始
		
		
		
foreach($result as $row){
$iid=$row["iid"];
}
try{
		$sql="select * from interest_label where iid=$iid";
		$result = $pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
foreach($result as $row){
	$category=$row["category"];
}
try{

	$sql="select * from coursecategory where category=$category order by rand()  ";//按照个人兴趣标签推荐书
	$result = $pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
foreach($result as $row){
	$course_id=$row["course_id"];
	try{
		$sql="select * from course where course_id=$course_id";
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
	}
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
	    if($cname!=""){echo $cname; echo '<br/>';}
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
	}//用户已添加部分兴趣标签的结束
	if($num==0 &&$num2==0)//没有可参考的用户兴趣所以随机推荐
	{
	try{
		$sql="select * from course order by rand() limit 6";
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
	    if($cname!=""){echo $cname; echo '<br/>';}
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
	}//没有可参考的用户兴趣所以随机推荐的结束
?>     	
      </td>
    </tr>
  </tbody>
</table>








	

</body>
</html>