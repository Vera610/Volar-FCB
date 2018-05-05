<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.util.PageManager"%>
<%@page import="com.model.Order"%>
<%@page import="com.model.Product"%>
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
  String hql = " from Order where 1=1 and type='0' ";
  String url ="/FCBarcelona/admin/orders.jsp?1=1"; 
  String key = request.getParameter("key")==null?"":request.getParameter("key");
  String f = request.getParameter("f");
  if(f==null)
  {
  key = Info.getUTFStr(key);
  }
  if(!key.equals(""))
  {
  hql+=" and (orderid like'%"+key+"%'  )";
  url+="&key="+key;
  }
  hql+="  order by id desc"; %>
	<body>
		<jsp:include page="top.jsp"></jsp:include>

		<form action="/FCBarcelona/admin/orders.jsp?f=f" name="f1"
			method="post">
			<table cellspacing=1 cellpadding=3 align=left>
				<tr>
					<td height=25 valign=middle>

						<a href=index.jsp style="text-decoration: none"><font
							color="fafd05" style="font-family: 黑体">前台</font>
						</a><font style="font-family: 黑体"> / 订单管理 
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
						<font color="#ffffff" style="font-family: 黑体"><b>订单号</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>商品</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>总金额</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>付款状态</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>发货状态</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>收货状态</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>订单时间</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>订单人</b>
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
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg" width="">
						<font color="#ffffff" style="font-family: 黑体"><b>操作</b>
						</font>
					</td>
				</tr>
				<%
        PageManager pageManager = PageManager.getPage("/FCBarcelona/admin/orders.jsp?1=1",10, request);
	    pageManager.doList(hql);
	    PageManager bean= (PageManager)request.getAttribute("page");
	    ArrayList<Order> list=( ArrayList<Order>)bean.getCollection(); 
	   
	   	int i=0;
	    for(Order order :list)
	    {
	    	i++;
        %>
				<tr>
					<td class=tablebody2 valign=middle align=center width=""><%=i %></td>
					<td class=tablebody1 valign=middle align=center width="">
						&nbsp;&nbsp;<%=order.getOrderid() %></td>
					<td class=tablebody1 valign=middle align=center width="">
						<%String proinfo = order.getProinfo();
                  		String a[] = proinfo.split("-");
                  		String p = "";
                  		for(int j=0;j<a.length;j++){
                  			String b[] = a[j].split(",");
                  			Product product = (Product)dao.findById(b[0],"Product");
                      		p+=product.getProname()+"&nbsp;数量："+b[1]+"<br/>";
                  		}
                  		%><%=p %>
					</td>
					<td class=tablebody1 valign=middle width="" align="center"><%=order.getPrice() %>元
					</td>
					<td class=tablebody1 valign=middle width="" align="center"><%=order.getFkstatus() %></td>
					<td class=tablebody1 valign=middle width="" align="center"><%=order.getFhstatus() %></td>
					<td class=tablebody1 valign=middle width="" align="center"><%=order.getShstatus() %></td>
					<td class=tablebody1 valign=middle width="" align="center"><%=order.getSavetime() %></td>
					<td class=tablebody1 valign=middle width="" align="center">
						<%
			Sysuser member = (Sysuser)dao.findById(order.getMemberid(),"Sysuser");
			%><%=member.getRealname() %>
					</td>
					<td class=tablebody1 valign=middle width="" align="center"><%=order.getTel() %></td>
					<td class=tablebody1 valign=middle width="" align="center"><%=order.getAddr() %></td>
					<td class=tablebody1 valign=middle align=center width="">
						<%if((order.getFkstatus().equals("已付款")||order.getFkstatus().equals("货到付款"))&&order.getFhstatus().equals("未发货")){ %>
						<a href="orderFh.action?id=<%=order.getId() %>" style="text-decoration: none"><font color="#830721">发货</font></a>
						<%} %>
						
					</td>
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
		 alert("此订单中有库存不足的商品，请检查库存！");
		 parent.location.replace("/FCBarcelona/admin/orders.jsp");
		 <%}%>
</script>