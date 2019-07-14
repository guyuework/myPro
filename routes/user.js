//引入express中间件
const express=require('express');
//使用express中间件创建路由器
const router=express.Router();
//引入连接池模块
const pool=require('../pool.js');
//1.用户注册
/*router.get('/reg',(req,res)=>{
	var $uname=req.query.uname;
	var $upwd=req.query.upwd;sss
	
	res.send({code:-1,msg:'用户名不能为空'});
});*/
router.get('/reg',(req,res)=>{
  var obj=req.query;
  console.log(obj);
  //验证uid是否为空
  var $uid=obj.uid;
  if(!$uid){
   res.send({code:401,msg:'uid required'}); 
   //阻止往后执行
   return;  
  }
	//查询uid对应的数据  查询返回的是数组
	var sql='SELECT * FROM okbuy_user WHERE uid=?';
  pool.query(sql,[$uid],(err,result)=>{
    if(err) throw err;
	//如果返回的数组长度大于0 说明找到了该用户 把数据(数组)响应到浏览器 否则长度等于0 说明没有找到用户 响应一个对象
    console.log(result);
    if(result.length>0){
	  res.send(result);
	}else{
	  res.send({code:301,msg:'can not find'});
		}
	});
});





//导出路由器模块
module.exports=router;
