 <html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>课程</title>
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
	
	
	.input{
		margin:20px 0px 20px 10px;
		position:fixed;
		top: 80px;
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
		width:80px;
		line-height: 30px;
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
		font-weight: bold;
		font-size: 24px;
		margin: 5px 10px 5px;
	}
	.info1{
		font-family: "黑体";
		font-size: 20px;
		margin: 5px 10px 5px;
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
	
</style>
	</head>
	
<body>

<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>课程</p></td>
      <td width="20%" bgcolor="#FF8600"></td>
    </tr>
  </tbody>
</table>

<table class="input" width="95%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td width="10%"><img src="http://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1513754632188&di=a12f2901d85ff8d93dc14a0b8fc8e2e5&imgtype=0&src=http%3A%2F%2Fimg2.web07.cn%2FUpPic%2FPng%2F201506%2F08%2F507686080913011.png" width="20px" height="20px"></td>
      <td width="70%">
	    <form action="22mylessonhistory_search.php" method="POST">
      	<input id="shuru" type="" name="shuru" placeholder="输入相关内容：如高等数学"/>
      	
      </td>
      <td width="20%">
        <p><input type="submit" value="检索" class="sousuo"></p>
		
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
<div class="overflow">


	<?php
	    $uid=10161825;
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
		$sql="select * from user_course where uid=$uid and cname like '%".$_POST["shuru"]."%'";
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
	?>
	<table class="inner" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
  <tr></tr>
</tbody>
<tbody>
  <tr>
    <td width="100px" rowspan="2"><div class="image"> 
    <img src="https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2096378222,1875058638&fm=27&gp=0.jpg" width="100px" height="100px"> </div></td>
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
	if($course_hour!=""){echo $course_hour."课时 ";}
	?>
	</div></td>
  </tr>
  <tr>
    <td><a href="15indicatedlesson.php">
      <div class="hide">查看信息</div></a>
      <a href=>
      <div class="hide">加入收藏夹</div></a>
      </td>
  </tr>
</tbody>
<tbody>
</tbody>
</table>
<?php
		}
		
		?>
</div>
</body>
</html>