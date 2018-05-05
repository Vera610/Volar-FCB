<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

		<title>My JSP 'index.jsp' starting page</title>
		<style>
body {
	margin: 0;
	background: url(/FCBarcelona/admin/picture/bg3.jpg) no-repeat;
	background-size: 100% 100%;
}
</style>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<LINK href="/FCBarcelona/admin/css/test.css" rel=stylesheet>
		<script language="JavaScript" src="/FCBarcelona/admin/js/test.js"></script>
	</head>
	<%
		Sysuser admin = (Sysuser) session.getAttribute("admin");
	%>
	<body>



		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>

				<%
					if (admin != null) {
				%>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td background="/FCBarcelona/admin/picture/topbg.jpg" align="left"
							height="32">

							<table width="1276" border="0" cellspacing="0" cellpadding="0"
								align="center" height="22">
								<tr>
									<td width="5%">
									</td>
									<td>
										<a href="admin/notice.jsp" style="text-decoration: none"><font
											color="#ffffff" style="font-family: 楷体" size="3">新闻公告管理</font></b>
										</a>
									</td>
									<td>
										<a href="admin/protype.jsp" style="text-decoration: none"><font
											color="#ffffff" style="font-family: 楷体" size="3">商品类别管理</font></b>
										</a>
									</td>
									<td>
										<a href="admin/product.jsp" style="text-decoration: none"><font
											color="#ffffff" style="font-family: 楷体" size="3">商品管理</font></b>
										</a>
									</td>
									<td>
										<a href="admin/orders.jsp" style="text-decoration: none"><font
											color="#ffffff" style="font-family: 楷体" size="3">订单管理</font></b>
									</td>

									
									<td>
										<a href="admin/kcview.jsp" style="text-decoration: none"><font
											color="#ffffff" style="font-family: 楷体" size="3">库存管理</font></b>
										</a>
									</td>
									<td>
										<a href="admin/kcrecord.jsp" style="text-decoration: none"><font
											color="#ffffff" style="font-family: 楷体" size="3">库存记录管理</font></b>
										</a>
									</td>

									<td>
										<a href="admin/msg.jsp" style="text-decoration: none"><font
											color="#ffffff" style="font-family: 楷体" size="3">留言管理</font></b>
										</a>
									</td>
									<td>
										<a href="admin/member.jsp" style="text-decoration: none"><font
											color="#ffffff" style="font-family: 楷体" size="3">用户管理</font></b>
										</a>
									</td>
									<td>
										<a href="admin/usergl.jsp" style="text-decoration: none"><font
											color="#ffffff" style="font-family: 楷体" size="3">管理员管理</font></b>
										</a> 
									</td>

									<td>
										<a href="adminExit.action" style="text-decoration: none"><font
											color="#ffffff" style="font-family: 楷体" size="3">注销</font></b> </a>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<%
					}
				%>

				</td>
			</tr>
		</table>


	</body>
</html>
