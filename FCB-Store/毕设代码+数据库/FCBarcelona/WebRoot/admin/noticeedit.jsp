<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.model.Notice"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml">
	<HEAD>
		<TITLE></TITLE>

		<LINK href="/FCBarcelona/commfiles/css/Admin.css" rel=stylesheet>
		<SCRIPT language=javascript src="/FCBarcelona/commfiles/js/Admin.js"></SCRIPT>
		<script language=javascript src="/FCBarcelona/fckeditor/fckeditor.js"></script>
		<STYLE type=text/css>
.STYLE1 {
	FONT-WEIGHT: bold;
	COLOR: #0099ff
}
</STYLE>

		<META content="MSHTML 6.00.2900.5726" name=GENERATOR>
	</HEAD>
	<BODY>
		<%
			String id = request.getParameter("id");
			CommonDAO dao = (CommonDAO) Info.getDao(request, "CommonDAO");
			Notice notice = (Notice) dao.findById(id, "Notice");
		%>
		<form action="noticeEdit.action" method=post name="f1"
			onsubmit="return ck()">
			<input type="hidden" id="id" name="id" value="<%=id%>">
			<TABLE cellSpacing=1 cellPadding=3 width="100%" align=center
				bgColor=#dad1e2 border=0>
				<TBODY>
					<TR>
						<TD width="10%" height=24 align="center">
							公告标题
						</TD>
						<TD width="65%" height=24>
							<label>
								<input type="text" id="title" name="title" size="60"
									value="<%=notice.getTitle()%>">
							</label>
						</TD>
					</TR>
					<TR>
						<TD width="10%" height=24 align="center">
							公告内容
						</TD>
						<TD width="65%" height=24>
							<label>
								<textarea rows="" cols="" name="content" id="content"><%=notice.getContent()%></textarea>
							</label>
						</TD>
					</TR>
					<TR>
						<TD colspan="2" height=24 align="center">
							<input type="submit" value="提交">
							<input type="reset" value="重置">
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</form>
	</BODY>
</HTML>
<SCRIPT language=javascript>



		function ck(){
     		if(f1.title.value==""){
     			alert("公告标题不能为空");
     			return false;
     		}if(f1.content.value==""){
     			alert("公告内容不能为空");
     			return false;
     	}
     	}
     	
		<%String suc = (String) request.getAttribute("suc");
			if (suc != null) {%>
		 alert("操作成功");
		 parent.location.replace("/FCBarcelona/admin/notice.jsp");
		 <%}%>
</script>
