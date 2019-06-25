<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>添加借阅过的书</title>
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
		height:60px;
		
	}
	.bottom1{
		width:60%;
		height:50px;
		line-height: 50px;
		font-family: "黑体";
		margin:auto;
		text-align: center;
		background-color: #33cc99;
		color:#ffffff;
		font-size: 22px;
		font-weight: bold;
		border-radius: 10px;
	}
	.heading{
		position:fixed;
		top: 0;
	}
	
	.heading td{
		text-align: center;
		height:35px;
		line-height: 35px;
		padding-top: 15px;
		padding-bottom: 0px;
		font-family: "黑体";
		font-size: 20px;
		color:#ffffff;
		margin:2px;
	
	}
	.inner{
		margin: 20px 0px 20px 0px;
	}
	.image{
		margin:20px 10px 10px 10px;
		border-radius: 50px;
		width: 100px;
		float:left;
	}
	.image img{
		border-radius: 50px;
	}
	.info{
		font-family: "黑体";
		font-weight: bold;
		font-size: 24px;
		margin: 5px 10px 5px;
		border:0px;
		background-color: #ffffff;
	}
	.info1{
		font-family: "黑体";
		font-size: 20px;
		margin: 5px 10px 5px;
		border:0px;
		background-color: #ffffff;
	}
	.check{
		text-align: center;
		float:left; 
		width:40%;
		margin: 0 auto;
		height:50px;
		line-height: 50px;
		margin: 0px 0px 0px 10px;
		color:#ffffff;
		border-radius: 10px;;
		background-color: #33cc99;
		font-size: 20px;
		font-family: "黑体";
		font-weight: bold;

	}
	.hide{
		text-align: center;
		float:left; 
		width:40%;
		margin: 0 auto;
		height:50px;
		line-height: 50px;
		margin: 0px 0px 0px 10px;
		color:#ffffff;
		border-radius: 10px;
		background-color: #33cc99;
		font-size: 20px;
		font-family: "黑体";
		font-weight: bold;
	}
	.input{
		margin:20px 0px 20px 10px;
	}
	.input #shuru{
		height:30px;
		line-height: 30px;
		width:100%;
	}
	.input .sousuo{
		font-size: 20px;
		font-weight: bold;
		font-family: "黑体";
		color: #ffffff;
		background-color: #33cc99;
		margin-left: 20px;
		border-radius: 5px;
		text-align: center;
		height: 30px;
		line-height: 30px;
	}
	a{
		text-decoration: none;
	}
</style>
	</head>
	
<body>
<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>添加借阅过的书</p></td>
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
      <td width="70%">
	  <form action="2search.php" method="post">
      	<input id="shuru" type="" name="shuru" placeholder="输入相关内容：如《月亮与六便士》"  />
     </td>
      <td width="20%">
        <input class="sousuo" type="submit" value="检索" >
		</td>
		</form>
    </tr>
  </tbody>
</table>



	<?php
	session_start();
	$uid=$_SESSION['uid'];
include 'includes/magicquotes.inc.php';
include 'includes/db.inc.php';
	try{
		$sql="select * from  book where bname like '%{$_POST["shuru"]}%' ";
		$result = $pdo->query($sql);
	}catch(Exception $e){
		$output = 'Error performing update'.$e->getMessage();
		echo $output;
		exit();
	}
		foreach($result as $row){
		    $book_id=$row["book_id"];
			$bname=$row["bname"];
	        $author=$row["author"];
			$publisher=$row["publisher"];
			$picture=$row["picture"];
			$sql2="select * from user_book INNER JOIN book on uid='$uid' and user_book.book_id=book.book_id and book.book_id='$book_id'";
			$res2=$pdo->query($sql2);
			if($res2->rowCount()>0)
			{}
		else{
			
		
	?>
	<table class="inner" width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
  <tr>
   
     <td width="100px" rowspan="2"><div class="image"> 
   <img src=<?php   echo $picture;   ?> width="100px" height="100px"> </div></td>
    <td><div>
	<form method="post" action="34bookintroduction.php">
	<input type="hidden" name="shunxu" value=<?php  echo $book_id; ?>   />
<input class='info' type="submit" value=<?php echo $bname; ?>    />  
<input class='info1' type="submit" value=<?php echo $author."&nbsp &nbsp  &nbsp".$publisher; ?>    />  

   </form>
   </div>
	</td>
  </tr>
  
  <tr>
   <td>
      <div>
	   <form method="post" action="13books/13addInFavorite.php"  target="formsubmit">
	   <input type="hidden" name="shunxu" value=<?php echo $book_id; ?>    />
       <input class="hide"  type="submit"  name="bukejian"  value="加入收藏"/> 
	    </form>
		<iframe name="formsubmit" style="display:none"></iframe>
		  </div>
    </td>
   
  </tr>

</tbody>

</table>
<?php
		}
		}
		
		?>
</div>

<table class="bottom" width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td>
    
	<a href="1addbookbm.html">
	<div class="bottom1">手动创建书目</div></a>
	
	
</td>
	</tr>
  </tbody>
</table>

</body>
</html>