<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.model.Product"%>
<%@page import="com.model.Sysuser"%>
<%@page import="com.model.Car"%>
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
														<TD width="90%" align=left>
															&nbsp;&nbsp;
															<font color=white style="font-family: 楷体" size="2">填写订单</font>
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
																<table width="100%" border="0" bgcolor="#cccccc"
																	cellpadding="1" cellspacing="1">
																	<tr align="center" bgcolor="#b0a9f4">
																		<td>
																			图片
																		</td>
																		<td>
																			商品编号
																		</td>
																		<td>
																			商品名称
																		</td>
																		<td>
																			单价
																		</td>
																		<td>
																			购买数量
																		</td>
																	</tr>
																	<%
																		ArrayList<Car> carlist = (ArrayList<Car>) dao
																				.findByHql(" from Car where memberid='" + member.getId()
																						+ "' order by id desc ");
																		int total = 0;
																		String proinfo = "";
																		String proinfos = "";
																		String carids = "";
																		if (carlist.size() != 0) {
																			for (Car car : carlist) {
																				Product product = (Product) dao.findById(
																						car.getProductid(), "Product");
																				carids += car.getId() + "-";
																				proinfo = car.getProductid() + "," + car.getNum();
																				proinfos += proinfo + "-";
																				String price = "";
																				if (product.getField7().equals("yes")) {
																					price = product.getField8();
																				} else {
																					price = product.getPrice();
																				}
																				total += Integer.parseInt(price)
																						* Integer.parseInt(car.getNum());
																	%>
																	<tr align="center">
																		<td bgcolor="#ffffff">
																			<img src="/FCBarcelona/upfile/<%=product.getImg()%>"
																				width="30" height="30">
																		</td>
																		<td bgcolor="#ffffff"><%=product.getProno()%></td>
																		<td bgcolor="#ffffff">
																			<%=product.getProname()%>
																		</td>
																		<td bgcolor="#ffffff">
																			<%
																				if (product.getField7().equals("yes")) {
																			%>
																			<%=product.getField8()%>元
																			<%
																				} else {
																			%>
																			<%=product.getPrice()%>元
																			<%
																				}
																			%>
																		</td>
																		<td bgcolor="#ffffff"><%=car.getNum()%></td>
																	</tr>
																	<%
																		}
																			//System.out.println(proinfos);
																		}
																	%>
																	<tr>
																		<td colspan="5" bgcolor="#ffffff">
																			总金额:<%=total%>
																			元&nbsp;
																		</td>
																	</tr>
																</table>
																<form action="orderAdd.action" method="post" name="f1">
																	<input type="hidden" id="price" name="price"
																		value="<%=total%>">
																	<input type="hidden" id="memberid" name="memberid"
																		value="<%=member.getId()%>">
																	<input type="hidden" id="proinfo" name="proinfo"
																		value="<%=proinfos%>">
																	<input type="hidden" id="carids" name="carids"
																		value="<%=carids%>">
																	<table width="60%" border="0" bgcolor="#ffffff"
																		cellpadding="1" cellspacing="1">
																		<tr bgcolor="#660066">
																			<td>
																				<font color="#ffffff" style="font-family: 黑体"
																					size="2"><b>收货人
																				</font>
																			</td>
																			<td bgcolor="#ffffff" style="font-family: 黑体"
																				size="2">
																				<input type="text" id="realname" name="realname"
																					value="<%=member.getRealname()%>"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																				*
																			</td>
																		</tr>
																		<tr bgcolor="#660066">
																			<td>
																				<font color="#ffffff" style="font-family: 黑体"
																					size="2"><b>联系方式
																				</font>
																			</td>
																			<td bgcolor="#ffffff">
																				<input type="text" id="tel" name="tel"
																					value="<%=member.getTel()%>"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																				*
																			</td>
																		</tr>
																		<tr bgcolor="#660066">
																			<td>
																				<font color="#ffffff" style="font-family: 黑体"
																					size="2"><b>配送方式
																				</font>
																			</td>
																			<td bgcolor="#ffffff">
																				<select id="psmethod" name="psmethod">

																					<option value="快递">
																						快递
																					</option>
																					<option value="EMS">
																						EMS
																					</option>
																					<option value="平邮">
																						平邮
																					</option>
																				</select>
																			</td>
																		</tr>
																		<tr>
																			<td bgcolor="#660066">
																				<font color="#ffffff" style="font-family: 黑体"
																					size="2"><b>收货地址
																				</font>
																			</td>
																			<td bgcolor="#ffffff">
																				<input type="text" id="addr" name="addr"
																					value="<%=member.getAddr()%>" size="60"
																					style="border: 1px solid gray"
																					onfocus="this.style.border='1px solid #660066';"
																					onblur="this.style.border='1px solid gray';">
																				*
																			</td>
																		</tr>
																		<tr>
																			<td colspan="2">
																				<input style="font-family: 楷体" class="btn-login03"
																					type="submit" value="提交">
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

	</body>
</html>
