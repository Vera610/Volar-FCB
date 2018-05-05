<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.model.Product"%>
<%@page import="com.model.Sysuser"%>
<%@page import="com.model.Order"%>
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
															&nbsp;&nbsp;&nbsp;
															<font color=white style="font-family: 楷体" size="2">我的订单</font>
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
																			订单号
																		</td>
																		<td>
																			订单商品
																		</td>
																		<td>
																			订单价格
																		</td>
																		<td>
																			配送方式
																		</td>
																		<td>
																			收送地址
																		</td>
																		<td>
																			付款状态
																		</td>
																		<td>
																			发货状态
																		</td>
																		<td>
																			订单时间
																		</td>
																		<td>
																			操作
																		</td>
																	</tr>
																	<%
																		ArrayList<Order> orderlist = (ArrayList<Order>) dao
																				.findByHql(" from Order where memberid='" + member.getId()
																						+ "' and type='0' order by id desc ");
																		int total = 0;
																		if (orderlist.size() != 0) {
																			for (Order order : orderlist) {
																	%>
																	<tr align="center" height="30">
																		<td bgcolor="#ffffff"><%=order.getOrderid()%></td>
																		<td bgcolor="#ffffff" align="left">
																			<%
																				String proinfo = order.getProinfo();
																						String a[] = proinfo.split("-");
																						String p = "";
																						for (int i = 0; i < a.length; i++) {
																							String b[] = a[i].split(",");
																							Product product = (Product) dao.findById(b[0],
																									"Product");
																							p += product.getProname() + "&nbsp;数量：" + b[1];

																						}
																			%><%=p%>
																		</td>
																		<td bgcolor="#ffffff"><%=order.getPrice()%>
																			元
																		</td>
																		<td bgcolor="#ffffff"><%=order.getPsmethod()%>
																		</td>
																		<td bgcolor="#ffffff" width="80"><%=order.getAddr()%>
																		</td>
																		<td bgcolor="#ffffff"><%=order.getFkstatus()%>
																		</td>
																		<td bgcolor="#ffffff"><%=order.getFhstatus()%>
																		</td>
																		<td bgcolor="#ffffff" width="60"><%=order.getSavetime()%></td>
																		<td bgcolor="#ffffff">
																			<%
																				if (order.getShstatus().equals("未确认")) {
																							if (order.getFkstatus().equals("未付款")) {
																			%>

																			<a
																				href="/FCBarcelona/bank.jsp?id=<%=order.getId()%>"><font
																				color="#830721">网上付款</font>
																			</a>&nbsp;|&nbsp;
																			<a href="orderDel.action?id=<%=order.getId()%>"><font
																				color="#830721">删除</font>
																			</a>
																		</td>
																		<%
																			}
																						if (order.getFhstatus().equals("已发货")) {
																		%>
																		
																		<a href="orderSh.action?id=<%=order.getId()%>"><font
																			color="#830721">确认收货</font>
																		</a>
																		<%
																			}
																					}
																					if (order.getShstatus().equals("已确认")) {
																		%>
																		交易完成
																		<%
																			}
																		%>
																	</tr>
																	<%
																		}
																		}
																	%>
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

	</body>
</html>
