<?php
session_start();
$uid=$_SESSION['uid'];
include 'includes/magicquotes.inc.php';
include_once 'includes/db.inc.php';
try {
     $sql = 'SELECT iccd,icname FROM interest_category';
     $result = $pdo->query($sql);
} catch (Exception $e) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();
}
foreach ($result as $row)
{
    $categories[]=array('id'=>$row['iccd'],'name'=>$row['icname'],"selected"=>FALSE);
}
try {
    $sql = 'SELECT iid,uid FROM user_interest_label WHERE uid ="'.$uid.'"';
    $result = $pdo->query($sql);
} catch (Exception $exc) {
    echo $exc->getTraceAsString();
}
foreach ($result as $row)
{
    $checked[] =$row["iid"];
}
/*
foreach($checked as $checked)
{
    echo $checked["id"];
}

 */
include '4changeinterests.html';
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

