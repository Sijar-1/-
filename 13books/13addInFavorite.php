<?php
session_start();
$uid=$_SESSION['uid'];
include_once  $_SERVER['DOCUMENT_ROOT'].'/html/includes/db.inc.php';
$a=$_POST['shunxu'];
$sql2="insert into user_book  (uid, book_id) values ($uid, (select book_id from book where book_id=$a))";
$pdo->exec($sql2);
?>
