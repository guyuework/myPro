$(function(){
		//1.发送ajax请求
		$.ajax({
			url:"okbuy_header.html",
			type:"get",
			success:function(header){
				//2.将片段替换到当前所在页面的header元素上
				$(header).replaceAll("header");
				//3.动态创建<link href="">
				$(`<link rel="stylesheet" href="css/header.css">`).appendTo("head")
				$(`<script src="js/header1.js"></script>`).appendTo("head")
			}
		});
});