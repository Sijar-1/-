
<?php
session_start();
$uid=$_SESSION['uid'];	
include 'includes/magicquotes.inc.php';
	include 'includes/db.inc.php';
	include '5changelesson.html';
	try{
		$sql="select * from course";
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
?>
	