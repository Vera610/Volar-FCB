<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.model.Protype"%>
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
		<%CommonDAO dao = (CommonDAO)Info.getDao(request,"CommonDAO"); %>
		<form action="productAdd.action" method=post name="f1"
			onsubmit="return ck()" enctype="multipart/form-data">
			<TABLE cellSpacing=1 cellPadding=3 width="100%" align=center
				bgColor=#dad1e2 border=0>
				<TBODY>
					<TR>
						<TD width="" height=24 align="center">
							商品编号
						</TD>
						<TD width="" height=24>
							<label>
								<input type="text" id="prono" name="prono">*
							</label>
						</TD>
						<TD width="" height=24 align="center">
							商品名称
						</TD>
						<TD width="" height=24>
							<label>
								<input type="text" id="proname" name="proname">*
							</label>
						</TD>
						<TD width="" height=24 align="center">
							图片
						</TD>
						<TD highlight width="" height=24>
							<label>
								<input type="file" id="upFile" name="upFile">*
							</label>
						</TD>
					</TR>

					<TR>
						<TD width="" height=24 align="center">
							价格
						</TD>
						<TD highlight width="" height=24>
							<label>
								<input type="text" id="price" name="price"
									onkeyup="value=value.replace(/[^\d]/g,'') "
									onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">*
							</label>
						</TD>
						<TD width="" height=24 align="center">
							商品类别
						</TD>
						<TD highlight width="" height=24>
							<label>
								<select id="protype" name="protype">
									<%ArrayList<Protype> protypelist = (ArrayList<Protype>)dao.findByHql(" from Protype where delstatus=0 order by id desc"); 
      for(Protype protype:protypelist){
      %>
									<option value="<%=protype.getId() %>"><%=protype.getTypename() %></option>
									<%} %>
								</select>*
							</label>
						</TD>
						<TD width="" height=24 align="center">
							品牌
						</TD>
						<TD highlight width="" height=24>
							<label>
								<input type="text" id="field1" name="field1">*
							</label>
						</TD>
					</TR>



			
					<TR>
						<TD colspan="6" height=24 align="center">
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
     		if(f1.prono.value==""){
     			alert("请输入商品编号");
     			return false;
     		}if(f1.proname.value==""){
     			alert("请输入商品名称");
     			return false;
     		}if(f1.upFile.value==""){
     			alert("请添加图片");
     			return false;
     		}if(f1.price.value==""){
     			alert("请输入价格");
     			return false;
     		}if(f1.protype.value==""){
     			alert("请选择商品类别");
     			return false;
     		}if(f1.field1.value==""){
     			alert("请输入品牌"); 
     			return false;
     		}
     	}
     	
		<%
		String suc = (String)request.getAttribute("suc");
		if(suc!=null){%>
		 alert("操作成功");
		 parent.location.replace("/FCBarcelona/admin/product.jsp");
		 <%}%>
</script>
