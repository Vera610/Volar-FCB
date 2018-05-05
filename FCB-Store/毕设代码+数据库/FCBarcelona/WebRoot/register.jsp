<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>巴塞罗那足球俱乐部购物网站</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="巴塞罗那足球俱乐部购物网站">

		<LINK rel=stylesheet type=text/css href="files/style.css">
		<STYLE type=text/css>
.STYLE3 {
	COLOR: #ffffff
}
</STYLE>

		<STYLE type=text/css>
.STYLE1 {
	FONT-WEIGHT: bold
}

.STYLE2 {
	FONT-WEIGHT: bold
}

BODY {
	BACKGROUND-COLOR: #ffffff
}
</STYLE>

		<STYLE type=text/css>
.STYLE5 {
	FONT-SIZE: 9px
}
</STYLE>

		<LINK rel=stylesheet type=text/css href="files/css.css">
		<STYLE type=text/css>
BODY {
	MARGIN: 0px
}
</STYLE>

	</head>
	<%
		CommonDAO dao = (CommonDAO) Info.getDao(request, "CommonDAO");
	%>
	<body>
		<jsp:include page="top.jsp"></jsp:include>
		<center>
			<TABLE border=0 cellSpacing=0 cellPadding=0 width=1006 align=center>
				<TBODY>
					<TR>
						<TD vAlign=top width=188>
							<jsp:include page="left.jsp"></jsp:include>
						</TD>
						<TD vAlign=top width=787>
							<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" height=5>
								<TBODY>
									<TR>
										<TD height=5></TD>
									</TR>
								</TBODY>
							</TABLE>
							<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
								<TBODY>
									<TR>
										<TD height=10 width=787></TD>
									</TR>
									<TR>
										<TD height=25 background=picture/files/bgtop.gif>
											<TABLE width="100%">
												<TBODY>
													<TR>
														<TD width="90%" align=left>
															&nbsp;&nbsp;&nbsp;
															<font color=white style="font-family: 楷体" size="2">个人信息</font>
														</TD>
														<TD width="10%" align=right>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
									<TR>
										<TD height=180 vAlign=top>
											<STYLE type=text/css>
.style4 {
	COLOR: #d60d0d
}
</STYLE>

											<TABLE border=0 cellSpacing=0 cellPadding=0 width="99%"
												align=center>
												<TBODY>
													<TR>
														<TD height=10 vAlign=top></TD>
													</TR>
													<TR>
														<TD>
															<DIV style="WIDTH: 800px">
																<form action="memberReg.action" name="f1" method="post"
																	onsubmit="return ck()">
																	<table width="100%">
																		<tr>
																			<td>
																				<font style="font-family: 黑体" size="2"><b>用户名
																			</td>
																			<td>
																				<input type="text" id="uname" name="uname"
																					onBlur="checkname();"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																				*
																				<span id="namets"></span>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<font style="font-family: 黑体" size="2"><b>密码
																			</td>
																			<td>
																				<input type="password" id="upass" name="upass"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																				*
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<font style="font-family: 黑体" size="2"><b>重复密码
																			</td>
																			<td>
																				<input type="password" id="upass1" name="upass1"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																				*
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<font style="font-family: 黑体" size="2"><b>姓名
																			</td>
																			<td>
																				<input type="text" id="realname" name="realname"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																				*
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<font style="font-family: 黑体" size="2"><b>性别
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
																			<td> 
																				<font style="font-family: 黑体" size="2"><b>出生日期</b></font><br></td>
																			<td>
																				<input type="text" id="birth" name="birth"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';"> * <font color=grey>[日期格式为yyyy-MM-dd]</font>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<font style="font-family: 黑体" size="2"><b>电话
																			</td>
																			<td>
																				<input type="text" id="tel" name="tel"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																				*
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<font style="font-family: 黑体" size="2"><b>e-mail
																			</td>
																			<td>
																				<input type="text" id="email" name="email"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																				*
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<font style="font-family: 黑体" size="2"><b>地址
																			</td>
																			<td>
																				<input type="text" id="addr" name="addr" size="60"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																				*
																			</td>
																		</tr>
																		<tr>
																			<tr>
																				<td valign=middle colspan=1 align=center>
																					<input style="font-family: 楷体" class="btn-login02"
																						type="submit" value="提交" name="regsubmit"
																						disabled="disabled">
																					<input style="font-family: 楷体" class="btn-login02"
																						type="reset" value="重置">
																				</td>
																			</tr>

																		</tr>
																	</table>
																</form>
															</DIV>
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</center>

		<jsp:include page="foot.jsp"></jsp:include>
		<script type="text/javascript">
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

function checkEmail(el)
{
var regu ="^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*[0-9a-zA-Z-]+))@([a-zA-Z0-9-]+[.])+([a-zA-Z]|net|NET|asia|ASIA|com|COM|gov|GOV|mil|MIL|org|ORG|edu|EDU|int|INT|cn|CN|cc|CC)$"
var re = new RegExp(regu);
if(el.search(re) == -1)
{
return true; //非法
}
return false;//正确
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
    		var obj =document.getElementById("email");
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
    		}
    		if(f1.tel.value==""){
    			alert("请输入电话");
    			return false;
    		}if(f1.email.value==""){
    			alert("请输入e-mail");
    			return false;
    		}else if(f1.email.value!=""){
  				if(checkEmail(obj.value))
				{
					alert("E-mail格式不正确，请检查!");
					obj.focus();
					return false;
				}
  			}if(f1.addr.value==""){
    			alert("请输入地址");
    			return false;
    		}
    	}
    	
    	<%String suc = (String) request.getAttribute("suc");
			if (suc != null) {%>
		 alert("操作成功");
		 parent.location.replace("/FCBarcelona/login.jsp");
		 <%}%>
    </script>
	</body>
</html>
