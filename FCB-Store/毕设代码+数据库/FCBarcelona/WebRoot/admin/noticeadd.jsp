<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		<form action="noticeAdd.action" method=post name="f1"
			onsubmit="return ck()">
			<TABLE cellSpacing=1 cellPadding=3 width="100%" align=center
				bgColor=#dad1e2 border=0>
				<TBODY>
					<TR>
						<TD width="10%" height=24 align="center">
							公告标题
						</TD>
						<TD width="65%" height=24>
							<label>
								<input type="text" id="title" name="title" size="60">
							</label>
						</TD>
					</TR>
					<TR>
						<TD width="10%" height=24 align="center">
							类型
						</TD>
						<TD width="65%" height=24>
							<label>
								<select id="type" name="type">
									<option value="公告">
										公告
									</option>

								</select>
							</label>
						</TD>
					</TR>
					<TR>
						<TD width="10%" height=24 align="center">
							公告内容
						</TD>
						<TD width="65%" height=24>
							<label>
								<textarea rows="" cols="" name="content" id="content"></textarea>
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
     			alert("请输入公告标题");
     			return false;
     		}if(f1.content.value==""){
     			alert("请输入公告内容");
     			return false;
     	}
     	}
		<%
		String suc = (String)request.getAttribute("suc");
		if(suc!=null){%>
		 alert("操作成功");
		 parent.location.replace("/FCBarcelona/admin/notice.jsp");
		 <%}%>
</script>
