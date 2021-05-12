<!doctype html>
<html style="height: 100%;">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include.jsp"%>
<title>心乎爱矣</title>
<style>
    * { margin: 0; padding: 0; }
    html { height: 100%; }
    .dowebok { position: absolute; left: 50%; top: 50%; width: 350px; height: 480px; margin: -270px 0 0 300px; border: 1px solid #fff; border-radius: 20px; overflow: hidden;}
    .logo { width: 104px; height: 104px; margin: 50px auto 40px; background: url(images/sil_img/login.png) 0 0 no-repeat; }
    .logo_icon{
	  width: 150px;
	  height: 150px;
	  display: flex;
	  border-radius: 50%;
	  align-items: center;
	  justify-content: center;
	  overflow: hidden;
	  margin: 25px auto 25px;
	}
    
    .form-item { position: relative; width: 360px; margin: 0 auto; padding-bottom: 20px;}
    .form-sil { position: relative; width: 360px; margin: 0 auto; padding-top: 16px;}
    .form-item-button { position: relative; width: 360px; margin: 0 auto; padding-bottom: 0px;}
    .form-item input { width: 240px; height: 48px; padding-left: 70px; border: 1px solid #fff; border-radius: 25px; font-size: 18px; color: #fff; background-color: transparent; outline: none;}
    .form-sil input { width: 240px; height: 48px; padding-left: 70px; border: 1px solid #fff; border-radius: 25px; font-size: 18px; color: #fff; background-color: transparent; outline: none;}
    .form-item-button button { width: 310px; height: 50px; border: 0; border-radius: 25px; font-size: 18px; color: #1f6f4a; outline: none; cursor: pointer; background-color: #fff; }
    .form-sil-button button { width: 310px; height: 50px; border: 0; border-radius: 25px; font-size: 18px; color: #1f6f4a; outline: none; cursor: pointer; background-color: #fff;margin-top:6px;}
    #dlzh { background: url(images/sil_img/emil.png) 20px 14px no-repeat; }
    #dlmm { background: url(images/sil_img/password.png) 23px 11px no-repeat; }
    #register_dlzh { background: url(images/sil_img/emil.png) 20px 14px no-repeat; }
    #register_czymc { background: url(images/sil_img/emil.png) 20px 14px no-repeat; }
    #register_dlmm { background: url(images/sil_img/password.png) 23px 11px no-repeat; }
    #register_qrmm { background: url(images/sil_img/password.png) 23px 11px no-repeat; }
    #register_tjm { background: url(images/sil_img/password.png) 23px 11px no-repeat; }
    .reg-bar { width: 300px; margin: 20px auto 0; font-size: 14px; overflow: hidden;}
    .reg-bar a { color: #fff; text-decoration: none; }
    .reg-bar a:hover { text-decoration: underline; }
    .reg-bar .reg { float: left; }
    .reg-bar .forget { float: right; }
    .dowebok ::-webkit-input-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
    .dowebok :-moz-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
    .dowebok ::-moz-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
    .dowebok :-ms-input-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
    .round_icon{
	  width: 150px;
	  height: 150px;
	  display: flex;
	  border-radius: 50%;
	  align-items: center;
	  justify-content: center;
	  overflow: hidden;
	  margin: 50px auto 40px;
	}


    @media screen and (max-width: 500px) {
        * { box-sizing: border-box; }
        .dowebok { position: static; width: auto; height: auto; margin: 0 30px; border: 0; border-radius: 0; }
        .logo { margin: 50px auto; }
        .form-item { width: auto; }
        .form-item input, .form-item button, .reg-bar { width: 100%; }
    }
</style>
</head>
<body style="overflow: hidden; height: 100%; background-image: url(${ctx}/img/sil.jpg); background-repeat: no-repeat center center fixed; background-size: cover;">
<div style="text-align:center;margin-top:30px;">
	<font style="color: #FFFFFF; text-align: center; font-weight: bold; font-size: 42px;">心乎爱矣&ensp;遐不谓矣</font>
</div>
<div style="text-align:right;margin-right:30px;">
	<font style="color: #FFFFFF; text-align: center; font-weight: bold; font-size: 30px; cursor: pointer;">
		<a onclick="loginDivShow()">登录</a>
	</font>
	<font style="color: #FFFFFF; text-align: center; font-weight: bold; font-size: 30px;">
		<a onclick="registerDivShow()">注册</a>
	</font>
</div>
<div id="loginDiv" style="display:none; ">
	  <form id="welcomeForm" action="${ctx}/home" method="post" style="margin: 0px; text-align: center; height: 100%;">
	    <div id="login_div" class="dowebok">
	    <table style="margin:0 auto;">
	    	<tr>
	    		<div>
    				<img id="logo_icon" class="logo_icon" alt="" src="${ctx}/img/sil_icon.jpg">
    			</div>
	    	</tr>
			<tr>
				<td>
					<div class="form-item">
            			<input id="dlzh" name="dlzh" type="text" autocomplete="off" placeholder="登录账号">
        			</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="form-item">
            			<input id="dlmm" name="dlmm" type="password" autocomplete="off" placeholder="登录密码">
        			</div>
        			<div style="display:none;">
        				<input id="input_captcha" name="captcha" style="width: 92px"
						class="easyui-textbox" validType="length[1,6]" data-options="prompt:'请输入验证码'">
        			</div>
				</td>
			</tr>
			<tr>
				<td height="22px" style="text-align: center; font-size: 12px;">&ensp;&ensp;</td>
			</tr>
			<tr>
				<td>
					<div class="form-item-button"><button id="submit" onclick="welcomeLogin();">登 录</button></div>
        		</td>
			</tr>
			<tr>
				<td>
					<div class="reg-bar">
            			<a class="reg" href="#" onclick="registerDivShow();">立即注册</a>
            			<a class="forget" href="#" onclick="forgetDivShow();">忘记密码</a>
        			</div>
				</td>
			</tr>
		</table>
		</div>
	</form>
</div>
<div id="registerDiv" style="display:none; ">
	  <form id="registerForm" action="${ctx}/register" method="post" style="margin: 0px; text-align: center; height: 100%;">
	    <div class="dowebok">
	    <table style="margin:0 auto;">
			<tr>
				<td>
					<div class="form-sil">
            			<input id="register_dlzh" name="dlzh" type="text" autocomplete="off" placeholder="登录账号">
        			</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="form-sil">
            			<input id="register_czymc" name="czymc" type="text" autocomplete="off" placeholder="用&ensp;户&ensp;名">
        			</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="form-sil">
            			<input id="register_dlmm" name="dlmm" type="password" autocomplete="off" placeholder="登录密码">
        			</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="form-sil">
            			<input id="register_qrmm" name="qrmm" type="password" autocomplete="off" placeholder="确认密码">
        			</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="form-sil">
            			<input id="register_tjm" name="tjm" type="text" autocomplete="off" placeholder="推&ensp;荐&ensp;码">
        			</div>
				</td>
			</tr>
			<tr>
				<td height="20px" style="text-align: center;">
					<font id="registerMessage" style="color: #FF0000;font-size: 14px;"></font>
				</td>
			</tr>
			<tr>
				<td>
					<div class="form-sil-button"><button id="registerButton" onclick="register()">注册</button></div>
        		</td>
			</tr>
			<tr>
				<td>
					<div class="reg-bar">
            			<a class="reg" href="#" onclick="backLoginDiv();">返回登录</a>
            			<a class="forget" href="#" onclick="">联系我们</a>
        			</div>
				</td>
			</tr>
		</table>
		</div>
	</form>
</div>
<div id="forgetDiv" style="display:none;">
    <div class="dowebok">
    	<div>
    		<img class="round_icon" alt="" src="${ctx}/img/sil_error_4.jpg">
    	</div>
    	<div style="margin-top:20px;margin-left:50px;">
			<font style="color: #000000; text-align: center; font-weight: bold; font-size: 34px;">连个密码都记不住</font>
		</div>
		<div style="text-align:left;margin-left:50px;margin-top:20px;">
			<font style="color:	#66CDAA; text-align: center; font-weight: bold; font-size: 18px;">请试试以下方法</font>
		</div>
		<div style="text-align:left;margin-left:50px;margin-top:15px;">
			<font style="color:	#66CDAA; text-align: center; font-weight: bold; font-size: 18px;">·&ensp;检查身高、颜值和银行卡存款</font>
		</div>
		<div style="text-align:left;margin-left:50px;margin-top:15px;">
			<font style="color: #66CDAA; text-align: center; font-weight: bold; font-size: 18px;">·&ensp;重新降临到这个世界</font>
		</div>
		<div style="text-align:left;margin-left:50px;margin-top:20px;">
			<font style="color: #66CDAA; text-align: center; font-weight: bold; font-size: 12px;font-family: 微软雅黑;">DESPOIT_NOT_ENOUGH_PAY_FOR_INTERNET</font>
		</div>
	</div>
</div>
	
<script type="text/javascript">

function loginDivShow(){
	document.getElementById('registerDiv').style.display='none';
	document.getElementById('forgetDiv').style.display='none';
	messageClear();
	welcomeFormClear();
	registerFormClear();
	$("#loginDiv").fadeToggle("slow");
}

function forgetDivShow(){
	document.getElementById('registerDiv').style.display='none';
	document.getElementById('loginDiv').style.display='none';
	messageClear();
	welcomeFormClear();
	registerFormClear();
	$("#forgetDiv").fadeToggle("slow");
}

function registerDivShow(){
	document.getElementById('loginDiv').style.display='none';
	document.getElementById('forgetDiv').style.display='none';
	messageClear();
	welcomeFormClear();
	registerFormClear();
	$("#registerDiv").fadeToggle("slow");
}

function backLoginDiv(){
	loginDivShow();
}

function welcomeLogin() {
   	var result = $('#welcomeForm').form('validate');
	if (!result) {
		return false;
	}

	var dlmm = $('#dlmm').val();
	if(dlmm != null && dlmm != ""){
		$('#dlmm').val(encrypt(Md5Jm("copyright." + dlmm + "pms@2016")));
	}
   	$('#welcomeForm').submit();
	
}
   
//md5算法
function Md5Jm(pwd){
   	return $.md5(pwd);
}
   
//前端加密
function encrypt(word){
    var key = CryptoJS.enc.Utf8.parse("abcdefgabcdefg12");
    var srcs = CryptoJS.enc.Utf8.parse(word);
    var encrypted = CryptoJS.AES.encrypt(srcs, key, {mode:CryptoJS.mode.ECB,padding: CryptoJS.pad.Pkcs7});
    return encrypted.toString();
}

function welcomeFormClear() {
	$('#welcomeForm').form('clear');
}

function registerFormClear(){
	$('#registerForm').form('clear');
}

function messageClear(){
	document.getElementById('registerMessage').innerText = "";
}

function register(){
	var result = $('#registerForm').form('validate');
	if (!result) {
		return false;
	}

	var dlmm = $('#register_dlmm').val();
	var qrmm = $('#register_qrmm').val();
	if(dlmm != null && dlmm != ""){
		$('#register_dlmm').val(encrypt(Md5Jm("copyright." + dlmm + "pms@2016")));
	}
	if(qrmm != null && qrmm != ""){
		$('#register_qrmm').val(encrypt(Md5Jm("copyright." + dlmm + "pms@2016")));
	}
   	$('#registerForm').submit();
}

$("#registerForm").ajaxForm(function(data){  
	document.getElementById('registerMessage').innerText = data.message;
	if(data.message=="注册成功,请返回登录!"){
		$('#registerForm').form('clear');
	}
}); 

$("#logo_icon").dblclick(function(){
	$('#dlzh').val("coisinihcx@gmail.com");
	$('#dlmm').val("P@ssw0rd");
});


</script>
</body>
</html>
