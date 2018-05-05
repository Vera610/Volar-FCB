<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.model.Product"%>
<%@page import="com.model.Sysuser"%>
<%//@page import="com.model.Fav"%>
<%@page import="com.model.Kcrecord"%>
<%@page import="com.model.Protype"%>
<%//@page import="com.model.Pj"%>
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

		<style type="text/css">
#magnifier {
	width: 200px;
	height: 200px;
	position: absolute;
	top: 280px;
	left: 400px;
	font-size: 0;
	border: 1px solid #000;
}

#img {
	width: 200px;
	height: 200px;
}

#Browser {
	border: 1px solid #000;
	z-index: 100;
	position: absolute;
	background: #555;
}

#mag {
	border: 1px solid #000;
	overflow: hidden;
	z-index: 100;
}
</style>
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
		String id = request.getParameter("id");
		Product product = (Product) dao.findById(id, "Product");
		Sysuser member = (Sysuser) session.getAttribute("member");
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
														<TD width="90%" align=left>&nbsp;&nbsp;
															 <font color=white  style="font-family: 楷体" size="2">商品内容</font>
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
																<table width="100%" height="300" border="0">
																	<tr>
																		<td align="center" width="40%">
																			<!--<div id="ico" style="float:center;" >
	<div style="top: 1px; left: 2px;">-->
																			<img src="/FCBarcelona/upfile/<%=product.getImg()%>"
																				_fcksavedurl="/FCBarcelona/upfile/<%=product.getImg()%>"
																				id="img" />
																			</div>
																			<!--  <div id="mag"><img id="magnifierImg" /></div>-->
																			</div>
																		</td>
																		<td colspan="3" valign="top">
																			<table width="100%" border="0">
																				<tr>
																					<td>
																						<font style="font-family: 黑体" size="2"><b>商品编号:<%=product.getProno()%>
																					</td>
																					<td align="right">
																						<%
																							
																								//    if(favlist.size()==0){
																								//
																						%>
																					
																					</td>
																				</tr>
																				<tr>
																					<td colspan="2">
																						<font style="font-family: 黑体" size="2"><b>商品名称:<b><%=product.getProname()%></b>
																					</td>
																				</tr>
																				<tr>
																					<td colspan="2">
																						<%
																							if (product.getField7().equals("yes")) {
																						%>
																						<s>定价：<%=product.getPrice()%>元</s>&nbsp;
																						<font color=#981111 style="font-family: 黑体"><b>特价：<%=product.getField8()%>元</b>
																						</font>
																						<%
																							} else {
																						%>
																						<font color=#981111 style="font-family: 黑体"
																							size="2"> 定价：<%=product.getPrice()%>元</font>
																						<%
																							}
																						%>
																					</td>
																				</tr>
																				<tr>
																					<td colspan="2">
																						<font style="font-family: 黑体" size="2"><b>库存:
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
																						%> <%=kc%>
																					</td>
																				</tr>

																				<tr>
																					<td colspan="2">
																						<font style="font-family: 黑体" size="2"><b>类别:
																								<%
																							Protype protype = (Protype) dao.findById(product.getProtype(),
																									"Protype");
																						%> <%=protype.getTypename()%>
																					</td>
																				</tr>
																				<tr>
																					<td colspan="2" height="20">
																						<font style="font-family: 黑体" size="2"><b>品牌:&nbsp;<%=product.getField1()%>
																					</td>
																				</tr>
																				<tr>
																					<td colspan="2" height="20"></td>
																				</tr>
																				<tr>
																					<td colspan="2" height="30"></td>
																				</tr>
																				<%
																					if (member != null) {
																				%>
																				<tr>
																					<td valign="top" colspan="2">
																						<input type="hidden" id="kc" name="kc"
																							value="<%=kc%>" />
																						<font style="font-family: 黑体" size="2"><b>
																								购买数量:<input type="text" id="num" name="num"
																									value="1" size="1"
																									onkeyup="value=value.replace(/[^\d]/g,'') "
																									onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"
																									style="border: 1px solid gray"
																									onfocus="this.style.border='1px solid #660066';"
																									onblur="this.style.border='1px solid gray';">
																					</td>
																				</tr>
																				<tr>
																					<td valign="top" colspan="2">
																						<a
																							href="javascript:tocar('<%=member.getId()%>','<%=product.getId()%>')"><br>
																							<img src="/FCBarcelona/picture/files/buy.jpg"
																								border="0"> </a>
																					</td>
																				</tr>
																				<%
																					} else {
																				%>
																				<tr>
																					<td colspan="2">
																						<font style="font-family: 黑体" size="2"><b>请<a
																								href="/FCBarcelona/login.jsp"><font
																									color="af1a33" size="4"><b>登录</b></font></a>后购买!!! 
																					</td>
																				</tr>
																				<%
																					}
																				%>
																			</table>
																		</td>
																	</tr>

																	<tr>
																		<td colspan="4"><br></td>
																	</tr>

																	<tr>
																		<td colspan="4">
																			<table width="100%" border="0" bgcolor="#ffffff"
																				cellpadding="1" cellspacing="1">
																				<tr align="center" height="30">
																				
																				</tr>
																			
																				
																			</table>
																		</td>
																	</tr>
																</table>

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
	function tocar(memberid,productid)
	{
	if(document.getElementById("num").value=="")
		{
		alert("购买数量不能为空");
		return;
		}else if(parseInt(document.getElementById("num").value)>parseInt(document.getElementById("kc").value)){
			alert("购买数量不能大于库存数量");
			return;
			location.href("/FCBarcelona/productDetail.jsp");
		}
		
		//创建一个XMLHttpRequest对象
		createXMLHttpRequest();
		//将状态触发器绑定到一个函数
		

		xmlHttp.onreadystatechange = processor;
		//通过GET方法向指定的URL建立服务器的调用
		
		xmlHttp.open("GET", "carAdd.action?num="+document.getElementById('num').value+"&memberid="+memberid+"&productid="+productid);
		
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
				alert("商品已放入购物车");

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
    </script>
	</body>
</html>

