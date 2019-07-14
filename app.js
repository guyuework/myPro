//引入模块
const express=require("express");
//引入mysql模块
const mysql=require("mysql");
const pool=mysql.createPool({
  host:"127.0.0.1",
  port:'3306',
	user:"root",
	password:"",
	database:"okbuy"
})
//引入bodyparser
const bodyParser=require('body-parser');
const cors=require("cors");
//引入用户路由器
const userRouter=require('./routes/user.js');
//创建web服务器
var server=express();
//配置允许列表
server.use(cors({
	origin:["http://127.0.0.1:5500","http://localhost:5500"],
	credentials:true
}))
server.listen(3000);
//托管静态资源到public下
server.use(express.static('public'));
//配置body-parser中间件
server.use(bodyParser.urlencoded({
  extended:false
}));
//服务器使用路由器
server.use('/user',userRouter);

//用户登录
server.get('/login',(req,res)=>{
  var uname=req.query.uname;
	var upwd=req.query.upwd;
  console.log(uname);
  console.log(upwd)
  //验证是否为空
  if(!uname){
   res.send({code:-1,msg:'uid required'}); 
   //阻止往后执行
    return;
  }
  if(!upwd){
    res.send({code:-1,msg:'upwd required'}); 
    //阻止往后执行
    return;
   }
	//查询uid对应的数据  查询返回的是数组
	var sql='SELECT uid FROM okbuy_user WHERE uname=? AND upwd=?';
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err) throw err;
	//如果返回的数组长度大于0 说明找到了该用户 把数据(数组)响应到浏览器 否则长度等于0 说明没有找到用户 响应一个对象
    console.log(result);
    if(result.length>0){
	  res.send({code:1,msg:"登录成功"});
	}else{
	  res.send({code:-1,msg:"用户名或密码错误"});
		}
	});
});

//用户注册
server.get('/reg',(req,res)=>{
  var $uname=req.query.uname;
  var $upwd=req.query.upwd;
  if(!$uname){
    res.send({code:-1,msg:"用户名不能为空"});
    return;
  }
  if(!$upwd){
		res.send({code:-1,msg:"密码不能为空"});
		return;
  }
  var sql="INSERT INTO okbuy_user SET uid=?,uname=?,upwd=?";
  pool.query(sql,[null,$uname,$upwd],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"注册成功"});
    }else{
      res.send({code:-1,msg:"注册失败"});
    }
  });
});

//商品查询列表页 按默认查询 动态生成
server.get('/default',(req,res)=>{
  var sql = "SELECT * FROM okbuy_details LIMIT 0,40";
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send(result);
    }else{
      res.send({code:-1,msg:"没有该商品的有关信息"});
    }
  });
});

//商品查询列表页 按价格查询 动态生成
server.get('/price',(req,res)=>{
	var sql="SELECT * FROM okbuy_details ORDER BY price LIMIT 0,40";
	pool.query(sql,[],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result);
		//	console.log(result);
		}else{
			res.send({code:-1,msg:"没有该商品的有关信息"});
		}
	});
});
