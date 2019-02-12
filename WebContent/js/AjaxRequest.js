var net=new Object();
net.AjaxRequest=function(url,onload,onerror,method,params){
	//alert("yes");
	//alert(this);
	this.req=null;
	this.onload=onload;
	this.onerror=(onerror)?onerror:this.defaultError;
	this.loadData(url,method,params);
	
}


net.AjaxRequest.prototype.loadData=function(url,method,params){
	//alert("url="+url);
	//alert("loadData");
	if(!method){
		method="GET";
	}
	
	if(window.XMLHttpRequest){
		this.req=new XMLHttpRequest();
	}
	else if(window.ActiveXObject){
		this.req=new ActiveXObject("Microsoft.XMLHTTP");
	}
	//alert(this.req);
	if(this.req){
		//alert("req");
		var loader=this;
		//alert(loader.c);
		//alert(this.constructor);
		this.req.onreadystatechange=function(){
			//alert("in function this="+this.constructor);
			net.AjaxRequest.onReadyState.call(loader);
			//net.AjaxRequest.onReadyState();
		}	
		
		//alert("method="+method);
		//alert("hello!");
		//alert(params);
		this.req.open(method,url,true);
		if(method=="POST"){
			this.req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			this.req.setRequestHeader("x-requested-with","ajax");
		}
		this.req.send(params);

	}

}

net.AjaxRequest.onReadyState=function(){
	//alert("req"+req.constructor);
	//alert("this.req="+this.constructor);
	//alert("in onReadyState this="+this);
	var req=this.req;
	var ready=req.readyState;
	if(ready==4){
		if(req.status==200){
			this.onload();
		}
		else{
			this.onerror();
		}
	}
}


net.AjaxRequest.prototype.defaultError=function(){
	alert("ajax¥X¿ù¤F!!");

}