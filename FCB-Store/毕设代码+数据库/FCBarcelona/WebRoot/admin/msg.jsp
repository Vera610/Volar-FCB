<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.util.PageManager"%>
<%@page import="com.model.Msg"%>
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

		<title>巴塞罗那足球俱乐部购物网站后台管理</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<LINK href="/FCBarcelona/admin/css/test.css" rel=stylesheet>
		<script language="JavaScript" src="/FCBarcelona/admin/js/test.js"></script>
	</head>
	<%
		CommonDAO dao = (CommonDAO) Info.getDao(request, "CommonDAO");
		String hql = " from Msg where 1=1 ";
		String url = "/FCBarcelona/admin/msg.jsp?1=1";
		String key = request.getParameter("key") == null ? "" : request
				.getParameter("key");
		String f = request.getParameter("f");
		if (f == null) {
			key = Info.getUTFStr(key);
		}
		if (!key.equals("")) {
			hql += " and (title like'%" + key + "%'  )";
			url += "&key=" + key;
		}
		hql += "  order by id desc";
	%>
	<body>
		<jsp:include page="top.jsp"></jsp:include>

		<form action="/FCBarcelona/admin/msg.jsp?f=f" name="f1" method="post">
			<table cellspacing=1 cellpadding=3 align=left>
				<tr>
					<td height=25 valign=middle>

						<a href=index.jsp style="text-decoration: none"><font
							color="fafd05" style="font-family: 黑体">前台</font>
						</a><font style="font-family: 黑体"> / 留言管理 
					</td>
				</tr>
			</table>
			<br>
			<br>
			<br>
			<br>
			<br>
			


			<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
				<tr>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="10%">
						<font color="#ffffff" style="font-family: 黑体"><b>序号</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>留言内容</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>回复</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>留言人</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="20%">
						<font color="#ffffff" style="font-family: 黑体"><b>留言日期</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="15%">
						<font color="#ffffff" style="font-family: 黑体"><b>操作</b>
						</font>
					</td>
				</tr>
				<%
					PageManager pageManager = PageManager.getPage(
							"/FCBarcelona/admin/msg.jsp?1=1", 10, request);
					pageManager.doList(hql);
					PageManager bean = (PageManager) request.getAttribute("page");
					ArrayList<Msg> list = (ArrayList<Msg>) bean.getCollection();

					int i = 0;
					for (Msg msg : list) {
						i++;
				%>
				<tr>
					<td class=tablebody2 valign=middle align=center width=""><%=i%></td>
					<td class=tablebody1 valign=middle width="">
						&nbsp;&nbsp;<%=msg.getContent()%></td>
					<td class=tablebody1 valign=middle align=center width=""><%=msg.getReply()%></td>
					<td class=tablebody1 valign=middle align=center width="">
						<%
							Sysuser m = (Sysuser) dao
										.findById(msg.getMemberid(), "Sysuser");
						%><%=m.getUname()%>
					</td>
					<td class=tablebody1 valign=middle align=center width=""><%=msg.getSavetime()%></td>
					<td class=tablebody1 valign=middle align=center width="">
						<%
							if (msg.getReply().equals("")) {
						%>
						<a href="javascript:hf(<%=msg.getId()%>)" style="text-decoration: none"><font color="#830721">回复</font></a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<%
							}
						%>
						<a href="msgDel.action?id=<%=msg.getId()%>" style="text-decoration: none"><font color="#830721">删除</font></a>
					</td>
				</tr>
				<%
					}
				%>
			</table>
			<br>
			<table cellspacing=1 cellpadding=3 align=center>
				<tr>
					<td class=tablebody1 height=25 valign=middle align=middle>
						${page.info }
					</td>
				</tr>
			</table>
		</form>

	</body>
</html>
<SCRIPT language=javascript src="/FCBarcelona/commfiles/js/popup.js"></SCRIPT>
<script type="text/javascript">

	function hf(id)
	{
		pop("/FCBarcelona/admin/msghf.jsp?id="+id,"留言回复",680,140);
	}
</script>