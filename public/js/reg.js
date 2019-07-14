function uname_focus(){
	uname_msg.innerHTML="用户名包含:字母、数字、下划线 长度:3-8位";
}
function upwd_focus(){
	upwd_msg.innerHTML="密码3-8位";
}
//用户名框失去焦点，验证用户名是否为空
	//1.得到用户框的值
	function check_uname(){
	var userName=uname.value;
	//2.判断userName是否为空
	var ureg=/^[a-z0-9\w]{3,8}$/;
	if(!ureg.test(userName)){
		uname_msg.innerHTML="用户名格式不正确";
	}else{
		uname_msg.innerHTML="用户名格式正确";
	 }
	 
	}				
//密码框失去焦点，验证密码是否为空
	function check_upwd(){
		var userPwd=upwd.value;
		var preg=/^\d{3,8}$/;
		if(!preg.test(userPwd)){
			upwd_msg.innerHTML="密码格式不正确"
		}else{
			upwd_msg.innerHTML="密码格式正确"
		}
	}

function reg(){
	var xhr=new XMLHttpRequest();
			console.log(xhr);
			//2.绑定监听事件(接收响应)
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4&&xhr.status==200){
					var	result=JSON.parse(xhr.responseText);
				//	console.log(result);
				//	console.log(result.code);
				if(result.code==1){
					 alert(result.msg);
					 $("#liji").show();
					 }
				}
			}
			//3.创建请求，打开连接
			var url=`http://127.0.0.1:3000/reg?uname=${$("#uname").val()}&upwd=${$("#upwd").val()}`;
			xhr.open("get",url,true);
			//4.发送请求
			xhr.send(null);
}