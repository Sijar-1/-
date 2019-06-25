<?php
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
     $sql = 'SELECT comment_id,course_id,uid,content,date FROM comment';
     $result = $pdo->query($sql);
     echo 'perform update';
} catch (Exception $e) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();
}
foreach ($result as $row)
{
    $comments[]=array('id'=>$row['comment_id'],'courseid'=>$row['course_id'],'uid'=>$row['uid'],'content'=>$row['content'],'time'=>$row['date']);
}
function courseplay($courseid)
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
     $sql = 'SELECT course_id,cname FROM course WHERE course_id LIKE '.$courseid.'';
     $result = $pdo->query($sql);
} catch (Exception $e) {
    $output = 'Error performing update'.$e->getMessage();
    echo $output;
    exit();
}
foreach ($result as $row)
{
    $user[] = array('id' => $row['course_id'],'name' => $row['cname']);
    $name = $row['cname'];
}
return $name;
}
include 'managepage.html';
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

