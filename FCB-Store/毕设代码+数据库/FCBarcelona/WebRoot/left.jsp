<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.model.Notice"%>
<%@page import="com.model.Msg"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'left.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	

	</head>
	<%CommonDAO dao = (CommonDAO)Info.getDao(request,"CommonDAO"); %>
	<body>
		<TABLE border=0 cellSpacing=0 cellPadding=0 width=180 align=center>
			<TBODY>
				<TR>
					<TD width="200" height=15 align=middle>
						&nbsp;
					</TD>
				</TR>

				<TD>
					<STYLE type=text/css>
.td {
	BORDER-BOTTOM: #cccccc 1px solid;
	BORDER-LEFT: #cccccc 1px solid;
	BORDER-RIGHT: #cccccc 1px solid
}

.STYLE2 {
	FONT-SIZE: 14px;
	FONT-WEIGHT: bold
}

.STYLE3 {
	FONT-SIZE: 12px
}
</STYLE>


					<TABLE border=0 cellSpacing=0 cellPadding=0 width=180 align=center>
						<TBODY>
							<TR>


								<TD
									style="PADDING-BOTTOM: 3px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
									vAlign=top align=middle>
									<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%"
										height=32>
										<TBODY>
											<TR>
												<TD height=6 background=picture/files/bgbg2.jpg width=160
													align=middle useMap="#faq" border="0">
													<font color=#ffffff style="font-family: 楷体" size="2">关于我们</font>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%"
										height=27>
										<TBODY>

											<TR>
												<TD height=19></TD>
												<TD>
													<font color=#000000 style="font-family: 黑体" size="1">&nbsp;欢迎来到巴塞罗那足球俱乐部购<br>&nbsp;物网站，<br>&nbsp;我们的目标很简单:
														<br>&nbsp;通过互联网为您提供最优质的巴<br>&nbsp;塞罗那官方商品，希望您购物愉<br>&nbsp;快！</font>
												</TD>
											</TR>
											<TR>
												<TD height=8 width="1%"></TD>
												<TD width="99%">

													<TBODY>
														<TR>
															<TD height=4 vAlign=top width=4>
																<IMG src="picture/files/line1.gif" width=4 height=4>
															</TD>
															<TD background=picture/files/line3.gif></TD>
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



				<TR>
					<TD
						style="PADDING-BOTTOM: 3px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
						vAlign=top align=middle>
						<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" height=32>
							<TBODY>
								<TR>
									<TD height=6 background=picture/files/bgbg2.jpg width=180
										align=middle useMap="#faq" border="0">
										<font color=#ffffff style="font-family: 楷体" size="2">安全购物保证</font>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" height=27>
							<TBODY>



								<TR>
									<TD height=19></TD>
									<TD align=middle>
										<font color=#000000 style="font-family: 黑体" size="1">100%
											安全购物网站<BR>
									</TD>
								</TR>
								<TR>
									<TD height=8 width="1%"></TD>
									<TD width="99%">
									</TD>
								</TR>
								<TR>
									<TD height=4 vAlign=top width=4>
										<IMG src="picture/files/line1.gif" width=4 height=4>
									</TD>
									<TD background=picture/files/line3.gif></TD>
									<TD height=4 vAlign=top width=4>
										<IMG src="picture/files/line2.gif" width=4 height=4>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>
				</TR>

			</TBODY>
			<TBODY></TBODY>
		</TABLE>
	</body>
</html>
