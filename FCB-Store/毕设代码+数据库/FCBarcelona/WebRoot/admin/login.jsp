<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

		<title>巴塞罗那足球俱乐部购物网站后台管理</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<LINK href="/FCBarcelona/admin/css/test.css" rel=stylesheet>
		<script language="JavaScript" src="/FCBarcelona/admin/js/test.js"></script>
	</head>

	<body>
		<jsp:include page="top.jsp"></jsp:include>

		<table cellspacing=1 cellpadding=3>
			<tr>
				<td height=25 valign=middle>

					<a href=index.jsp style="text-decoration: none"><img
							src="admin/picture/logo5.jpg" width="130" height="80">
				</td>
			</tr>
		</table>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

		<form action="adminLogin.action" method=post name="login"
			onsubmit="return ck()">
			<table cellpadding=3 cellspacing=1 align=center width="300"
				height="160">
				<tr>
					<td valign=middle colspan=2 align=center height=35
						background="/FCBarcelona/admin/picture/topbg.jpg">
						<font color="#ffffff" size="5" style="font-family: 楷体"><b>管理员登录
						</font>
					</td>
				</tr>
				<tr>
					<td valign=middle align=center class=tablebody1
						style="font-family: 楷体" size="4">
						<font size="4"><b>用户名
					</td>
					<td valign=middlealign=center align=center class=tablebody1>
						<INPUT type=text id="uname" name="uname">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td valign=middle align=center class=tablebody1
						style="font-family: 楷体" size="4">
						<font size="4"><b>密码
					</td>
					<td valign=middle align=center class=tablebody1>
						<INPUT type=password id="upass" name="upass">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td valign=middle colspan=2 align=center>
						<input style="font-family: 楷体" class="btn-login01" type=submit
							value="登 录">
							<input style="font-family: 楷体" class="btn-login01" type="button" value="注册" onclick="add()" />
					</td>
				</tr>
			</table>
		</form>
		
		
	</body>
</html>
<script type="text/javascript">
     	function ck(){
     		if(f1.uname.value==""){
     			alert("请输入用户名");
     			return false;
     		}if(f1.upass.value==""){
     			alert("请输入密码");
     			return false;
     		}
     	}
     	
		<%String no = (String) request.getAttribute("no");
			if (no != null) {%>
		 alert("用户名或密码输入错误");
		 <%}%>
     </script>
     <SCRIPT language=javascript src="/FCBarcelona/commfiles/js/popup.js"></SCRIPT>
<script type="text/javascript">
	function add()
	{
		pop("/FCBarcelona/admin/useradd.jsp","注册管理员",550,270);
	}
	
</script>