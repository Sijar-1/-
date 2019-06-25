<?php
session_start();
$uid=$_SESSION['uid'];
if(get_magic_quotes_gpc())
{
    $process = array(&$_GET,&$_POST,&$_COOKIE,&$_REQUEST);
    while(list($key,$val) = each($process))
    {
        foreach ($val as $k => $v)
        {
            unset($process[$key][$k]);
            if (is_array($v))
            {
                $process[$key][stripcslashes($k)] = $v;
                $process[] = &$process[$key][stripcslashes($k)];
            }
            else
            {
                $process[$key][stripcslashes($k)] = stripcslashes($v);
            }
        }
    }
    unset($process);   
}

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
     $sql = "SELECT * FROM friend WHERE (uid1='$uid' or uid2='$uid' ) and verify=1 ";
     $result = $pdo->query($sql);
     echo 'perform update';
} catch (Exception $e) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();
}
while ($row = $result->fetch())
{
	if($row['uid1']==$uid)
    $friend[] =$row['uid2'];
else 
	$friend[] =$row['uid1'];
}
echo $friend['0']; 
$name ='';
$sex ='';
$text='';
function nicheng($uid)
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
   
try {
     $sql = 'SELECT uid,username FROM user WHERE uid LIKE '.$uid.'';
     $result = $pdo->query($sql);
} catch (Exception $e) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();
}
foreach ($result as $row)
{
    $user[] = array('id' => $row['uid'],'name' => $row['username']);
    $name = $row['username'];
    //$text = $row['personality_signature'];
}
return $name;
}
function qianming($uid)
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
   
try {
     $sql = 'SELECT uid,personality_signature FROM user WHERE uid LIKE '.$uid.'';
     $result = $pdo->query($sql);
} catch (Exception $e) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();
}
foreach ($result as $row)
{
    $user[] = array('id' => $row['uid'],'name' => $row['personality_signature']);
    $text = $row['personality_signature'];
    //$text = $row['personality_signature'];
}
return $text;
}
include '10myfriends.html';
/*for($i=0;$i<2;$i++)
{
    echo $friend["$i"];
}
 */
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

