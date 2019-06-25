<?php
session_start();
$uid=$_SESSION['uid'];
if($_POST)
 {
     $var_dump = var_dump($_POST['checkbox']);
 }
 $hide=0;
try {
    $pdo = new PDO('mysql:host=localhost;dbname=gaoxiaoxlsc','root','');
    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    $pdo->exec('SET NAMES "utf8"');
    echo "succuss!";
} catch (Exception $e) {
    $output = 'Unable to connect to the database server.';
    include 'output.html.php';
    exit();    
}
try {
    $sql = 'DELETE FROM user_interest_label WHERE uid ="'.$uid.'"';
     $result = $pdo->query($sql);
     echo 'perform update';
} catch (Exception $ex) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();
}
if(isset($_POST["checkbox"])&&!empty($_POST["checkbox"])){
    for($i = 0; $i < count($_POST['checkbox']); $i++){
    $text=$_POST['checkbox'][$i];
try {
     $sql = "INSERT into user_interest_label (uid,iid,hide)values('$uid','$text','$hide')";
     $result = $pdo->query($sql);
     echo 'perform update';
} catch (Exception $e) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();

}   
}
header('Location: http://111.231.77.113/html/11mypersonalpage.php');
}

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

