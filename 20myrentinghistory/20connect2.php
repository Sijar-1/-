<?php
session_start();
$uid=$_SESSION['uid'];
include_once  $_SERVER['DOCUMENT_ROOT'].'/html/includes/db.inc.php';
$a=$_POST['shunxu'];
$sql2="update user_book set hide=0 where uid='$uid' and book_id=$a";
$pdo->exec($sql2);
?>