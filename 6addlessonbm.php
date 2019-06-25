<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>手动创建课程</title>
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
		padding-top: 25px;
		padding-bottom: 0px;
		font-family: "黑体";
		font-size: 22px;
		color:#ffffff;
		margin=0;
	}


	.input{
		margin:20px 0px 20px 10px;
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
	.logo{
		text-align: center;
	}
	.input .shuru{
		height:30px;
		line-height: 30px;
		width:100%;
		font-size: 20px;
		font-weight: lighter;
		
	}
	
	.bottom{
		
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
<table class="bottom" width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td>

    <?php
	session_start();
$uid=$_SESSION['uid'];
include 'includes/magicquotes.inc.php';
include_once 'includes/db.inc.php';
	$cname=$_POST["cname"];
	$teacher=$_POST["teacher"];              
	$credit=$_POST["credit"];
	$school=$_POST["school"];
	$course_hour=$_POST["course_hour"];
	$content=$_POST["content"];
	$textbook=$_POST["textbook"];
	$course_nature=$_POST["course_nature"];
	$examination=$_POST["examination"];
	if($_FILES["file"]["size"]<2000000)    
{
     if($_FILES["file"]["error"]>0)
	 {
	      echo "上传图片Error:".$_FILES["file"]["error"]."<br/>";
		  exit();
     }
    else
    {
           //echo"Upload:".$_FILES["file"]["name"]."<br/>";
	       //echo "Type:".$_FILES["file"]["type"].",br/>";
	       //echo"Size:".($_FILES["file"]["size"]/1024)."kb<br/>";
	       //echo"Temp file:".$_FILES["file"]["tmp_name"]."<br/>";
	       if(file_exists("img/course".$_FILES["file"]["name"]))
	       {
		            echo $_FILES["file"]["name"]."already exists.";
	       }
	       else
	       {
		           move_uploaded_file($_FILES["file"]["tmp_name"],
		           "img/course/".$_FILES["file"]["name"]);
		         //echo "Stored in:"."img/course/".$_FILES["file"]["name"];
		             $picture="img/course/".$_FILES["file"]["name"];
	       }  
   }
}
else
{
	echo"Invalid file";
}    
	try{
	$check="select * from course where cname='$cname' and teacher='$teacher' and school='$school' ";
	$result=$pdo->query($check);
	$num=$result->rowCount();
	if($num>0)
	{
		echo"<div  class='button' >已存在相同课程!</div>"; 
		echo"<p><div class='logo'><img src='img/wangye/wrong.jpg'  width=\"340px\" height=\"300px\"></div></p>";
	}
	else
	{
		
	$sql="insert into course (cname,teacher,credit,school,course_hour,content,textbook,course_nature,examination,picture)values
	('$cname','$teacher','$credit','$school','$course_hour','$content','$textbook','$course_nature','$examination','$picture')";
	$result=$pdo->exec($sql);
	//$sql="SELECT LAST_INSERT_ID()";
	//$course_id=$pdo->query($sql);
		 echo"<div  class='button'>创建成功！</div>";
		 echo"<p><div lcass=\"logo\"><img src='img/wangye/success.jpg'  width=\"300px\" height=\"300px\"></div></p>";
	}
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
	//echo $course_id;
	
	?>

	
	</td>
	</tr>
  </tbody>
</table>
</body>
</html>

