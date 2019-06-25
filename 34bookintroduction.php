<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>书籍</title>
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
	
	.book{
		margin-top: 20px;
	}
		.bkimage{
		margin:0px 10px 0px;
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

	.check1{
		text-align: center;
		float:left; 
		width:40%;
		height:40px;
		line-height: 40px;
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
		width:40%;
		height:40px;
		line-height: 40px;
		margin: 0px 0px 0px 10px;
		color:#ffffff;
		border-radius: 10px;
		background-color: #33cc99;
		font-size: 20px;
		font-family: "黑体";
		font-weight: bold;
		margin: 20px;
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
		float:left;
		display: inline;
		overflow: hidden;
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
	}
	.inner{
		text-align: center;
	}
	
	a{
		text-decoration: none;
	}
</style>
	</head>

<body>
<?php
$a=$_POST['shunxu'];
include_once 'includes/db.inc.php';

 $sql="select * from book where book_id='$a'";
 $res=$pdo->query($sql);
 foreach($res as $arr){
  $bname=$arr['bname'];
  $author=$arr['author'];
  $publisher=$arr['publisher'];
  $ISBN=$arr['ISBN'];
  $publish_year=$arr['publish_year'];
  $picture=$arr['picture'];  
 } 
?>
<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width='60%' bgcolor="#FF8600"><div style="padding: 10px; width:250px;position:relative;   left: auto; vertical-align: middle;text-align: center;">
	  <p style="width: 100%; height: 25px;line-height: 25px; text-overflow: ellipsis;white-space: nowrap;overflow: hidden;"><?php echo $bname; ?></p></div></td>
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
      <td width="15%"><div class="bkimage"><img src=<?php   echo $picture;   ?> width="161"></div></td>
      <td>
      <div class="bkinfo">
	  
<?php     
	   echo "$bname<br/>
      	作者：$author</br>
      	出版社：$publisher<br/>
      	ISBN：$ISBN</br>
		出版年份:$publish_year";		
		?>
      	</div>
      </td>
    </tr>
  </tbody>
</table> 

<div class="text1">
相关书籍推荐：
</div>
<?php  
$book_id=$a;
try{
	$sql="select * from bookcategory where book_id='$book_id'";
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
{//有此书标签的开始
	
foreach($result as $row){
$category=$row["category"];
}
try{
		$sql="select * from bookcategory where category=$category order by rand() limit 3";//按照书本分类推选书
		$result = $pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
foreach($result as $row){
	$book_id=$row["book_id"];
	try{
		$sql="select * from book where book_id=$book_id";
		$result = $pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
	foreach($result as $row){
	$bname=$row["bname"];
	$author=$row["author"];
	$publisher=$row["publisher"];
    $picture=$row["picture"];
	}
?>
<div class="big">
<div class="inner" align="left">
     <form action="34bookintroduction.php" method="post" >
      	  <button class="image" type="submit" style="background: url(<?php echo $picture; ?>); background-size:100px 100px;"></button>
			 <input type="hidden" name="shunxu" value=<?php echo $book_id; ?>    />
				  <button class="content" type="submit" value=<?php echo $bname;  ?>      ><?php echo $bname;  ?></button>
			

       </form>
</div>	
</div>
<?php } 
}//有此书标签的结束

else{//无此书标签的开始
try{
		$sql="select * from book order by rand() limit 3";
		$result = $pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
	foreach($result as $row){
	$bname=$row["bname"];
	$author=$row["author"];
	$publisher=$row["publisher"];
    $picture=$row["picture"];
?>
<div class="big">
<div class="inner" align="left">
     <form action="34bookintroduction.php" method="post" >
      	  <button class="image" type="submit" style="background: url(<?php echo $picture; ?>); background-size:100px 100px;"></button>
			 <input type="hidden" name="shunxu" value=<?php echo $book_id; ?>    />
				  <button class="content" type="submit" value=<?php echo $bname;  ?>      ><?php echo $bname;  ?></button>
			

       </form>
</div>	
</div>
<?php 
	
	} 
}//无此书标签的结束?>

	</body>
 
</html>