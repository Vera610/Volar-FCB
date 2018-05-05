<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.model.Notice"%>
<%@page import="com.model.Product"%>
<jsp:useBean id="yzm" scope="page" class="com.util.CheckCode" />
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
		<script type="text/javascript">
function correctPNG()
{
    var arVersion = navigator.appVersion.split("MSIE")
    var version = parseFloat(arVersion[1])
    if ((version >= 5.5) && (document.body.filters)) 
    {
       for(var j=0; j<document.images.length; j++)
       {
          var img = document.images[j]
          var imgName = img.src.toUpperCase()
          if (imgName.substring(imgName.length-3, imgName.length) == "PNG")
          {
             var imgID = (img.id) ? "id='" + img.id + "' " : ""
             var imgClass = (img.className) ? "class='" + img.className + "' " : ""
             var imgTitle = (img.title) ? "title='" + img.title + "' " : "title='" + img.alt + "' "
             var imgStyle = "display:inline-block;" + img.style.cssText 
             if (img.align == "left") imgStyle = "float:left;" + imgStyle
             if (img.align == "right") imgStyle = "float:right;" + imgStyle
             if (img.parentElement.href) imgStyle = "cursor:hand;" + imgStyle
             var strNewHTML = "<span " + imgID + imgClass + imgTitle
             + " style=\"" + "width:" + img.width + "px; height:" + img.height + "px;" + imgStyle + ";"
             + "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader"
             + "(src=\'" + img.src + "\', sizingMethod='scale');\"></span>" 
             img.outerHTML = strNewHTML
             j = j-1
          }
       }
    }    
}
window.attachEvent("onload", correctPNG);
</script>
		<%
			String message = (String) request.getAttribute("message");
			if (message == null) {
				message = "";
			}
			if (!message.trim().equals("")) {
				out.println("<script language='javascript'>");
				out.println("alert('" + message + "');");
				out.println("</script>");
			}
			request.removeAttribute("message");
			String code = yzm.getCheckCode();
		%>
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
															<font color=white style="font-family: 楷体" size="2">登录</font>
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
																<form action="memberLogin.action" name="f1"
																	method="post" onsubmit="return ck()">
																	<table width="30%">
																		<tr>
																			<td>
																				<font style="font-family: 黑体" size="2"><b>用户名</b>
															    				</font> 
																			</td>
																			<td>
																				<input type="text" id="uname" name="uname"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																				*
																				<span id="namets"></span>
																			</td>
																		</tr>
																		<tr>
																			<td> 
																				<font style="font-family: 黑体" size="2"><b>密码</b>
																				</font>
																			</td>
																			<td>
																				<input type="password" id="upass" name="upass"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																				*
																			</td>
																		</tr>
																		<!--  	<tr>
                  		<td>验证码</td>
                  		<td><input type="text" id="yzm" name="yzm" value="" size="9" maxlength="4" class=input onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" 
                              onkeyup="value=value.replace(/[\W]/g,'')" style="border:0;border-bottom:1 solid black;background:;"><%=code%></td>
                  	</tr>
                  	<tr> 
                -->
																		<tr>
																			<td valign=middle colspan=2 align=center>
																				<input style="font-family: 楷体" class="btn-login02"
																					type=submit value="登 录">
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
    	function ck(){
    		if(f1.uname.value==""){
    			alert("请输入用户名");
    			return false;
    		}if(f1.upass.value==""){
    			alert("请输入密码");
    			return false;
    		}if(f1.yzm.value==""){
    			alert("请输入验证码");
    			return false;
    		}if(f1.yzm.value!=<%=code%>){
				alert("验证码错误!");
				f1.yzm.focus();
				return false
				};
    	}
    	
    	<%String suc = (String) request.getAttribute("suc");
			String no = (String) request.getAttribute("no");
			if (no != null) {%>
		 alert("用户名或密码错误");
		 location.replace("/FCBarcelona/login.jsp");
		 <%}
			if (suc != null) {%>
		 //alert("登陆成功");
		 location.replace("/FCBarcelona/index.jsp");
		 <%}%>
    </script>
	</body>
</html>
