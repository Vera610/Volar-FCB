<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.model.Notice"%>
<%@page import="com.model.Product"%>

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
	%>
	<body>
		<jsp:include page="top.jsp"></jsp:include>
		<TABLE border=0 cellSpacing=0 cellPadding=0 width=100% align=center>
			<TBODY>

				<TABLE border=0 cellSpacing=0 cellPadding=0 width="75%" align=center>
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
												<font color=white style="font-family: 楷体" size="2">商品</font>
											</TD>
											<TD width="10%" align=right>
												<A href="/FCBarcelona/productmore.jsp"><STRONG>
												</STRONG>
												</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
	COLOR: #981111;
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
													<%
														ArrayList<Product> productlist = (ArrayList<Product>) dao
																.findByHql(" from Product where delstatus=0 order by id desc limit 0,12");
														int a = 0;
														for (Product product : productlist) {
															a++;
													%>
													<DIV
														style="TEXT-ALIGN: center; WIDTH: 200px; FLOAT: left; HEIGHT: 250px; marign: 3px">
														<TABLE>
															<TBODY>
																<TR>
																	<TD height=110 vAlign=top>
																		<TABLE border=0 cellSpacing=0 cellPadding=0 width=110
																			height=137>
																			<TBODY>
																				<TR>
																					<TD height=95 width=110>
																						<DIV align=center>
																							<TABLE border=0 cellSpacing=1 cellPadding=2
																								width=90 bgColor=#e1e1e1 align=center height=90>
																								<TBODY>
																									<TR>
																										<TD bgColor=#ffffff height=90 width=90
																											align=middle>
																											<A
																												href="/FCBarcelona/productDetail.jsp?id=<%=product.getId()%>"
																												title="<%=product.getProname()%>"> <IMG
																													border=0
																													src="/FCBarcelona/upfile/<%=product.getImg()%>"
																													width=150 height=150>
																											</A>
																										</TD>
																									</TR>
																								</TBODY>
																							</TABLE>
																						</DIV>
																					</TD>
																				</TR>
																				<TR>
																					<TD height=18 vAlign=center>
																						<DIV align=center>
																							<A
																								href="/FCBarcelona/productDetail.jsp?id=<%=product.getId()%>"
																								title="<%=product.getProname()%>"> <%
 	String proname = "";
 		if (product.getProname().length() > 10) {
 			proname = product.getProname().substring(0, 10) + "...";
 		} else {
 			proname = product.getProname();
 		}
 %><%=proname%> </A>
																						</DIV>
																					</TD>
																				</TR>
																				<TR>
																					<TD height=13 vAlign=bottom>
																						<TABLE border=0 cellSpacing=0 cellPadding=0
																							width="98%">
																							<TBODY>
																								<TR>
																									<TD height=9>
																										<DIV class=style4 align=center>
																											<%
																												if (product.getField7().equals("yes")) {
																											%>
																											<font color=#000000> <s>定价：<%=product.getPrice()%>元</s>
																											</font>&nbsp;
																											<b>特价：<%=product.getField8()%>元</b>
																											<%
																												} else {
																											%>
																											定价：<%=product.getPrice()%>元
																											<%
																												}
																											%>
																										</DIV>
																									</TD>
																								</TR>
																								<TR>
																									<TD height=9>
																										<br>
																										<DIV align=center>
																											<A
																												href="/FCBarcelona/productDetail.jsp?id=<%=product.getId()%>"><IMG
																													border=0 src="picture/files/buy1.gif"
																													width=62 height=17>
																											</A>
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
													</DIV>
													<%
														if (a % 4 == 0) {
													%>
												</DIV>
												<DIV>
													<%
														}
														}
													%>


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
		<jsp:include page="foot.jsp"></jsp:include>

	</body>
</html>
