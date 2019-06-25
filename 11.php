<?php
session_start();
$uid=$_SESSION['uid'];
include "includes/magicquotes.inc.php";
include_once "includes/db.inc.php";
try {
     $sql = 'SELECT uid,username,sex,personality_signature FROM user WHERE uid LIKE '.$uid.'';
     $result = $pdo->query($sql);
} catch (Exception $e) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();
}
foreach ($result as $row)
{
    $user[] = array('id' => $row['uid'],'name' => $row['username'],'sex' => $row['sex'],'text'=> $row['personality_signature']);
    $name = $row['username'];
    $sex = $row['sex'];
    $text = $row['personality_signature'];
}
if($sex == 0)
{
    $sexx='女';
}
else $sexx ='男';

//while ($row = $result-> fetch() ) {
//$user[] = array('id' =>$row['id'],'sex'=> $row['sex'],'text'=> $row['personally_signature']);}

/*
try {
    $sql = 'SELECT uid,username,sex,personally_signature FROM user WHRER uid = 10161825';
    $s = $pdo->prepare($sql);
    //$s->bindValue(':id', $id);
    $s ->execute();
} catch (Exception $exc) {
    echo $exc->getTraceAsString();
    echo 'Unable to connect to the database server.';
}
$row = $s->fetch();
$name = $row['username'];
$sex = $row['sex'];
$text = $row['personally_signature'];*/

//echo $sex;
//echo $text;
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

