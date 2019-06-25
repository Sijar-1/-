<?php
session_start();
$id=$_SESSION['uid'];
try {
    $pdo = new PDO('mysql:host=localhost;dbname=gaoxiaoxlsc','root','');
    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    $pdo->exec('SET NAMES "utf8"');
  //  echo "succuss!";
} catch (Exception $e) {
    $output = 'Unable to connect to the database server.';
   // include 'output.html.php';
    exit();
}
if(isset($_POST["nicheng"])&&!empty($_POST["nicheng"])){
$name = $_POST['nicheng'];
try {
     $sql = 'UPDATE user SET username ="'.$name.'" WHERE uid ="'.$id.'"';
     $result = $pdo->query($sql);
  //   echo 'perform update';
} catch (Exception $e) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();
}
}
if(isset($_POST["sex"])&&!empty($_POST["sex"])){
$sex  = $_POST['sex'];
if($sex == "2")
{
    $sexx = 0;
}
else $sexx =1;
try {
     $sql = 'UPDATE user SET sex ="'.$sexx.'" WHERE uid ="'.$id.'"';
     $result = $pdo->query($sql);
    // echo 'perform update';
} catch (Exception $e) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();
}
}
if(isset($_POST["qianming"])&&!empty($_POST["qianming"])){
$qianming = $_POST['qianming'];
try {
     $sql = 'UPDATE user SET personality_signature ="'.$qianming.'" WHERE uid ="'.$id.'"';
     $result = $pdo->query($sql);
   //  echo 'perform update';
} catch (Exception $e) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();
}
}
  echo "<script language='javascript'>window.location='12.php'</script>";
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

