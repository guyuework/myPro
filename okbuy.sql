#设置客户端连接服务器端的编码为UTF8
SET NAMES UTF8;
#丢弃掉指定的数据库,如果存在的话
DROP DATABASE IF EXISTS okbuy;
#创建新的数据库okbuy,设置存储编码为UTF8
CREATE DATABASE okbuy CHARSET=UTF8;
#进入该数据库
USE okbuy;

#用户注册 登录表
CREATE TABLE okbuy_user(
uid INT PRIMARY KEY AUTO_INCREMENT,
uname VARCHAR(32),
upwd VARCHAR(32)
);

#添加用户
INSERT INTO okbuy_user VALUES
(null,'dingding','123456'),
(null,'dangdang','123456'),
(null,'jerry','123456'),
(null,'tom','123456'),
(null,'lucy','123456');

#商品列表页
CREATE TABLE okbuy_details(
cid INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(32),
price DECIMAL(8,2),
img VARCHAR(128)
); 

INSERT INTO okbuy_details VALUES
(null,'李宁 女式 简约休闲舒适短袖T恤',29,'img/product/1b8b88a0ae8d319739c80fe2e81632e2.jpg'),
(null,'李宁 女式 运动生生活系列缤纷LOGO',29,'img/product_price/70c85aa75232f3f973c5864e4f5925a8.jpg'),
(null,'李宁 女式 训练健身时尚修复背心',29,'img/product_price/769bed8571b7dfdca43f43659f43cd8b.jpg'),
(null,'李宁 女式 训练健身时尚修复背圆领休闲运动短袖T恤',29,'img/product_price/460a0110826f45a2c854b4386caf0864.jpg'),
(null,'李宁 女式 篮球系列简约休闲短袖',29,'img/product_price/3b8c9ece914ea5d6996cde6f73b4dca1.jpg'),
(null,'李宁 女式 透气舒适休闲短袖T恤',29,'img/product_price/5d46b1e0d905c5331a25f054adaf1a2d.jpg'),
(null,'李宁 女式 运动生活系列',29,'img/product_price/6bf826997b35b7ac5b445066ca4c50ad.jpg'),
(null,'李宁 女式 简约休闲纯色短袖POLO衫',29,'img/product_price/5647249a3c2983fd58af917db5d4ee5e.jpg'),
(null,'李宁 女式 运动生活系列条纹短袖',29,'img/product_price/82d3d33538ae083fafc96509d67e86a3.jpg'),
(null,'李宁 女式 运训练系列监简约短袖',29,'img/product_price/65ea0e6f08389883bd78e19423974f20.jpg'),
(null,'李宁 女式 休闲百搭舒适短袖T恤',29,'img/product_price/1daad09b8ede271e7aae740bfb997dfe.jpg'),
(null,'李宁 女式 训练紧身运动七分裤',29,'img/product_price/f63beaf5e15d18824fec52c039e1cb0c.jpg'),
(null,'李宁 女式 训练系列简约短袖T恤',29,'img/product_price/a93bf68fab800104fa5e3f5bd2baf735.jpg'),
(null,'李宁 女式 纯色休休闲透气运动短裤',29,'img/product_price/8dbf7f59b747f8f11f1d6fe5450730d6.jpg'),
(null,'李宁 女式 都市轻运动系列简约拼接',29,'img/product_price/c53f152d71719b0617d3929c0cf106f8.jpg'),
(null,'李宁 女式 拼色休闲简约透气',29,'img/product_price/30b51dec2c2717e3991b85d69795ad34.jpg'),
(null,'李宁 女式 运动生活协系列圆领短袖T恤',29,'img/product_price/4eaf0f99d360513046e46a3091b91b52.jpg'),
(null,'李宁 女式 运动生活系列缤纷LOGO',29,'img/product_price/ce85fe03e11dc43a3639f66a0f2811fc.jpg'),
(null,'李宁 女式 跑步系列条纹拼色',29,'img/product_price/6f9b966584702396caadee75cfc8c832.jpg'),
(null,'李宁 女式 运动休闲圆领短袖T恤',29,'img/product_price/e02c64119f8ae648d25632d70771495f.jpg'),
(null,'李宁 女式 训练系列拼色LOGO',29,'img/product_price/e294dbbda552812aad82d49c36ec9de0.jpg'),
(null,'李宁 女式 舒适透气短袖POLO衫',29,'img/product_price/53468f6fd3c655646bb552aa2ecd7582.jpg'),
(null,'李宁 女式 时尚渐变短袖T恤',29,'img/product_price/2b0aea8decd218364bd953b3c87f21b7.jpg'),
(null,'李宁 女式 训练系列吸汗平口运动短裤',29,'img/product_price/53468f6fd3c655646bb552aa2ecd7582.jpg'),
(null,'李宁 女式 运动生活系列针织短袖',29,'img/product_price/841403d6788463f31e6ab1180935c826.jpg'),
(null,'李宁 女式 运动生活系列休闲印花短袖',29,'img/product_price/bec8e4de3772503b99c9fd6cdc524f3a.jpg'),
(null,'李宁 女式 纯色简约透气短袖POLO衫',29,'img/product_price/0c244324cc0af83d2ddaf01180628ba4.jpg'),
(null,'李宁 女式 跑步系列透气短袖',29,'img/product_price/cb2d1fb2ecfb0c381184e0eb3607aeea.jpg'),
(null,'李宁 女式 训练系列休闲运动背心',29,'img/product_price/7d747a589be09113da8d67907e795b5a.jpg'),
(null,'李宁 女式 拼色设计爱心印花休闲短袖',29,'img/product_price/c48d7deb0d8305539be896a5a9ef8def.jpg'),
(null,'李宁 女式 时尚运动短裙',29,'img/product_price/3f0da684d40ab156273104622fdb51c3.jpg'),
(null,'李宁 女式 漫威系列修身运动短裙',29,'img/product_price/8dbf7f59b747f8f11f1d6fe5450730d6.jpg'),
(null,'李宁 女式 时尚潮流连衣裙',29,'img/product_price/51f3f073e364ab3b7f63800d1beb8b2c.jpg'),
(null,'李宁 女式 纯色休闲简约短袖T恤',29,'img/product_price/a2cd2da96a2552cb2c5d60000146a345.jpg'),
(null,'李宁 女式 休休闲紧身运动长裤',29,'img/product_price/18334c951c64c57428976584ceb3d969.jpg'),
(null,'李宁 女式 运动休闲紧身印花长裤',29,'img/product_price/b6882f569cc23b6e249a5e1634f28c9d.jpg'),
(null,'李宁 女式 简约休闲透气短袖',29,'img/product_price/e665c5ddc3fbb1059ba1353028c0cca0.jpg'),
(null,'李宁 女式 运动休闲紧身印花长裤',29,'img/product_price/68bc580b7b67a6d6832f39618fc2d930.jpg'),
(null,'李宁 女式 训练系列休闲透气短袖T恤',29,'img/product_price/970477dd4bb6afbc4e325d54dd082286.jpg'),
(null,'李宁 女式 休闲透气圆领短袖T恤',29,'img/product_price/4804a4112583d4a709e7bd53869e7fab.jpg'),


