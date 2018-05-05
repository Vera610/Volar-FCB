<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml">
	<HEAD>
		<TITLE></TITLE>

		<LINK href="/FCBarcelona/commfiles/css/Admin.css" rel=stylesheet>
		<SCRIPT language=javascript src="/FCBarcelona/commfiles/js/Admin.js"></SCRIPT>
		<script language=javascript src="/FCBarcelona/fckeditor/fckeditor.js"></script>
		<STYLE type=text/css>
.STYLE1 {
	FONT-WEIGHT: bold;
	COLOR: #0099ff
}
</STYLE>

		<META content="MSHTML 6.00.2900.5726" name=GENERATOR>
	</HEAD>
	<BODY>
		<form action="userAdd.action" method=post name="f1"
			onsubmit="return ck()">
			<TABLE cellSpacing=1 cellPadding=3 width="100%" align=center
				bgColor=#dad1e2 border=0>
				<TBODY>
					<TR>
						<TD width="20%" height=24 align="center">
							用户名
						</TD>
						<TD width="65%" height=24>
							<label>
								<input type="text" id="uname" name="uname" onBlur="checkname();">
								*
								<span id="namets"></span>
							</label>
						</TD>
					</TR>
					<TR>
						<TD width="20%" height=24 align="center">
							密码
						</TD>
						<TD width="65%" height=24>
							<label>
								<input type=password id="upass" name="upass">
								*
							</label>
						</TD>
					</TR>
					<TR>
						<TD width="20%" height=24 align="center">
							重复密码
						</TD>
						<TD width="65%" height=24>
							<label>
								<input type=password id="upass1" name="upass1">
								*
							</label>
						</TD>
					</TR>
					<TR>
						<TD width="20%" height=24 align="center">
							姓名
						</TD>
						<TD width="65%" height=24>
							<label>
								<input type="text" id="realname" name="realname">
								*
							</label>
						</TD>
					</TR>
					<tr>
						<td width="20%" height=24 align="center">
							性别
						</td>
						<td>
							<select id="sex" name="sex">
								<option value="男">
									男
								</option>
								<option value="女">
									女
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td width="20%" height=24 align="center"> 
							出生日期<br></td>
						<td>
							<input type="text" id="birth" name="birth"> * <font color=grey>[日期格式为yyyy-MM-dd]</font>
						</td>
					</tr>
					<tr>
						<td width="20%" height=24 align="center">
							电话
						</td>
						<td>
							<input type="text" id="tel" name="tel">
							*
						</td>
					</tr>
					<tr>
						<td width="20%" height=24 align="center">
							地址
						</td>
						<td>
							<input type="text" id="addr" name="addr" size="60">
						</td>
					</tr>

					<TR>
						<TD colspan="2" height=24 align="center">
							<input type="submit" value="提交">
							<input type="reset" value="重置">
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</form>
	</BODY>
</HTML>
<SCRIPT language=javascript>

		    //定义一个变量用于存放XMLHttpRequest对象
	var xmlHttp; 
	
	//该函数用于创建一个XMLHttpRequest对象
	function createXMLHttpRequest() {
		if (window.ActiveXObject) {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		} 
		else if (window.XMLHttpRequest) {
			xmlHttp = new XMLHttpRequest();
		}
	}
		//这是一个启动AJAX异步通信的方法
	function checkname()
	{
	
	if(f1.uname.value=="")
		{
		alert("请输入用户名");
		return false;
		}
		//创建一个XMLHttpRequest对象
		createXMLHttpRequest();
		//将状态触发器绑定到一个函数
		

		xmlHttp.onreadystatechange = processor;
		//通过GET方法向指定的URL建立服务器的调用
		
		xmlHttp.open("GET", "check.action?uname="+f1.uname.value+"&timeStamp="+new Date().getTime());
		
		//发送请求
		xmlHttp.send(null);
		

	}
	function processor () 
	{
		//定义一个变量用于存放从服务器返回的响应结果
		var responseContext;
		if(xmlHttp.readyState == 4) 
		{ //如果响应完成
			if(xmlHttp.status == 200) 
			{//如果返回成功
				//取出服务器的响应内容
				responseContext = xmlHttp.responseText;
				//如果注册名检查有效
				if ( responseContext.indexOf("1") )
				{
					document.getElementById("namets").innerHTML="√";
					document.getElementById("namets").style.cssText="font-size:11px;color:green;";
					document.all.regsubmit.disabled=false;
				}
				else				{
					document.getElementById("namets").innerHTML="×已存在的用户名";
					document.getElementById("namets").style.cssText="font-size:11px;color:red;";
					document.all.regsubmit.disabled=true;
				}
			}
		}
	}
	
	function InitAjax() 
{ 
　var ajax=false; 
　try { 
　　ajax = new ActiveXObject("Msxml2.XMLHTTP"); 
　} catch (e) { 
　　try { 
　　　ajax = new ActiveXObject("Microsoft.XMLHTTP"); 
　　} catch (E) { 
　　　ajax = false; 
　　} 
　} 
　if (!ajax && typeof XMLHttpRequest!='undefined') { 
　　ajax = new XMLHttpRequest(); 
　} 
　return ajax; 
} 
function isDateString(sDate){      
var mp=/\d{4}-\d{2}-\d{2}/; 
var matchArray = sDate.match(mp);     
if (matchArray==null) return false;      
var iaMonthDays = [31,28,31,30,31,30,31,31,30,31,30,31];     
var iaDate = new Array(3);     
var year, month, day;             
iaDate = sDate.split("-");          
year = parseFloat(iaDate[0])      
month = parseFloat(iaDate[1])      
day=parseFloat(iaDate[2])       
if (year < 1900 || year > 2100) return false;       
if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) iaMonthDays[1]=29;       if (month < 1 || month > 12) return false;       
if (day < 1 || day > iaMonthDays[month - 1]) return false;  
return true;   
}   
    
    	function ck(){
    	var date =document.getElementById("birth").value;
    		if(f1.uname.value==""){
    			alert("请输入用户名");
    			return false;
    		}if(f1.upass.value==""){
    			alert("请输入密码");
    			return false;
    		}if(f1.upass1.value==""){
    			alert("请重复输入密码");
    			return false;
    		}if(f1.upass.value!=f1.upass1.value){
    			alert("两次密码不一致");
    			return false;
    		}if(f1.realname.value==""){
    			alert("请输入姓名");
    			return false;
    		}if(f1.birth.value==""){
    			alert("请输入出生日期"); 
    			return false;
				
    		}else if(f1.birth.value!=""){
    		if(!isDateString(date)){    
				alert("日期格式不正确,正确日期格式为yyyy-mm-dd");   
				return false;  
				}
    		}if(f1.tel.value==""){
    			alert("请输入电话");
    			return false;
    		}
    	}
     	
		<%String suc = (String) request.getAttribute("suc");
			if (suc != null) {%>
		 alert("操作成功");
		 parent.location.replace("/FCBarcelona/admin/login.jsp");
		 <%}%>
</script>
