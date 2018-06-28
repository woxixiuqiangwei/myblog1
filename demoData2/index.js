
var express=require('express');
var bodyParser = require('body-parser');  
var mysql  = require('mysql');  
var app =express();
var connection = mysql.createConnection({     
  host: 'localhost',       
  user: 'root',              
  password :'',       
  port: '3306',    //默认3306               
  database: 'vueclass', 
}); 
// connection.connect();
// var  sql = 'SELECT * FROM m_photowall Where id=28';
// connection.query(sql,function (err, result) {
//         if(err){
//           console.log('[SELECT ERROR] - ',err.message);
//           return;
//         }
//        console.log('--------------------------SELECT----------------------------');
//        console.log(result);
//        console.log('------------------------------------------------------------\n\n');  
// });
// connection.end();
//设置跨域访问
app.all('*', function(req, res, next) {
	res.header("Access-Control-Allow-Origin", "*");
	res.header("Access-Control-Allow-Headers", "X-Requested-With");
	res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
	res.header("X-Powered-By",' 3.2.1');
	res.header("Content-Type", "application/json;charset=utf-8");
	next();
});

var questions=[
	{
		"num":444,
		"age":12
	},
	{
		"num":1232132131,
		"age":17
	}
];


//写个接口123
app.get('/123',function(req,res){
	res.status(200),
	res.end(JSON.stringify(questions));//服务端相应。发给客户端的数据，转成JSON数据形式
	// res.json('666');
	// res.send(questions);

});

// 创建 application/x-www-form-urlencoded 编码解析  
var urlencodedParser = bodyParser.urlencoded({ extended: false }) 
// app.post('/info',urlencodedParser,function(req,res){
// 	data = {  
//        'num':req.body.num,  
//        'age':req.body.age  
//     }; 
//     console.log(req.method);
//     console.log(data); 
// 	res.status(200);
// 	res.json(questions);
// 	// res.send('6666');
// 	// res.end(JSON.stringify(questions));
// });
	app.all('/info',urlencodedParser,function(req,res){
	 console.log(req.method);// 打印请求方式
	if (req.method === "POST") {
	 	param = {  
	       'num':req.body.num,  
	       'age':req.body.age  
    	}; 
    } else{
        param = {  
	       'num':req.query.num,  
	       'age':req.query.age  
    	};
    }
    console.log(param);
    // res.end(JSON.stringify(questions));
	})
	connection.connect();
	app.all('/getAllPhoto',urlencodedParser,function(req,res){
		console.log('query',req.query);
		console.log('body',req.body);
		var Id=req.query.id;
		var  sql = 'SELECT * FROM m_photowall'
		connection.query(sql,function (err, result) {
					// result返回的是数组
        if(err){
          console.log('[SELECT ERROR] - ',err.message);
          return;
        }
        if(result[0]==undefined){
        	res.json({msg:'输入的id查询不到'});
        	return;
        }
	       // console.log('--------------------------SELECT----------------------------');
	       console.log('success');
	       // console.log('------------------------------------------------------------\n\n');  
			res.status(200);
			// res.end(JSON.stringify(result));
   			res.json(result);
		});

	})
	app.all('/getAllMessage',urlencodedParser,function(req,res){
		if (req.method === "POST") {
		 	param = {  
		       's':req.body.s,
		       'n':req.body.n
	    	}
	    }
	    else{
	        param = {  
		     	's':req.query.s,
		        'n':req.query.n
	    	}
    	}
    	var s=(param.s-1)*param.n;
		var sql=`SELECT * FROM m_message order by create_time DESC LIMIT ${s},${param.n}`;
		// var sql=`DELETE FROM b_user WHERE id=`+req.body.id
		connection.query(sql,function (err, result) {
        if(err){
          console.log('[SELECT ERROR] - ',err.message);
          return;
        }
	       console.log('success');	
	       console.log(param);			
	       // res.end(JSON.stringify(result));
	       res.status(200);
	       res.json(result);

		});
	})	
	app.all('/login',urlencodedParser,function(req,res){
		var uname=req.body.username;
		var upwd=req.body.password;
		console.log(uname);
		console.log(upwd);
		// var sql=`Select * from b_user Where username=${uname} 
		// and password=${upwd}`;
		var sql='Select * from b_user Where username='+uname+' and password='+upwd;
		connection.query(sql,function (err, result) {
		if(err){
          console.log('[SELECT ERROR] - ',err.message);
          return;
        }
        if(result[0]===undefined){
        	res.json({msg:'你输入的账号或密码有误'});
        	return;
        }
        res.status(200);
	    // res.json({msg:'登陆成功'});
	    res.send({msg:'登陆成功'});	
		})
	})
	// connection.end();
//配置服务端口
var server = app.listen(3000, function () {
	var host = server.address().address;
	var port = server.address().port;
	console.log('ok', host, port);
})	