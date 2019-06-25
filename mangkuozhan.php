<?php
if(isset($_POST['action']) and $_POST['action'] == 'Publish')
{
    try {
    $pdo = new PDO('mysql:host=localhost;dbname=gaoxiaoxlsc','root','');
    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    $pdo->exec('SET NAMES "utf8"');
} catch (Exception $e) {
    $output = 'Unable to connect to the database server.';
    include 'output.html.php';
    exit();
}
$id=$_POST['id'];
echo $id;
$show=1;
try {
     $sql = 'UPDATE comment SET shower ="'.$show.'" WHERE comment_id ="'.$id.'"';
     $result = $pdo->query($sql);
} catch (Exception $e) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();
}
}
if(isset($_POST['action']) and $_POST['action'] == 'Delete')
{
    try {
    $pdo = new PDO('mysql:host=localhost;dbname=gaoxiaoxlsc','root','');
    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    $pdo->exec('SET NAMES "utf8"');
} catch (Exception $e) {
    $output = 'Unable to connect to the database server.';
    include 'output.html.php';
    exit();
}
$id=$_POST['id'];
echo $id;
 try {
     $sql = 'DELETE FROM comment WHERE comment_id="'.$id.'"';
     $result = $pdo->query($sql);
} catch (Exception $e) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();
}
}
header('Location:http://localhost/gaoxiaoxlsc/mangpage.php');
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

