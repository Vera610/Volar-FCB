<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.util.PageManager"%>
<%@page import="com.model.Product"%>
<%@page import="com.model.Protype"%>
<%@page import="com.model.Kcrecord"%>
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
		String hql = " from Product where  delstatus=0 ";
		String url = "/FCBarcelona/admin/product.jsp?1=1";
		String key = request.getParameter("key") == null ? "" : request
				.getParameter("key");
		String key1 = request.getParameter("key1") == null ? "" : request
				.getParameter("key1");
		String key2 = request.getParameter("key2") == null ? "" : request
				.getParameter("key2");
		String key3 = request.getParameter("key3") == null ? "" : request
				.getParameter("key3");
		String f = request.getParameter("f");
		if (f == null) {
			key = Info.getUTFStr(key);
			key1 = Info.getUTFStr(key1);
			key2 = Info.getUTFStr(key2);
			key3 = Info.getUTFStr(key3);
		}
		if (!key.equals("")) {
			hql += " and (proname like'%" + key + "%' or prono like'%"
					+ key + "%' )";
			url += "&key=" + key;
		}
		if (!key1.equals("")) {
			hql += " and (protype ='" + key1 + "' )";
			url += "&key1=" + key1;
		}
		if (!key2.equals("")) {
			hql += " and (price >=" + key2 + " )";
			url += "&key2=" + key2;
		}
		if (!key3.equals("")) {
			hql += " and (price <" + key3 + " )";
			url += "&key3=" + key3;
		}
		hql += "  order by id desc";
	%>
	<body>
		<jsp:include page="top.jsp"></jsp:include>

		<form action="/FCBarcelona/admin/product.jsp?f=f" name="f1"
			method="post">
			<table cellspacing=1 cellpadding=3 align=left>
				<tr>
					<td height=25 valign=middle>
						<!--    -->
						<a href=index.jsp style="text-decoration: none"><font
							color="fafd05" style="font-family: 黑体">前台</font>
						</a><font style="font-family: 黑体"> / 商品管理 
					</td>
				</tr>
			</table>
			<br>
			<br>
			<br>
			<table cellspacing=1 cellpadding=3 align=right>
	

				<tr>
					<td height=25 valign=middle align=right>
						&nbsp;
						<input style="font-family: 黑体" type="button" value="新增" onclick="add()">
					</td>
				</tr>
			</table>

			<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
				<tr>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg">
						<font color="#ffffff" style="font-family: 黑体"><b>序号</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg">
						<font color="#ffffff" style="font-family: 黑体"><b>商品编号</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg">
						<font color="#ffffff" style="font-family: 黑体"><b>图片</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg">
						<font color="#ffffff" style="font-family: 黑体"><b>商品名称</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg">
						<font color="#ffffff" style="font-family: 黑体"><b>商品类别</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg">
						<font color="#ffffff" style="font-family: 黑体"><b>价格</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg">
						<font color="#ffffff" style="font-family: 黑体"><b>特价</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg">
						<font color="#ffffff" style="font-family: 黑体"><b>库存数量</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg">
						<font color="#ffffff" style="font-family: 黑体"><b>品牌</b>
						</font>
					</td>
					<td valign=middle align=center height=25
						background="/FCBarcelona/admin/picture/topbg.jpg">
						<font color="#ffffff" style="font-family: 黑体"><b>操作</b>
						</font>
					</td>
				</tr>
				<%
					PageManager pageManager = PageManager.getPage(
							"/FCBarcelona/admin/product.jsp?1=1", 6, request);
					pageManager.doList(hql);
					PageManager bean = (PageManager) request.getAttribute("page");
					ArrayList<Product> list = (ArrayList<Product>) bean.getCollection();

					int i = 0;
					for (Product product : list) {
						i++;
				%>
				<tr>
					<td class=tablebody2 valign=middle align=center width=""><%=i%></td>
					<td class=tablebody1 valign=middle align=center width=""><%=product.getProno()%></td>
					<td class=tablebody1 valign=middle align=center width="">
						<img src="/FCBarcelona/upfile/<%=product.getImg()%>" width="60"
							height="60">
					</td>
					<td class=tablebody1 valign=middle align=center width=""><%=product.getProname()%></td>
					<td class=tablebody1 valign=middle align=center width="">
						<%
							Protype protype = (Protype) dao.findById(product.getProtype(),
										"Protype");
						%>
						<%=protype.getTypename()%>
					</td>
					<td class=tablebody1 valign=middle align=center width=""><%=product.getPrice()%>元
					</td>
					<td class=tablebody1 valign=middle align=center width="">
						<%
							if (product.getField7().equals("yes")) {
						%>
						<%=product.getField8()%>
						元
						<a href="productQxTj.action?id=<%=product.getId()%>"
							style="text-decoration: none"><font color="#830721">取消特价</font>
						</a>
						<%
							} else {
						%>
						<a href="javascript:settj(<%=product.getId()%>)"
							style="text-decoration: none"><font color="#830721">设置特价</font>
						</a>
						<%
							}
						%>
					</td>
					<td class=tablebody1 valign=middle align=center width="">
						<%
							ArrayList<Kcrecord> inlist = (ArrayList<Kcrecord>) dao
										.findByHql("  from Kcrecord where productid='"
												+ product.getId() + "' and type='in' ");
								ArrayList<Kcrecord> outlist = (ArrayList<Kcrecord>) dao
										.findByHql("  from Kcrecord where productid='"
												+ product.getId() + "' and type='out' ");
								int kc;
								if (inlist.size() != 0) {
									int innum = 0;
									int outnum = 0;
									for (Kcrecord in : inlist) {
										innum += Integer.parseInt(in.getNum());
									}
									for (Kcrecord kout : outlist) {
										outnum += Integer.parseInt(kout.getNum());
									}
									kc = innum - outnum;
								} else {
									kc = 0;
								}
						%>
						<%=kc%>
					</td>
					<td class=tablebody1 valign=middle align=center width=""><%=product.getField1()%></td>
					<td class=tablebody1 valign=middle align=center width="">
						<a href="javascript:edit(<%=product.getId()%>)" style="text-decoration: none"><font color="#830721">编辑</font></a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="productDel.action?id=<%=product.getId()%>" style="text-decoration: none"><font color="#830721">删除</font></a>
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
	function add()
	{
		pop("/FCBarcelona/admin/productadd.jsp","新增商品",800,110);
	}
	function edit(id)
	{
		pop("/FCBarcelona/admin/productedit.jsp?id="+id,"编辑商品",800,110);
	}
	function settj(id){
		pop("/FCBarcelona/admin/productsettj.jsp?id="+id,"设置特价",300,80);
	}
	
</script>