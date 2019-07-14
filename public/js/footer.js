$(function(){
	$.ajax({
		url:"okbuy_footer.html",
		type:"get",
		success:function(footer){
			$(footer).replaceAll("footer");
			$(`<link rel="stylesheet" href="css/footer.css">`).appendTo("head");
			$(`<script src="js/footer1.js"></script>`).appendTo("head")
		}
	});
});