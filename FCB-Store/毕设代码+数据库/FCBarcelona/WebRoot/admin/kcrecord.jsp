<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.util.PageManager"%>
<%@page import="com.model.Kcrecord"%>
<%@page import="com.model.Product"%>
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
  String hql = " from Kcrecord where 1=1  ";
  String url ="/FCBarcelona/admin/kcrecord.jsp?1=1"; 
  String stime = request.getParameter("stime")==null?"":request.getParameter("stime");
  String etime = request.getParameter("etime")==null?"":request.getParameter("etime");
  String f = request.getParameter("f");
  if(f==null)
  {
	  stime = Info.getUTFStr(stime);
	  etime = Info.getUTFStr(etime);
  }
  if(!stime.equals(""))
  {
  hql+=" and (savetime>='"+stime+"'  )";
  url+="&stime="+stime;
  }  if(!etime.equals(""))
  {
	  hql+=" and (savetime<='"+etime+"'  )";
	  url+="&etime="+etime;
	  }
  hql+="  order by id desc"; %>
	<body>
		<jsp:include page="top.jsp"></jsp:include>

		<form action="/FCBarcelona/admin/kcrecord.jsp?f=f" name="f1"
			method="post">
			<table cellspacing=1 cellpadding=3 align=left>
				<tr>
					<td height=25 valign=middle>

						<a href=index.jsp style="text-decoration: none"><font
							color="fafd05" style="font-family: 黑体">前台</font> </a><font
							style="font-family: 黑体"> / 库存记录管理 
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
						background="/FCBarcelona/admin/picture/topbg.jpg" width="10%">
						<font color="#ffffff" style="font-family: 黑体"><b>序号</b> </font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>商品名称</b> </font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>出库、入库数量</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="15%">
						<font color="#ffffff" style="font-family: 黑体"><b>时间</b> </font>
					</td>
				</tr>
				<%
        PageManager pageManager = PageManager.getPage("/FCBarcelona/admin/kcrecord.jsp?1=1",10, request);
	    pageManager.doList(hql);
	    PageManager bean= (PageManager)request.getAttribute("page");
	    ArrayList<Kcrecord> list=( ArrayList<Kcrecord>)bean.getCollection(); 
	   	int i=0;
	    for(Kcrecord kc :list)
	    {
	    	i++;
        %>
				<tr>
					<td class=tablebody2 valign=middle align=center width=""><%=i %></td>
					<td class=tablebody1 valign=middle width="">
						<%Product p = (Product)dao.findById(kc.getProductid(),"Product"); %>
						<%=p.getProname() %>
					</td>
					<td class=tablebody1 valign=middle align=center width="">
						<%
			String type = "";
			if(kc.getType().equals("in")){
				type = "入库";
			}else{
				type = "出库";
			} %>
						<%=type %>&nbsp;<%=kc.getNum() %>
					</td>
					<td class=tablebody1 valign=middle align=center width=""><%=kc.getSavetime() %></td>
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
	function add()
	{
		pop("/FCBarcelona/admin/protypeadd.jsp","新增类别",400,150);
	}
	function edit(id)
	{
		pop("/FCBarcelona/admin/protypeedit.jsp?id="+id,"编辑类别",400,150);
	}
	<%
		String no = (String)request.getAttribute("no");
		if(no!=null){%>
		 alert("有关联到此类别的商品，不能删除！");
		 parent.location.replace("/FCBarcelona/admin/protype.jsp");
		 <%}%>
</script>