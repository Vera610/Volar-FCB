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
		<%
			//String fatherid = request.getParameter("fatherid");
		%>
		<form action="typeAdd.action" method=post name="f1"
			onsubmit="return ck()">
			
			
			<TABLE cellSpacing=1 cellPadding=3 width="100%" align=center
				bgColor=#ffffff border=0>
				<TBODY>
					<TR>
						<TD width="20%" height=24 align="center">
							类别名称
						</TD>
						<TD highlight width="65%" height=24>
							<label>
								<input type="text" id="typename" name="typename" size="40">
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
     		if(f1.typename.value==""){
     			alert("类别名称不能为空");
     			return false;
     		}
     	}
     	
		<%String suc = (String) request.getAttribute("suc");
			if (suc != null) {%>
		 alert("操作成功");
		 parent.location.replace("/FCBarcelona/admin/protype.jsp");
		 <%}%>
</script>
