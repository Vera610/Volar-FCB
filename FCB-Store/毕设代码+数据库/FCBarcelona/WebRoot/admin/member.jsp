<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.util.PageManager"%>
<%@page import="com.model.Sysuser"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
  CommonDAO dao = (CommonDAO)Info.getDao(request,"CommonDAO");
  String hql = " from Sysuser where type='用户' and delstatus='0' ";
  String url ="/FCBarcelona/admin/member.jsp?1=1"; 
  String key = request.getParameter("key")==null?"":request.getParameter("key");
  String f = request.getParameter("f");
  if(f==null)
  {
  key = Info.getUTFStr(key);
  }
  if(!key.equals(""))
  {
  hql+=" and (uname like'%"+key+"%'  )";
  url+="&key="+key;
  }
  hql+="  order by id desc"; %>
	<body>
		<jsp:include page="top.jsp"></jsp:include>

		<form action="/FCBarcelona/admin/member.jsp?f=f" name="f1"
			method="post">
			<table cellspacing=1 cellpadding=3 align=left>
				<tr>
					<td height=25 valign=middle>

						<a href=index.jsp style="text-decoration: none"><font
							color="fafd05" style="font-family: 黑体">前台</font>
						</a><font style="font-family: 黑体"> / 用户管理 
					</td>
				</tr>
			</table>
			<br>
			<br>
			<br>
			<table cellspacing=1 cellpadding=3 align=right>
				<tr>
					<td height=25 valign=middle align=right>
						<br>
					</td>
				</tr>
			</table>

			<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
				<tr>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>序号</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>用户名</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>姓名</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>性别</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>出生日期</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>电话</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>地址</b>
						</font>
					</td>
					
				</tr>
				<%
        String did  = request.getParameter("did");
        if(did!=null){
        	Sysuser s = (Sysuser)dao.findById(did, "Sysuser");
        	s.setDelstatus("1");
        	dao.update(s);
        }
        PageManager pageManager = PageManager.getPage("/FCBarcelona/admin/member.jsp?1=1",10, request);
	    pageManager.doList(hql);
	    PageManager bean= (PageManager)request.getAttribute("page");
	    ArrayList<Sysuser> list=( ArrayList<Sysuser>)bean.getCollection(); 
	   
	   	int i=0;
	    for(Sysuser sysuser :list)
	    {
	    	i++;
        %>
				<tr>
					<td class=tablebody2 valign=middle align=center width=""><%=i %></td>
					<td class=tablebody1 valign=middle align=center width=""><%=sysuser.getUname() %></td>
					<td class=tablebody1 valign=middle align=center width=""><%=sysuser.getRealname() %></td>
					<td class=tablebody1 valign=middle align=center width=""><%=sysuser.getSex() %></td>
					<td class=tablebody1 valign=middle align=center width=""><%=sysuser.getBirth() %></td>
					<td class=tablebody1 valign=middle align=center width=""><%=sysuser.getTel() %></td>
					<td class=tablebody1 valign=middle align=center width=""><%=sysuser.getAddr() %></td>
					
				</tr>
				<%} %>
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
	function add() {
		pop("/FCBarcelona/admin/noticeadd.jsp", "新增公告", 710, 350);
	}
	function edit(id) {
		pop("/FCBarcelona/admin/noticeedit.jsp?id=" + id, "编辑公告", 710, 350);
	}
</script>