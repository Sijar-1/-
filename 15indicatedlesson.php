<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<?php
$course_id=$_POST['shunxu'];
include_once 'includes/db.inc.php';
include 'includes/magicquotes.inc.php';
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
$credit=$row["credit"];
$course_hour=$row["course_hour"];
$school=$row["school"];
$textbook=$row["textbook"];
$course_nature=$row["course_nature"];
$content=$row["content"];
$examination=$row["examination"];
$picture=$row['picture'];
}
?>

<title>
<?php
echo $cname;
?>
</title>
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
	.bkimage{
		margin: 10px;
	}
	.book{
		margin-top: 20px;
	}
	
	.book .bkinfo{
		margin: 0px;

	}
	.book .rtinfo{
		margin: 20px;

	}
	.bkinfo  p{
		height:25px;
		line-height: 25px;
		font-family: "黑体";
		font-size: 18px;
		padding-left: 20px;
	}
	
	.rtinfo  p{
		
		line-height: 25px;
		font-family: "黑体";
		font-size: 18px;
	}
	.addi{
		text-align: center;
	}
	.check1{
		text-align: center;
		float:left; 
		width:80%;
		height:50px;
		line-height: 50px;
		margin: 0px 0px 0px 10px;
		color:#ffffff;
		border-radius: 10px;
		background-color: #33cc99;
		font-size: 20px;
		font-family: "黑体";
		font-weight: bold;
		margin: 20px;
		border: none;
	}
	.check2{
		text-align: center;
		float:right; 
		width:80%;
		height:50px;
		line-height: 50px;
		margin: 0px 0px 0px 10px;
		color:#ffffff;
		border-radius: 10px;
		background-color: #33cc99;
		font-size: 20px;
		font-family: "黑体";
		font-weight: bold;
		margin: 20px;
		border: none;
	}
	.geren3 a{
		font-size: 14px;
		text-decoration: none;
		color: #000000;
		font-family: "黑体";
	}
	.text1{
		text-align: left;
		font-family: "黑体";
		font-size: 20px;
		margin:20px 0px 0px 20px;
	}
	
	.big{
		margin:10px 30px 10px 10px;
		width:80px;
		height:100px;
		float:left;
	}
	.image{
		overflow: hidden;
		width:80px;
		height: 80px;
		text-align: center;
		border-radius: 20px;
	}
	.content{
		text-align: center;
		border: none;
		font-size: 16px;
		margin-bottom: 10px;
		background-color:#ffffff;
	}.inner{
		text-align: center;
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
      <td width="60%" bgcolor="#FF8600"><p><?php echo $cname;?></p></td>
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

<table class="book" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td width="15%"><div class="bkimage"><img src="<?php echo $picture; ?>" width="145"></div></td>
      <td>
      <div class="bkinfo">
      	<?php echo "<br/>".$cname."<br/>";?>
      	<?php echo "教师：".$teacher."<br/>";?>
      	<?php echo "学分：".$credit."学分"."<br/>";?>
      	<?php echo "课时：".$credit."课时"."<br/>";?>
       <?php echo "开课院校：".$school."<br/>";?>
   
      <?php echo "课程性质：".$course_nature;?>
     
      	</div>
      </td>
    </tr>
    <tr>
      <td colspan="2">
      
      	<div class="rtinfo">
		  <?php echo "参考教程：".$textbook."<br/>";?>
		 <?php echo "考试内容：".$examination."<br/>";?>
      	<?php echo "课程简介：".$content."<br/>";?>
      	</div>
      	
      </td>
      
    </tr>
  </tbody>
</table>

<table class="addi" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td>
	  
      	
	  <form method="post" action="17evaluateall.php" >
	   <input type="hidden" name="shunxu" value=<?php echo $course_id; ?>    />
		  <button class="check1"  type="submit"  name="bukejian"  value="查看评价">查看评价</button> 
			</form>
		</td>
		<td>
		<form method="post" action="15indicatedlesson.php" >
		<input type="hidden" name="shunxu" value=<?php echo $course_id; ?>    />
			<button class="check2" type="submit"  name="bukejian"  value="加入收藏">加入收藏夹</button>
			</form>
		  
      </td>
    </tr>
  </tbody>
</table>


<table class="geren3" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td valign="top">
      <div class="text1">相关课程推荐：</div>
	  
	  
	
 

   
   
    
		  <?php  
try{
	$sql="select * from coursecategory where course_id='$course_id'";
	$result = $pdo->query($sql);
	$num1=$result->rowCount();
}
catch(Exception $e)
{
	$output = 'Error performing update'.$e->getMessage();
	echo $output;
	exit();
}


if($num1!=0)
{//有此课标签的开始
	
foreach($result as $row){
$category=$row["category"];
}
try{
		$sql="select * from coursecategory where category=$category order by rand() limit 3";//按照课程分类推选书
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
    $picture=$row["picture"];
	}
?>
<div class="big">
<div class="inner">
     <form action="15indicatedlesson.php" method="post" >
      	  <div><button class="image" type="submit" style="background: url(<?php echo $picture; ?>); background-size:100px 100px;"></button></div>
			 <input type="hidden" name="shunxu" value=<?php echo $course_id; ?>    />
			<div>	  <button class="content" type="submit" value=<?php echo $cname;  ?>      ><?php echo $cname;  ?></button></div>
			

       </form>
</div>	
</div>
<?php } 
}//有此课标签的结束

else{//无此课标签的开始
try{
		$sql="select * from course order by rand() limit 3";
		$result = $pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
	foreach($result as $row){
	$cname=$row["cname"];
    $picture=$row["picture"];
?>
<div class="big">
<div class="inner">
     <form action="15indicatedlesson.php" method="post" >
      	  <button class="image" type="submit" style="background: url(<?php echo $picture; ?>); background-size:100px 100px;"></button>
			 <input type="hidden" name="shunxu" value=<?php echo $course_id; ?>    />
				  <button class="content" type="submit" value=<?php echo $cname;  ?>      ><?php echo $cname;  ?></button>
			

       </form>
</div>	
</div>
<?php 
	
	} 
}//无此课标签的结束?>

   
        </td>
    </tr>  
  </tbody>
</table>
	</body>
 
</html>

