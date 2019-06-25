<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>我借阅过的书</title>
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
		border: none;
	}
	.info{
		font-family: "黑体";
		font-size: 18px;
		margin: 5px 10px 0px;
		border:0px;
		background-color: #ffffff;
		height: auto;
		min-height: 30px;

		text-align: left;
		
	}
	.info1{
		font-family: "黑体";
		font-size: 16px;
		margin: 0px 10px 0px;
		border:0px;
		background-color: #ffffff;
		height: auto;
		min-height: 30px;
		font-weight: lighter;
		text-align: left;
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
		width:43%;
		margin: 0 auto;
		height:50px;
		line-height: 50px;
		margin: 0px 0px 0px 5px;
		color:#ffffff;
		border-radius: 10px;
		background-color: #33cc99;
		font-size: 20px;
		font-family: "黑体";
		font-weight: bold;
		border: none;
	}
	.input{
		margin:20px 0px 20px 10px;
	}
	.input #shuru{
		height:30px;
		line-height: 30px;
		width:90%;
		background-color: #eeeeee;
		background: url("sousuo.png") no-repeat scroll left center transparent;
		background-size: 20px 18px;
		padding-left: 30px;
		font-size: 14px;
		letter-spacing: -1px;
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
		border: none;
		width: 100%;
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
      <td width="60%" bgcolor="#FF8600"><p>我借阅过的书</p></td>
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

<table class="input" width="90%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td width="80%">
	  <form action="./20myrentinghistory/20search.php" method="post">
      	<input id="shuru" type="" name="shuru" placeholder="输入相关内容：如《月亮与六便士》"  /></form>
     </td>
      <td width="20%">
		  <button class="sousuo" type="submit">检索</button>
		</td>
		
    </tr>
  </tbody>
</table>


<?php
session_start();
 include_once $_SERVER['DOCUMENT_ROOT'].'/html/includes/db.inc.php';
 $uid=$_SESSION['uid'];
  $sql1="select * from  book";
  $res1=$pdo->query($sql1);
  foreach($res1 as $row1)
 {
	 $book_id=$row1['book_id'];
 $sql="select * from user_book INNER JOIN  book  on user_book.uid=$uid and book.book_id=user_book.book_id and book.book_id='$book_id'";
 $res=$pdo->query($sql);
 $row=$res->fetch();
  $bname=$row['bname'];
  $author=$row['author'];
  $publisher=$row['publisher'];
  $picture=$row['picture'];
if($row){
?>
<table class="inner" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
  <tr></tr>
</tbody>

<tbody>
  <tr>
   
	<form id="formcar" name="formcar" method="post" action="24indicatedbook.php">
	 <td width="100px" rowspan="2"><div class="image"> 
   <button type="submit"  name="button"  style="width:100px;height:100px;background-size:100% 100%;background-image: url('<?php   echo $picture; ?>')"> </button> </div></td>
    <td><div>
	<input type="hidden" name="shunxu" value=<?php  echo $book_id; ?>   />
		<div class="info"><?php echo $bname; ?></div>
<div class="info1"><?php echo $author."&nbsp &nbsp  &nbsp".$publisher; ?></div> 

   </form>
   </div>
	</td>
  </tr>
  
  <tr>
   <td>
      <span>
	   
		<form method="post" action="20myrentinghistory/20connect2.php"  target="formsubmit" >
		<input type="hidden" name="shunxu" value=<?php echo $book_id; ?>    />
       <div id="can"><button class="hide" type="submit">他人可见</button></div>
	    </form>
	    </span>
	  
    <span>
	    <form method="post" action="20myrentinghistory/20connect.php"  target="formsubmit">
	   <input type="hidden" name="shunxu" value=<?php echo $book_id; ?>    />
			<div id="cant"><button class="hide"  type="submit">他人不可见</button></div>
	    </form>
		</span>
	    
		<iframe name="formsubmit" style="display:none"></iframe>
	    
    </td>
  </tr>

</tbody>
</table>
<?php
}
}
?>
</body>
</html>

