<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>评价</title>
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
	.scorestable{
		position: fixed;
		top:80px;
	}
	.scores{
		margin:10px 20px 40px;
		font-size: 16px;
		font-family: "黑体";
		font-weight: lighter;
	}
	.title{
		margin:20px 20px 0px;
		font-size: 20px;
		font-family: "黑体";
		font-weight: bold;
	}
	
	
	.inner{
		margin: 20px 0px 0px;
		
	}
	.image img{
		margin:10px 10px 10px 10px;
		border-radius: 25px;
		width: 50px;
		
	}
    
		
	
	.info{
		font-family: "黑体";
		font-weight: bold;
		font-size: 20px;
		margin: 5px 10px 5px;
	}
	
	.info1{
		font-family: "黑体";
		font-size: 16px;
		font-weight: lighter;
		margin: 5px 10px 5px;
	}
	

	a{
		text-decoration: none;
	}
	.inner .content{
		padding: 20px;
	}
	
	.inner .functions{
		padding: 0px 10px 0px;
	}
	.inner .like{

		float: right;
	}
	.inner .like1{
		font-family: "黑体";
		font-weight: lighter;
		width: 40px;
		float: right;
		color: #000000;
	}
    .inner .dislike{
		width: 40px;
		float: right;
	}
	.inner .comments{
		float: right;
	}
	.inner .comments1{
		font-family: "黑体";
		font-weight: lighter;
		float: right;
		width: 40px;
		color: #000000;
	}
	.inner .discusstitle{
		padding:10px;
		font-family: "黑体";
	}
	.inner .discuss{
		
	}
	a{
		text-decoration: none;
	}
	.bottomblank{
		height:60px;
	}
	.bottom{
		position: fixed;
		bottom: 0;
		padding-bottom: 10px;
		width: 100%;
		
		text-align: center;
		padding-top: 10px;
		background-color: #ffffff;
		
	}
	.overflow{
		overflow-y: scroll;
		height: 580px;
		position: fixed;
		top: 80px;
		background-color:#F2FFFA;
		width: 100%;
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
		border: none;
	}
</style>
	</head>
	
<body>

<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>精彩评价(显示前三位）</p></td>
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
$course_id=$_POST['shunxu'];
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
		$sql="select * from comment where course_id=$course_id order by likes desc limit 3";
		$result=$pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}

foreach($result as $row_1){
$uid=$row_1["uid"];
$style=$row_1["style"];
$tempo=$row_1["tempo"];
$date=$row_1["date"];
$difficulty=$row_1["difficulty"];
$interest=$row_1["interest"];
$value=$row_1["value"];
$content=$row_1["content"];
try{
		$sql="select * from user where uid=$uid";
		$result = $pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
foreach($result as $row_2){
	$username=$row_2["username"];
}

?>

<table class="inner" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr></tr>
  </tbody>
  <tbody>
    <tr>
      <td width="5%"><div class="image"><a href="27otherspersonalpage.html"><img src="touxiang6.jpg" width="50vx" height="50vx"></a></div></td>
      <td width="95%"><div class="info"><?php echo $uid; ?></div>
        <div class="info1"><?php echo $date; ?></div></td>
    </tr>
    <tr>
      <td colspan="2"><div class="content"><?php echo "上课风格：".$style; ?><br>
        <?php
		if($tempo==1){$tempo="悠闲";}
		else if($tempo==2){$tempo="适中";}
		else if($tempo==3){$tempo="很快";}
		echo "课程节奏：".$tempo; 
		?><br>
        <?php echo "课程难度：".$difficulty; ?><br>
        <?php echo "课程趣味：".$interest; ?><br>
        <?php echo "课程价值：".$value; ?> </div>
        <div class="content"><?php echo "评价内容: ".$content; ?></div></td>
    </tr>
    <tr>
      <td colspan="2"><div class="functions"> <a href=""><span class="comments1">2</span><span class="comments"><img src="comments.png" height="25vx" width="25vx"></span></a> <a href=""><span class="dislike"><img src="dislike.png" height="25vx" width="25vx"></span></a> <a href=""><span class="like"><span class="like1">
	  <?php
	  $comment_id=1;
	  try{
		$sql="select * from comment where comment_id=$comment_id";
		$result = $pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}

     foreach($result as $row){
	  
	  $likes=$row["likes"];
	  echo $likes; 
	  
	 }
	  ?>
	  </span><img src="like.png" height="25vx" width="25vx"></span></a> </div></td>
    </tr>
    <tr>
    	<td colspan="2">
    		<div>
    			<img src="line.png" width="100%" height="20">
    		</div>
    	</td>
    </tr>
  </tbody>
</table>
<?php 

    }
?>
<div class="bottomblank">
	
</div>

<table class="bottom" width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td>
    
	<a href="7assess.php">
	<div class="">
	<form method="post" action="7assess.php" >
	<input type="hidden" name="shunxu" value=<?php echo $course_id; ?>    />
		<button class="bottom1"  type="submit"  name="bukejian"  value="添加评价">添加评价</button> 
	</form></div></a>
	
	
</td>
	</tr>
  </tbody>
</table>






</body>
</html>


	
 

