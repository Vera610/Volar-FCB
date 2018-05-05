<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.model.Sysuser"%>
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
	<%
		Sysuser member = (Sysuser) session.getAttribute("member");
		Sysuser sysuser = (Sysuser) dao.findById(member.getId(), "Sysuser");
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
															<font color=white style="font-family: 楷体" size="2">个人中心</font>
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
																<form action="memberEdit.action" name="f1" method="post"
																	onsubmit="return ck()">
																	<input type="hidden" id="id" name="id"
																		value="<%=sysuser.getId()%>">
																	<table width="100%">


																		<tr>
																			<td>
																				<font style="font-family: 黑体" size="2"><b>姓名
																			</td>
																			<td>
																				<input type="text" id="realname" name="realname"
																					value="<%=sysuser.getRealname()%>"
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
																					<option value="男"
																						<%if (sysuser.getSex().equals("男")) {
				out.print("selected==selected");
			}%>>
																						男
																					</option>
																					<option value="女"
																						<%if (sysuser.getSex().equals("女")) {
				out.print("selected==selected");
			}%>>
																						女
																					</option>
																				</select>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<font size="2"><b>出生日期</b></font><br></td>
																			<td>
																				<input type="text" id="birth" name="birth"
																					value="<%=sysuser.getBirth()%>"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<font style="font-family: 黑体" size="2"><b>电话
																			</td>
																			<td>
																				<input type="text" id="tel" name="tel"
																					value="<%=sysuser.getTel()%>"
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
																					value="<%=sysuser.getEmail()%>"
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
																					value="<%=sysuser.getAddr()%>"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																				*
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<font style="font-family: 黑体" size="2"><b>修改密码
																			</td>
																			<td>
																				<input type="password" id="upass" name="upass"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																			</td>
																		</tr>

																		<tr>
																			<td>
																				<font style="font-family: 黑体" size="2"><b>重复新密码
																			</td>
																			<td>
																				<input type="password" id="upass1" name="upass1"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																			</td>
																		</tr>
																		<tr>
																			<td colspan="2">
																				<input style="font-family: 楷体" class="btn-login02"
																					type="submit" value="提交">
																				<input style="font-family: 楷体" class="btn-login02"
																					type="reset" value="重置">
																			</td>
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
    
    	function ck(){
    	var obj =document.getElementById("email");
    	if(f1.upass.value!=""){
    		if(f1.upass1.value==""){
    			alert("请重复输入密码");
    			return false;
    		}if(f1.upass.value!=f1.upass1.value){
    			alert("两次密码不一致");
    			return false;
    		}
    	}
    		if(f1.realname.value==""){
    			alert("请输入姓名");
    			return false;
    		}if(f1.tel.value==""){
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
		 parent.location.replace("/FCBarcelona/memberinfo.jsp");
		 <%}%>
    </script>
	</body>
</html>
