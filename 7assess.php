<!00000doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>我的评价</title>
<style>
	*{
		margin: 0;
		padding: 0;
	}
	.a0{
		margin:0px;
		height:60px;
		
	}
	.heading{
		position:fixed;
		top: 0;
	}
	.heading img{
		margin-bottom: 10px;
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
	a{
		text-decoration: none;
	}
	.sign{
		font-family: "黑体";
		font-weight: bold;
		margin:20px 0px 20px 20px;
		font-size: 25px;
	}
	

	.text1{
		text-align: left;
		font-family: "黑体";
		font-size: 20px;
		margin:20px 0px 20px 20px;
		
	}

	
	.cb{
		width:120px;
		height:30px;
		float:left;
		margin: 0px 20px 20px 20px;
	}
	.number{
		height:30px;
		line-height: 30px;
		width:25%;
	}
	.textarea{
		height:90px;
		line-height: 90px;
		width:80%;
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

<script type="text/javascript">
function checkForm(){
    var tag = false;
    var objs1=document.getElementsByName("style[]");
	var isSel1=false;
	for(var i=0;i<objs1.length;i++)
	{
		if(objs1[i].checked==true)
		{
			isSel1=true;
			break;
		}
	}
	var objs2=document.getElementsByName("shuru");
	var isSel2=false;
	for(var i=0;i<objs2.length;i++)
	{
		if(objs2[i].checked==true)
		{
			isSel2=true;
			break;
		}
	}
	var content = document.getElementById("content").value;
	var difficulty = document.getElementById("difficulty").value;
	var interest = document.getElementById("interest").value;
	var value = document.getElementById("value").value;
    if(isSel1==false){
        alert("课程风格未选择");
    }
	else if(isSel2==false){
        alert("课程节奏未选择");
    }
	else if ( difficulty == ""){
        alert("请按要求选择课程难度");
    }
	else if ( interest == ""){
        alert("请按要求选择课程趣味");
    }
	else if ( value == ""){
        alert("请按要求选择课程价值");
    }
	else if ( content == ""){
        alert("详细评价未输入");
    }
	else{
        alert("创建成功");
        tag = true;
    }
    return tag;
}
</script>
</head>

<body>
<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
     <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>我的评价</p></td>
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

<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td>
		<div class="sign">
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
        $sql="select * from course where course_id=$course_id";
		$result=$pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
	$error=is_array($result);
	echo $error;
	foreach($result as $row){
        $cname=$row["cname"];
		$teacher=$row["teacher"];
    }
		echo $cname." ".$teacher;
		?>
		</div>
       
   </td>
    </tr>
  </tbody>
</table>

<form action="7assess_submit.php" method="post" onsubmit="return checkForm()">
<table class="assess" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td valign="top">
      <div class="text1">上课风格（可多选）：</div>
      
        <div class="cb">
			<input type="checkbox" value="细致" id="style1" name="style[]">细致</div>
        <div class="cb">
            <input type="checkbox" value="不拘" id="style2" name="style[]">不拘</div>
        <div class="cb">
            <input type="checkbox" value="幽默" id="style3" name="style[]">幽默</div>
        <div class="cb">
            <input type="checkbox" value="严肃" id="style4" name="style[]">严肃</div>
		<script>
         
        </script>
		</td>
		</tr>
   
   
    
  </tbody>
</table>

<table class="assess" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td valign="top">
      <div class="text1">课程节奏：</div>
	
      <div class="cb">
          <input type="radio" name="shuru" id="shuru" value="slow">
          悠闲
      </div>
          <div class="cb">
			  <input type="radio" name="shuru" id="shuru" value="medium">
			  适中
          </div>
			  <div class="cb">
			    <p>
			      <input type="radio" name="shuru" id="shuru" value="fast">
			      很快
			    </p>
			  </div>
      </td>
	</tr>
  </tbody>
	</table>


<table class="assess" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td valign="top">
      <div class="text1">课程难度：
        <input type="number" id="difficulty" name="difficulty" class="number" min="1" max="10" placeholder="请输入整数0~10">
      </div></td>
    </tr>
   
   
    
  </tbody>
</table>
	
	<table class="assess" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td valign="top">
      <div class="text1">课程趣味：
        <input type="number" id="interest" name="interest" class="number" min="1" max="10" placeholder="请输入整数0~10">
      </div></td>
    </tr>
   
   
    
  </tbody>
</table>

<table class="assess" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td valign="top">
      <div class="text1">课程价值：
        <input type="number" id="value" name="value" class="number" min="1" max="10" placeholder="请输入整数0~10">
      </div></td>
    </tr>
   
   
    
  </tbody>
</table>

<table class="assess" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td valign="top">
      <div class="text1">评价：
        <textarea placeholder="请输入详细评价" name="content" id="content" class="textarea"></textarea>
      </div></td>
    </tr>
  </tbody>
</table>


<table class="bottom" width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td>
    
<input name="shunxu" type="hidden" value="<?php echo $course_id; ?>" />
	<input type="submit" class="bottom1" value="提交">

</form>
	
</td>
	</tr>
  </tbody>
</table>

</body>
</html>
