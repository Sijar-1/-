<?php
session_start();
include_once  $_SERVER['DOCUMENT_ROOT'].'/html/includes/db.inc.php';
$a=$_POST['shunxu'];
$uid=$_SESSION['uid'];
$sql="delete from  user_book where uid=$uid and book_id=$a";
$res=$pdo->exec($sql);
?>