(null,'李宁 男式 训练系列纯色运动裤',29,'img/product/94e1b8eaff44674635025ef8299e5334.jpg'),
(null,'李宁 男式 羽毛球系列运动透气短袖',39,'img/product/b7d7a62199dbccba8bdc36f63adcede4.jpg'),
(null,'李宁 女式 纯色休闲透气短袖',26,'img/product/8dbf7f59b747f8f11f1d6fe5450730d6.jpg'),
(null,'李宁 男式 羽毛球系列运动透气短袖',36,'img/product/a444cac7aa26bf4f5651f89bfba2218e.jpg'),
(null,'李宁 女式 运动生活系列短袖',19,'img/product/91c5c836d9d277f31328b2469b28b7f3.jpg'),
(null,'李宁 男式 运动生活系列短袖',36,'img/product/918e97a156bb60a1ec1c7d777c7120d4.jpg'),
(null,'李宁 女式 运动休闲舒适短袖',19,'img/product/5d46b1e0d905c5331a25f054adaf1a2d.jpg'),
(null,'李宁 男式 运动生活系列',39,'img/product/14594be9e9ad39cc4d38388b55650d44.jpg'),
(null,'李宁 女式 时尚休闲短袖',36,'img/product/6e2e89413fb394dd235906f2c50789f4.jpg'),
(null,'李宁 男式 运动生活系列',59,'img/product/ccb6c8a4f9abb23a5d89f539e7dbcd61.jpg'),
(null,'李宁 男式 跑步系列紧身运动裤',53,'img/product/6e69f63aa7c1be354ed70f5fc9c26b2f.jpg'),
(null,'李宁 男式 跑步训练透气短袖',56,'img/product/d6f9ba105091bcb5f5b7b9b7a9c5f509.jpg'),
(null,'李宁 女式 拼色设计爱心短袖',26,'img/product/ab1901e6d7007a684591adb2e302876a.jpg'),
(null,'李宁 男式 训练系列运动裤',49,'img/product/2b5f471fd54945d6c34ce50d8a7a8cbc.jpg'),
(null,'李宁 男式 足球系列透气运动裤',59,'img/product/412e29d40a49665b419ffc67f29be216.jpg'),
(null,'李宁 女式 羽毛球系列圆领短袖',29,'img/product/096c853057046e18bf6ff92ed712ec0d.jpg'),
(null,'李宁 男式 跑步系列条纹短袖',46,'img/product/f62a10ec11f7de5f3a2cdb933e35c343.jpg'),
(null,'李宁 男式 训练休闲运动短袖',26,'img/product/c02e1a4df01d94cf6d5f50e8c2c48d78.jpg'),
(null,'李宁 女式 运动生活系列',26,'img/product/7cb6d1a7261da5dcbd269055a19199a0.jpg'),
(null,'李宁 女式 跑步系列运动短裤',39,'img/product/1aed1831fb267dc07719ec32c847f719.jpg'),
(null,'李宁 女式 篮球系列运动裤',29,'img/product/92192c69ed39521c44228e4f26c6f89b.jpg'),
(null,'李宁 男式 训练系列运动裤',29,'img/product/0ecab94ac8329d7f7b8b9fead3fc8735.jpg'),
(null,'李宁 女式 纯色百搭透气运动裤',36,'img/product/9e76895bec1a89a5f2aed8acda963ca1.jpg'),
(null,'李宁 女式 时尚休闲牛仔裤',36,'img/product/750e4aa040245ce71aefd64d8cb7d540.jpg'),
(null,'李宁 女式 羽毛球系列圆领短袖',36,'img/product/05c223c79a9f2c6fd5cc0276e63fd343.jpg'),
(null,'李宁 男式 跑步系列条纹短袖',29,'img/product/bfdb0418be3d4408a65a7555b39c3031.jpg'),
(null,'李宁 男式 撞色休闲短袖',26,'img/product/b2d5703c59a7cc4cde97205ac5221e82.jpg'),
(null,'李宁 女式 瑜伽健身跑步胸衣',49,'img/product/7c962b32c1ed38f013b9feecb37450f7.jpg'),
(null,'李宁 女式 运动生活系列',29,'img/product/73b5711b8c516716e5fb4a8384ee696e.jpg'),
(null,'李宁 女式 训练系列纯色运动裤',33,'img/product/64f9407234dadcc1d843b60ac7cf70e8.jpg'),
(null,'李宁 男式 运动系列透气短袖',39,'img/product/3fc5e426e8bdc4a53b60fa43e27dabb6.jpg'),
(null,'李宁 女式 运动系列透气短袖',23,'img/product/0c244324cc0af83d2ddaf01180628ba4.jpg'),
(null,'李宁 男式 足球系列透气短裤',23,'img/product/412e29d40a49665b419ffc67f29be216.jpg'),
(null,'李宁 女式 训练紧身运动裤',23,'img/product/f63beaf5e15d18824fec52c039e1cb0c.jpg'),
(null,'李宁 女式 训练系列七分裤',33,'img/product/fce90a294692a1997c87e02974670171.jpg'),
(null,'李宁 男式 纽约时装周运动短袖',169,'img/product/74fb45ac4f1de7aba7356bb8dd6011cf.jpg'),
(null,'李宁 女式 时尚休闲短袖连衣裙',36,'img/product/c55a52a1ae5f54106ed560a6a37791e4.jpg'),
(null,'李宁 男式 韦德系列圆领短袖',89,'img/product/055851294ce1c6d8421f62b790e86704.jpg');








