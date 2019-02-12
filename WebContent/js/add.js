function initialization(){
	
	
	document.all.ScriptForm.wishman.value='';
	document.all.ScriptForm.wisher.value='匿名';
	document.all.ScriptForm.content.value='';
	document.all.ScriptForm.color.value=0;
	document.all.ScriptForm.face.value=0;
	document.all.ScriptForm.used.value=0;
	document.all.ScriptForm.remain.value=200;
	document.all.ScriptForm.checkcode.value='';
	
	var loader=new net.AjaxRequest("getCheckCode.jsp?rand="+new Date().getTime(),deal_getNewCheckCode,onerror,"GET","params");
	document.getElementById("script_add").style.display="none";
	document.getElementById("preview").style.display="none";
	document.getElementById("preview").setAttribute("class","preview");
	document.getElementById("pface").src="images/face/face_0.gif";
	document.getElementById("resultMessage").removeChild(document.getElementById("resultMessage").childNodes[0]);
	document.getElementById("resultMessage").appendChild(document.createTextNode("溫馨提示:點擊驗證碼輸入框,獲取驗證碼"));
	document.getElementById("btn_submit").disabled=false;
	document.getElementById("messageimg").src='images/tishi2.gif';
	document.getElementById("btn_submit").disabled=true;
	alert("end");
}

function InputInfo(ori,goal){
	document.getElementById(goal).innerHTML=ori.value;
}


function ColorChoose(id){
	
	var classname="Style"+id;
	document.getElementById("preview").setAttribute("class",classname);
	document.all.ScriptForm.color.value=id;
	
}


function changepic1(){
	
	document.getElementById("face_1").style.display='block';
	document.getElementById("face_2").style.display='none';
	
}

function changepic2(){
	
	document.getElementById("face_1").style.display='none';
	document.getElementById("face_2").style.display='block';
}


function FaceChoose(num){

	var url="images/face/face_"+num+".gif";
	document.getElementById("pface").src=url;
	document.all.ScriptForm.face.value=num;
}


function CountStr(content,total,used,remain){
	
	var contentvalue=content.value;
	var contentlegnth=contentvalue.length;
	
	//alert(contentvalue.charCodeAt(0));

	document.getElementById("pcontent").innerHTML=contentvalue;
	

}

function getNewCheckCode(){
	
alert("jj");
var loader=new net.AjaxRequest("getCheckCode.jsp?rand="+new Date().getTime(),deal_getNewCheckCode,onerror,"GET","params");
document.all.checkcode.focus();
}



function deal_getNewCheckCode(){
	document.getElementById("showCheckCode").innerHTML=this.req.responseText;
}



function showCheckCodeFun(){
		
		document.getElementById("showCheckCode").style.display='block';
		document.all.checkcode.focus();
		

	}

function hideCheckCodeDiv(){
		
		document.getElementById("showCheckCode").style.display='none';
}


function onerror(){
	alert("Ajax途中出錯了哦!!");
}


function wishername(obj){
	if(obj.value=="匿名"){
		obj.value='';
	}
}


function scriptSubmit(){
	
	if(document.all.ScriptForm.wishman.value==''){
		alert("請輸入祝福對象");
		document.all.ScriptForm.wishman.focus();
		return;
	}
	if(document.all.ScriptForm.wisher.value==''){
		document.all.ScriptForm.wisher.value='匿名'
	}
	if(document.all.ScriptForm.content.value==''){
		alert("請輸入祝福內容");
		document.all.ScriptForm.wishman.focus();
		return;
	}
	var params="wishman="+document.all.ScriptForm.wishman.value+"&wisher="+document.all.ScriptForm.wisher.value+"&color="+document.all.ScriptForm.color.value+"&face="+document.all.ScriptForm.face.value+"&content="+document.all.ScriptForm.content.value;
	//var RR=encodeURI(params)
	//alert(RR);
	//var loader=new net.AjaxRequest("script?action=scriptAdd",deal_add,onerror,"POST",encodeURI(params));
	//var url=encodeURI("script?action=scriptAdd&wish=123&wisher=邱岳溢");
	var loader=new net.AjaxRequest("script?action=scriptAdd",deal_add,onerror,"POST",params);
}


function close_window(){
	
	document.getElementById("showCheckCode").style.display='none';
	initialization();

}

function ajaxTest(){
	var loader=new net.AjaxRequest("back.jsp?rand="+new Date().getTime(),back,onerror,"GET","params");
}


function back(){
	alert("Success");
	document.getElementById("VV").innerHTML=this.req.responseText;
}


function checkEnteredCheckCode(code){
	
	if(code!=""){
		var loader=new net.AjaxRequest("checkCheckCode.jsp?entercode="+code+"&rand="+new Date().getTime(),deal_checkCheckCode,onerror,"GET","params");
	}

}

function deal_checkCheckCode(){
	
	var result=this.req.responseText;
	if(result==1){
		alert("正確");
		document.getElementById("resultMessage").removeChild(document.getElementById("resultMessage").childNodes[0]);
		document.getElementById("resultMessage").appendChild(document.createTextNode("驗證碼正確"));
		document.getElementById("btn_submit").disabled=false;
		document.getElementById("messageimg").src='images/dui2.gif';
		
	}
	else{
		alert("錯誤");
		document.getElementById("messageimg").src='images/cuo2.gif';
		document.getElementById("resultMessage").removeChild(document.getElementById("resultMessage").childNodes[0]);
		document.getElementById("resultMessage").appendChild(document.createTextNode("你輸入的驗證碼不正確"));
	}

}


function deal_add(){
	
	var h=this.req.responseText;
	h=h.replace(/\s/g,"");
	var id=h.substring(h.indexOf("[")+1,h.indexOf("]"));
	alert("id="+id);
	if(h!="很抱歉!!訊息發送失敗!"){
		alert(h);
		show(id,"shadeDiv");
	}
	
	alert("server完成");
	initialization();
}

function load_ScriptAddwindow(){
	alert("dd");
	document.getElementById("notClickDiv").style.display="block";
	var w=document.body.clientWidth;
	var h=document.body.clientHeight;
	alert(h);
	document.getElementById("notClickDiv").style.width=w;
	document.getElementById("notClickDiv").style.height=h;
	var count=document.getElementById("rsCount").value;
	document.getElementById("notClickDiv").style.zIndex=count+101;
	
	var width=screen.width;
	var height=screen.height;
	
	document.getElementById("script_add").style.display="block";
	//document.getElementById("script_add").style.top=(height-310-240)/2;
	document.getElementById("script_add").style.top="250px";
	//document.getElementById("script_add").style.left=(width-500)/2-120;
	document.getElementById("script_add").style.left="30px";
	document.getElementById("script_add").style.zIndex=count+102;
	
	document.getElementById("preview").style.display="block";
	document.getElementById("preview").style.top="290px";
	document.getElementById("preview").style.left="700px"
	document.getElementById("preview").style.zIndex=count+103;
	
	alert("ee");
}


function myclose(id){
	var no="script"+id;
	document.getElementById(no).style.display="none";
}
