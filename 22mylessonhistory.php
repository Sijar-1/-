<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>我上过及浏览过的课</title>
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
		border: none;
	}
	.input{
		margin:20px 0px 20px 10px;
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
		letter-spacing: -1px;}
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
		width: 80px;
		line-height: 30px;
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
	</head>
	
<body>

<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>我上过及浏览过的课</p></td>
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

<table class="input" width="95%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      
      <td width="80%">
	  <form action="22mylessonhistory_search.php" method="post">
      	<input id="shuru" type="" name="shuru" placeholder="输入相关内容：如《高等数学》"/>
      	</form>
      </td>
      <td width="20%">
		  <p><button type="submit" class="sousuo">检索</button></p>
		  </td>
		  
    </tr>
  </tbody>
</table>
<div class="overflow">
<?php
session_start();
$uid=$_SESSION['uid'];
if(get_magic_quotes_gpc())
{
    $process = array(&$_GET,&$_POST,&$_COOKIE,&$_REQUEST);
    while(list($key,$val) = each($process))
    {
        foreach ($val as $k => $v)
        {
            unset($process[$key][$k]);
            if (is_array($v))
            {
                $process[$key][stripcslashes($k)] = $v;
                $process[] = &$process[$key][stripcslashes($k)];
            }
            else
            {
                $process[$key][stripcslashes($k)] = stripcslashes($v);
            }
        }
    }
    unset($process);   
}
    try{
		$pdo=new PDO('mysql:host=localhost; dbname=gaoxiaoxlsc','root','');
		//$pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERROMODE_EXCEPTION);
		$pdo->exec('SET NAMES"utf8"');
	}catch(Exeception $e){
		$output='Unable to connect to the database server.';
		//include 'output.html.php';
		exit();
	}
	try{
		$sql="select * from user_course INNER JOIN course on uid=$uid and user_course.course_id=course.course_id";
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
    <td><div class="info"><?php echo $cname; ?></div>
    <div class="info1">
	<?php
	if($teacher!=""){echo $teacher." ";}
	if($school!=""){echo $school." ";}
	if($credit!=""){echo $credit."学分 ";}
	if($course_nature!=""){echo $course_nature." ";}
	if($course_hour!=""){echo $course_hour."课时 ";}
	?>
	</div></td>
  </tr>
  <tr>
    <td><form action="15indicatedlesson.php" method="post">
		<button class="hide" type="submit">查看信息</button>
<input type="hidden" name="shunxu" id="shunxu" value="<?php echo $course_id; ?>" />
	  </form>
      <a href="">
      <span class="hide">隐藏此课</span></a>
      </td>
  </tr>
</tbody>

</table>
<?php
		}
		?>

</div>
</body>
</html>

