<html>
<head>
<script language=JavaScript> 
setTimeout("document.form1.submit()",0) 
</script> 

 </head>
 <body  >
<?php
session_start();
include "../includes/magicquotes.inc.php";
$uid=$_SESSION['uid'];
$id=$_POST['shunxu'];
$content=$_POST['shuru'];
date_default_timezone_set('Asia/Shanghai');
$time=date('Y-m-d H:i:s',time());
include_once "../includes/db.inc.php";
try{
	$sql1="insert into chat (senduid, receiveuid,content,time) values ('$uid','$id','$content','$time')";
    $pdo->exec($sql1);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
	?>
</body>
</html>