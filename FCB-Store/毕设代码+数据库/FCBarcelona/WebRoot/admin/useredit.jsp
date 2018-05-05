<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.model.Sysuser"%>
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
			CommonDAO dao = (CommonDAO) Info.getDao(request, "CommonDAO");
		%>
		<%
			String id = request.getParameter("id");
			Sysuser sysuser = (Sysuser) dao.findById(id, "Sysuser");
		%>
		<form action="userEdit.action" method=post name="f1"
			onsubmit="return ck()">
			<input type="hidden" id="id" name="id" value="<%=sysuser.getId()%>">
			<TABLE cellSpacing=1 cellPadding=3 width="100%" align=center
				bgColor=#dad1e2 border=0>
				<TBODY>
					<TR>
						<TD width="20%" height=24 align="center">
							用户名
						</TD>
						<TD highlight width="65%" height=24>
							<label>
								<%=sysuser.getUname()%>
							</label>
						</TD>
					</TR>
					
					<TR>
						<TD width="20%" height=24 align="center">
							姓名
						</TD>
						<TD highlight width="65%" height=24>
							<label>
								<input type="text" id="realname" name="realname"
									value="<%=sysuser.getRealname()%>">
								*
							</label>
						</TD>
					</TR>
					<tr>
						<td width="20%" height=24 align="center">
							性别
						</td>
						<td highlight>
							<select id="sex" name="sex">
								<option value="男"
									<%if (sysuser.getSex().equals("男")) {
				out.print("selected==selected");
			}%>>
									男
								</option>
								<option value="女"
									<%if (sysuser.getSex().equals("女")) {
				out.print("selected==selected");
			}%>>
									女
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td width="20%" height=24 align="center"> 
							出生日期<br></td>
						<td highlight>
							<input type="text" id="birth" name="birth"
								value="<%=sysuser.getBirth()%>">
						</td>
					</tr>
					<tr>
						<td width="20%" height=24 align="center">
							电话
						</td>
						<td highlight>
							<input type="text" id="tel" name="tel"
								value="<%=sysuser.getTel()%>">
							*
						</td>
					</tr>
					<tr>
						<td width="20%" height=24 align="center">
							地址
						</td>
						<td highlight>
							<input type="text" id="addr" name="addr" size="60"
								value="<%=sysuser.getAddr()%>">
						</td>
					</tr>
					<TR>
						<TD width="20%" height=24 align="center"> 
							修改密码 
						</TD>
						<TD highlight width="65%" height=24>
							<label>
								<input type=password id="upass" name="upass">
								
							</label>
						</TD>
					</TR>
					<TR>
						<TD width="20%" height=24 align="center">
							重复新密码
						</TD>
						<TD highlight width="65%" height=24>
							<label>
								<input type=password id="upass1" name="upass1">
								
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
    		if(f1.realname.value==""){
    			alert("请输入姓名");
    			return false;
    		}if(f1.tel.value==""){
    			alert("请输入电话");
    			return false;
    		}
    	}
     	
		<%String suc = (String) request.getAttribute("suc");
			if (suc != null) {%>
		 alert("操作成功");
		 parent.location.replace("/FCBarcelona/admin/usergl.jsp");
		 <%}%>
</script>
