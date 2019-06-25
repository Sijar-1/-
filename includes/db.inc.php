<?php
try{
	$pdo=new PDO('mysql:host=localhost;dbname=gaoxiaoxlsc','root','');
	$pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	$pdo->query('set names utf8;');
}
catch(PDOException $e)
{
	$output= 'Unable to connect to the database server.';
	$e->getMessage();
	echo $output;
	exit();
}
?>