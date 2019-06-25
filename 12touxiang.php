<?php
$uid=$_SESSION['uid'];
include "includes/magicquotes.inc.php";
include_once "includes/db.inc.php";
$sql="select * from user where uid='$uid' ";
$res=$pdo->query($sql);
foreach($res as $row)
{$sex=$row['sex'];}
if($sex==1)
{
?>
<div class="image"><img src="touxiang1.jpg"  width="70%"></div>
<?php
}
else if($sex==0)
{  ?>
<div class="image"><img src="touxiang5.jpg"  width="70%"></div>
<?php  }  ?>