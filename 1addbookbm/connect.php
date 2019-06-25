
<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>手动添加书目结果</title>
<style>
	*{
		margin: 0;
		padding: 0;
	}
	body{
		background-image:url("");
		background-position: center 0;
		background-size:cover;
		margin: 0px;
	}
	.a0{
		margin:0px;
		height:80px;
		
	}
	.heading{
		position:fixed;
		top: 0;
	}
	.heading td{
		text-align: center;
		height:35px;
		line-height: 35px;
		padding-top: 25px;
		padding-bottom: 0px;
		font-family: "黑体";
		font-size: 22px;
		color:#ffffff;
		margin=0;
	}

	
	.info{
		height:30px;
		line-height: 30px;
		width:100%;
		font-size: 24px;
		font-family: "黑体";
		
	}
	
	.input{
		margin:20px 0px 20px 10px;
	}
	.input .shuru{
		height:30px;
		line-height: 30px;
		width:100%;
		font-size: 20px;
		font-weight: lighter;
		
	}
	a{
		text-decoration: none;
	}
	.logo{
		text-align: center;
	}
	.button{
		height:40px;
		line-height: 40px;
		font-size: 20px;
		font-family: "黑体";
		font-weight: lighter;
	}
	
</style>
</head>

<body>
<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="../jiantou.gif" height="50vx" width="50vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>手动创建书目结果</p></td>
      <td width="20%" bgcolor="#FF8600"></td>
    </tr>
  </tbody>
</table>

<table border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<div class="a0">
				
			</div>
		</td>
	</tr>
</table>

<table class="input" width="95%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
		<td width="20%"></td>
      <td width="80%">
      	
  
<?php
$bookname=$_POST['bookname'];
$author=$_POST['author'];
$publisher=$_POST['publisher'];
$ISBN=$_POST['ISBN'];
$publish_year=$_POST['publish_year'];
$book_rate=$_POST['book_rate'];
if($_FILES["file"]["size"]<2000000)    
{
     if($_FILES["file"]["error"]>0)
	 {
	      echo "上传图片Error:".$_FILES["file"]["error"]."<br/>";
		  exit();
     }
    else
    {
           //echo"Upload:".$_FILES["file"]["name"]."<br/>";
	       //echo "Type:".$_FILES["file"]["type"].",br/>";
	       //echo"Size:".($_FILES["file"]["size"]/1024)."kb<br/>";
	       //echo"Temp file:".$_FILES["file"]["tmp_name"]."<br/>";
	       if(file_exists("../img/book".$_FILES["file"]["name"]))
	       {
		            echo $_FILES["file"]["name"]."already exists.";
	       }
	       else
	       {
		           move_uploaded_file($_FILES["file"]["tmp_name"],
		           "../img/book/".$_FILES["file"]["name"]);
		         //echo "Stored in:"."../img/book/".$_FILES["file"]["name"];
		             $picture="img/book/".$_FILES["file"]["name"];
	       }  
   }
}
else
{
	echo"Invalid file";
}
try
{
	$pdo=new PDO('mysql:host=localhost;dbname=gaoxiaoxlsc','root','');
	$pdo->query('set names utf8;');
	$check="select * from book where ISBN='$ISBN'";
	$result=$pdo->query($check);
	$num=$result->rowCount();
	if($num>0)
	{
		echo"<div  class='button' >已存在相同ISBN图书!</div>"; 
		echo"<p><div class='logo'><img src='../img/wangye/wrong.jpg'  width=\"340px\" height=\"300px\"></div></p>";
	}
	else
	{
	     $insert="insert into book  (bname,author,publisher,ISBN,publish_year,picture) values ('$bookname',
	     '$author','$publisher','$ISBN','$publish_year','$picture')";
         $pdo->exec($insert);
	     $sql="select * from book where ISBN='$ISBN'";
	     $res=$pdo->query($sql);
	     while($raw=$res->fetch())
		 {
	          $book_id=$raw['book_id'];
	      }
	     $insert2="insert into user_book (book_id, uid,book_rate) values('$book_id',10161825,'$book_rate')";
	     $pdo->exec($insert2);
		 echo"<div  class='button'>创建成功！</div>";
		 echo"<p><div lcass=\"logo\"><img src='../img/wangye/success.jpg'  width=\"300px\" height=\"300px\"></div></p>";
	}
 }
catch(PDOException $e)
{
	$output= 'Unable to connect to the database server.';
	$e->getMessage();
	echo $output;
	exit();
}
?>

    </td>

    </tr>
  </tbody>
</table>
</body>
</html>