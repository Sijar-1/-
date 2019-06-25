<?php 
session_start();
$uid=$_SESSION['uid'];
$id=$_POST['shunxu'];
include "includes/magicquotes.inc.php";
include_once "includes/db.inc.php";
$sql="insert into friend (uid1,uid2) values ('$uid','$id')";
$pdo->exec($sql);
?>