<?php
session_start();  
date_default_timezone_set('prc');
$uid=$_SESSION['uid'];
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
		$result = $pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
		foreach($result as $row){
        $cname=$row["cname"];
		$teacher=$row["teacher"];
		$style_arr=$_POST['style'];
		$style=implode("、",$style_arr);
		$tempo=$_POST['shuru'];
		if($tempo="slow"){$tempo=1;}
		else if($tempo="medium"){$tempo=2;}
		else if($tempo="fast"){$tempo=3;}
		$date=date('Y-m-d H:i:s',time());
		$difficulty=$_POST['difficulty'];
		$interest=$_POST['interest']; 
		$value=$_POST['value'];
		$content=$_POST['content'];
		$likes=0;
		$dislikes=0;
		}
	try{
		$sql="insert into comment (course_id,uid,likes,dislikes,content,difficulty,interest,date,value,tempo,style)values('$course_id','$uid','$likes','$dislikes','$content','$difficulty','$interest','$date','$value','$tempo','$style')";
		$result = $pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
		try{
		$sql="update user set score =score+1 where uid='$uid' ";
		$result = $pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
	
header('Location:14lessons.php');
?>






