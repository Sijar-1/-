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
$fuid=$_POST['shunxu'];
try {
     $sql ="SELECT * FROM user WHERE uid='$fuid'";
     $result = $pdo->query($sql);
     echo 'perform update';
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
echo $name;
echo $sex;
echo $text;
$sexx='';
if($sex == 0)
{
    $sexx='女';
}
else $sexx ='男';
echo $sexx;
include '27otherspersonalpage.html';
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

  