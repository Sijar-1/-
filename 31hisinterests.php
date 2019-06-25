<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
<meta charset="utf-8" name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui">
<meta name="author" content="Chomo" />
<title>我的兴趣标签</title>
<style type="text/css">
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
		font-weight: bold;
		font-size: 24px;
		margin: 10px;
	}
	.add{
		text-align: center;
		float:left; 
		width:80%;
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
	.input{
		margin-left: 20px;
		text-align: center;
		
	}
	.input .shuru{
		height:30px;
		line-height: 30px;
		width:100%;
		background-size: 20px 18px;
		padding-left: 5px;
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
		width:85%;
	}
		.bottom{
		height: 40px;
	line-height: 40px;
	padding-top: 10px;
	text-align: center;
	position: fixed;
	width: 100%;
	bottom: 0;
	left: 0;
		padding-bottom: 5px;
		background-color: #ffffff;
	}
	#shuru:focus{
		
		outline:none;
	}
        .box{ 
			width:100%; 
			padding-top: 80px;
		
			height:auto; 
			overflow:hidden; 
			text-align:center;
	}
	.box span{ 
		line-height:100px; 
		height:30px;
		white-space:nowrap; 
		display:inline-block; 
		cursor:pointer;
	}
	.box a,.box a:hover{ 
		padding:-50px;
		color:#fff; 
		line-height:100px;
		font-weight:bold; 
		font-size:25px;
		text-decoration:none; 
		position:relative; 
		border:0;
	}
	.box a:hover{ 
		border:2px #09e solid;
		padding:8px;
	}
	input.cur{ 
		border:1px #c00 outset;
	}
</style>
</head>
<body>
<table class="heading" width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr>
      <td width="20%" bgcolor="#FF8600"><img src="jiantou.gif" height="40vx" width="40vx" onclick="javascript:history.back(-1);"></td>
      <td width="60%" bgcolor="#FF8600"><p>我的兴趣标签</p></td>
      <td width="20%" bgcolor="#FF8600"></td>
    </tr>
  </tbody>
</table>

<table>
<div class="box"><?php foreach ($iid as $iid): ?><span><a href="#"><?php $id=htmlspecialchars($iid, ENT_NOQUOTES, 'UTF-8');  $name= label($id);  echo $name;  ?></a></span><?php endforeach; ?></div>
</table>
<div class="bottom">
<table class="input" width="93%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td width="65%">
      	<input class="shuru" type="text" placeholder="请输入一个兴趣" maxlength="20" id="input-txt"/>
      </td>
      <td width="35%">
		  <button class="sousuo" type="button" value="添加兴趣" id="input-btn">添加兴趣</button>
      </td>
    </tr>
  </tbody>
</table>
</div>

<script type="text/javascript">
function randomColor() {	//16进制方式表示颜色0-F	
	var arrHex = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"];	
	var strHex = "#";	
	var index;	
	for(var i = 0; i < 6; i++) {	//取得0-15之间的随机整数	
		index = Math.round(Math.random() * 15);		
		strHex += arrHex[index];
	}	
	return strHex;
}
function changeColor(){
	var links = document.getElementsByTagName("a");
	for(var i=0;i<links.length;i++){
		var bgColor = randomColor();//改变背景色的代码，根据修去修改。
		links[i].style.backgroundColor = bgColor;
	}
}
function sayHi(){
	var scolor,links = document.getElementsByTagName("a");
	for(var i=0;i<links.length;i++){
		links[i].onmouseover = function(){
			scolor = this.style.backgroundColor;
			this.style.color = scolor;
			this.style.borderColor = scolor;
			this.style.backgroundColor = "white";
		}
		links[i].onmouseout = function(){
			this.style.color = "white";
			this.style.borderColor = "";
			this.style.backgroundColor = scolor;
		}
		links[i].onmousedown = function(){
			alert('你的兴趣标签是 "'+this.childNodes[0].nodeValue+'"');
		}
	}
}
function addEvaluation(){
	var txt = document.getElementById("input-txt");
	var btn = document.getElementById("input-btn");
	var divs = document.getElementsByTagName("div")[0];
	if(!txt) return false;
	if(!btn) return false;
	var texts,links,spans;
	txt.onfocus = function(){
		btn.className="cur";
	}
	txt.onblur = function(){
		btn.className="";
	}
	btn.onclick = function(){
		if(txt.value=="") {
			alert("请输入一个兴趣标签");
			return false
		};
		texts = document.createTextNode(txt.value);
		links = document.createElement("a");
		spans = document.createElement("span");
		links.appendChild(texts);
		links.style.backgroundColor = randomColor();
		spans.appendChild(links);
		divs.appendChild(spans);
		sayHi();
	}
}
changeColor();
sayHi();
addEvaluation();
</script>
</body>
</html>