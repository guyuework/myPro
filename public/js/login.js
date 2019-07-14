function uname_focus(){
    uname_msg.innerHTML="请输入用户名";
}
function upwd_focus(){
    upwd_msg.innerHTML="请输入密码";
}


function login(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            alert(result);
        }
    };
    var url="http://127.0.0.1:3000/login?uname="+uname.value+"&upwd="+upwd.value;
    xhr.open("get",url,true);
    xhr.send(null);	
}