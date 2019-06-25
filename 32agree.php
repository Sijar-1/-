<?php
session_start();
$uid=$_SESSION['uid'];
$id=$_POST['shunxu'];
include "includes/magicquotes.inc.php";
include "includes/db.inc.php";
$sql="update friend set verify=1 where  uid1='$id' and uid2='$uid' ";
$pdo->exec($sql);

?>