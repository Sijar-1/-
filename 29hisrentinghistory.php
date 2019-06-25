<!doctype html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<title>TA借过的书</title>
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
	}
	.info{
		font-family: "黑体";
		font-size: 18px;
		margin: 5px 10px 0px;
	}
	.info1{
		font-family: "黑体";
		font-size: 16px;
		margin: 0px 10px 0px;
		font-weight: lighter;
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
		border-radius: 10px;;
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
		letter-spacing: -1px;}
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
		width: 80px;
		line-height: 30px;
		border: none;
	}
	a{
		text-decoration: none;
	}
</style>
	</head>
	
<body>
<?php   $fuid=$_POST['shunxu'];  ?>
<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><a href="javascript:history.go(-1)" target="_self"><img src="jiantou.gif" height="40vx" width="40vx"></a></td>
      <td width="60%" bgcolor="#FF8600"><p>TA借阅过的书</p></td>
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

<table class="input" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td width="70%">
	  <form action="./29hisrentinghistory/29search.php" method="post">
      	<input id="shuru" type="" name="shuru" placeholder="输入相关内容：如《月亮与六便士》"  />
     </td>
      <td width="30%">
		  <button class="sousuo" type="submit" value="检索" >检索</button>
		 <input type="hidden" name="shunxu" id="shunxu" value="<?php echo $fuid; ?>" />
		</td>
		</form>
    </tr>
  </tbody>
</table>


<?php
 include_once $_SERVER['DOCUMENT_ROOT'].'/html/includes/db.inc.php';
  $sql1="select * from  book";
  $res1=$pdo->query($sql1);
  foreach($res1 as $row1)
 {
	 $book_id=$row1['book_id'];
 $sql="select * from user_book INNER JOIN  book  on user_book.uid=$fuid and book.book_id=user_book.book_id and book.book_id='$book_id' and hide='0' ";
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
    <td width="100px" rowspan="2"><div class="image"> 
   <img src=<?php   echo $picture; ?> width="100px" height="100px"> </div></td>
    <td><div>
	<form method="post" action="24indicatedbook.php">
	<input type="hidden" name="shunxu" value=<?php  echo $book_id; ?>   />
	<div class="info"><?php echo $bname; ?></div>
<div class="info1"><?php echo $author."&nbsp &nbsp  &nbsp".$publisher; ?></div> 

   </form>
   </div>
	</td>
  </tr>
  
  <tr>
   <td>
      <div>
	   
		<form method="post" action="24indicatedbook/24addInFavorite.php"  target="formsubmit" >
		<input type="hidden" name="shunxu" value=<?php echo $book_id; ?>    />
			<button class="hide" type="submit"  value="添加">添加</button>
    <button class="hide" type="submit">查看信息</button>
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
</body>
</html>
