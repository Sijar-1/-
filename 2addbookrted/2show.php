<?php
session_start();
$uid=$_SESSION['uid'];
include_once $_SERVER['DOCUMENT_ROOT'].'/html/includes/db.inc.php';
 $sql1="select * from book ";
 $res1=$pdo->query($sql1);
 foreach($res1 as $row1)
 {$book_id=$row1['book_id'];
 $sql="select * from book INNER JOIN user_book on book.book_id='$book_id'  and book.book_id=user_book.book_id and uid = '$uid'";
 $res=$pdo->query($sql);
 $arr=$res->fetch();
 $j=1;
 if($arr) {$j=0;}
  $sql2="select * from book where book_id='$book_id'  and $j=1";
  $res2=$pdo->query($sql2);
  $arr2=$res2->fetch();
  $bname=$arr2['bname'];
  $author=$arr2['author'];
  $publisher=$arr2['publisher'];
  $picture=$arr2['picture'];
     if($arr2)
     {
?>
<table class="inner" width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
  <tr></tr>
</tbody>

<tbody>
  <tr>
    <td width="100px" rowspan="2"><div class="image"> 
   <img src=<?php   echo $picture;   ?> width="100px" height="100px"> </div></td>
    <td><div>
	<div class='info'><?php echo $bname; ?>  </div>
<div class='info1'><?php echo $author."&nbsp &nbsp  &nbsp".$publisher; ?> 
   </div>
	</td>
  </tr>
    <tr>
   <td>
      <div>
	   <form method="post" action="./34bookintroduction.php" >
	   <input type="hidden" name="shunxu" value=<?php echo $book_id; ?>    />
		   <button class="hide"  type="submit"  name="bukejian"  value="查看信息">查看信息</button> 
	    </form>
	   <form method="post" action="./13books/13addInFavorite.php"  target="formsubmit">
	   <input type="hidden" name="shunxu" value=<?php echo $book_id; ?>    />
		   <button class="hide"  type="submit"  name="bukejian"  value="加入收藏">加入收藏</button>
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
