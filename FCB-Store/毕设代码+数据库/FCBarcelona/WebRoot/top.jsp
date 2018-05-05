<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.model.Protype"%>
<%@page import="com.dao.CommonDAO"%>
<%@page import="com.util.Info"%>
<%@page import="com.model.Sysuser"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'top.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<LINK rel=stylesheet type=text/css href="files/style.css">
		<script type="text/javascript">
	function set_homepage(a, url) {
		var tip = '您的浏览器不支持此操作\n请使用浏览器的“选项”或“设置”等功能设置首页';
		if (/360se/i.test(window.navigator.userAgent)) {
			alert(tip);
			return false;
		}
		url = url || a.href;
		try {
			a.style.behavior = 'url(#default#homepage)';
			a.setHomePage(url);
		} catch (e) {
			alert(tip);
		}
		return false;
	}
</script>
		<script src="http://www.js-css.cn/jscode/jquery.min.js"
			type="text/javascript"></script>
		<STYLE type=text/css>
.STYLE3 {
	COLOR: #ffffff
}

html,body {
	height: 100%
}

html,body,form,input,span,p,img,ul,ol,li,dl,dt,dd {
	margin: 0;
	padding: 0;
	border: 0
}

ul,ol {
	list-style: none
}

body {
	font: 12px/ 1.5 arial, sans-serif;
	text-align: center
}

a {
	text-decoration: none
}

a:hover {
	text-decoration: underline
}

.page-wrap {
	position: relative;
	min-height: 100%;
	_height: 100%
}

#hd {
	min-width: 700px;
	height: 36px;
	line-height: 36px;
	padding: 0 20px 0 0;
	text-align: right
}

#hd a {
	color: #888;
	text-decoration: none
}

#hd a:hover {
	color: #b9b9b9
}

#hd .hd-sep {
	margin: 0 7px;
	color: #eaeaea
}

#main {
	width: 700px;
	margin: 80px auto 0;
	padding-bottom: 100px
}

#logo {
	margin: 0 auto 55px;
	position: relative;
	height: 43px;
	left: -10px
}

#search-box {
	padding-left: 40px;
	text-align: left
}

#search-keyword-container {
	width: 500px;
	height: 34px;
	display: inline-block;
	border: 1px solid #b9b9b9;
	position: relative;
	z-index: 1
}

#suggest-align {
	height: 32px;
	position: relative
}

#search-keyword {
	width: 487px;
	height: 34px;
	padding-left: 8px;
	padding-right: 5px;
	outline: 0;
	background: #FFF;
	font-size: 16px;
	line-height: 34px;
	vertical-align: top
}

#search-button {
	width: 100px;
	height: 36px;
	_height: 38px;
	display: inline-block;
	margin-left: 5px;
	outline: 0;
	background: #666;
	color: #fff;
	font: bold 16px arial, sans-serif;
	vertical-align: top;
	cursor: pointer
}

#search-button.hover a {
	color: #FF0
}

#footer {
	width: 100%;
	height: 36px;
	line-height: 36px;
	text-align: left;
	color: #eaeaea;
	position: absolute;
	left: 0;
	bottom: 0;
	background: #000;
	filter: alpha(opacity = 50);
	-moz-opacity: .5;
	-khtml-opacity: .5;
	opacity: .5
}

#footer p {
	margin: 0 20px
}

#footer a {
	color: #959595;
	margin: 0 5px 0 3px
}

#footer span {
	float: right;
	font-style: normal;
	color: #959595
}

.ac_bgIframe {
	position: absolute;
	top: 0;
	left: 0;
	z-index: -1;
	width: expression(this.parentNode.offsetWidth);
	height: 2000px
}

#so-nav-tabs {
	font-size: 14px;
	text-align: left;
	padding-left: 50px;
	position: relative;
	z-index: 999
}

#so-nav-tabs a,#so-nav-tabs strong {
	height: 31px;
	line-height: 31px;
	display: inline-block;
	margin-right: 18px; *
	margin-right: 15px;
	color: #333
}

#so-nav-tabs a:hover {
	color: #000;
	text-decoration: none
}

#so-nav-tabs strong {
	color: #666
}

#so-nav-more {
	width: 50px;
	position: absolute;
	z-index: 0;
	top: 30px;
	right: 156px;
	margin-left: 370px; *
	margin-left: -70px;
	padding: 0;
	line-height: 30px;
	text-align: left;
	border: 1px #dedede solid;
	background: #fff;
	list-style: none;
	display: none
}

#so-nav-more a {
	width: 100%;
	display: block;
	margin: 0;
	text-indent: 10px
}

#so-nav-more a:hover {
	background: #f1f1f1
}

#sug-arrow.open {
	background-position: 8px -30px
}

#moquu_top,#moquu_wxin,#moquu_wshare,#moquu_wmaps {
	z-index: 2;
	width: 50px;
	height: 50px;
	right: 10px;
	position: fixed;
	cursor: pointer;
	_position: absolute;
	_bottom: auto;
	_top: expression(eval(document.documentElement.scrollTop +
		document.documentElement.clientHeight-this.offsetHeight- ( parseInt(this.currentStyle.marginTop
		, 10) || 0 ) -( parseInt(this.currentStyle.marginBottom, 10) || 0 ) )
		)
}

#moquu_wxin {
	top: 360px;
	_margin-top: 360px
}

#moquu_wxin a {
	background: url(moquu/img/sbtn.png) 0 -0px;
	right: 0;
	float: left;
	width: 50px;
	height: 50px;
	text-indent: -9999px
}

#moquu_wxin a:hover {
	background: url(moquu/img/sbtn.png) -50px -0px
}

#moquu_wshare {
	top: 412px;
	_margin-top: 412px
}

#moquu_wshare a {
	background: url(moquu/img/sbtn.png) 0 -50px;
	width: 50px;
	height: 50px;
	right: 0;
	float: left;
	text-indent: -9999px
}

#moquu_wshare a:hover {
	background: url(moquu/img/sbtn.png) -50px -50px
}

#moquu_wmaps {
	top: 464px;
	_margin-top: 464px
}

#moquu_wmaps a {
	background: url(moquu/img/sbtn.png) 0 -150px;
	width: 50px;
	height: 50px;
	right: 0;
	float: left;
	text-indent: -9999px
}

#moquu_wmaps a:hover {
	background: url(moquu/img/sbtn.png) -50px -150px
}

#moquu_top {
	top: 516px;
	_margin-top: 516px;
	background: url(moquu/img/sbtn.png) 0 -101px;
	width: 50px;
	height: 50px
}

#moquu_top:hover {
	background: url(moquu/img/sbtn.png) -50px -101px
}

.moquu_wxin,.moquu_wshare {
	position: relative;
	z-index: 2
}

.moquu_wxin a:hover .moquu_wxinh,.moquu_wshare a:hover .moquu_wshareh {
	display: block
}

.moquu_wxin .moquu_wxinh {
	position: absolute;
	display: none;
	left: -280px;
	top: -200px;
	width: 275px;
	height: 355px;
	background: url(moquu/img/moquu_ico.png) -1px -482px no-repeat
}

.moquu_wshare .moquu_wshareh {
	position: absolute;
	display: none;
	left: -280px;
	top: -200px;
	width: 275px;
	height: 360px;
	background: url(moquu/img/moquu_wshare.png) no-repeat
}

@media screen and (max-width:2560px) {
	body {
		background: url(moquu/img/2.jpg);
		font: 12px/ 1.5 arial, sans-serif;
		text-align: center
	}
}

@media screen and (max-width:1920px) {
	body {
		background: url(moquu/img/3.jpg);
		font: 12px/ 1.5 arial, sans-serif;
		text-align: center
	}
}

@media screen and (max-width:1600px) {
	body {
		background: url(moquu/img/4.jpg);
		font: 12px/ 1.5 arial, sans-serif;
		text-align: center
	}
}

@media screen and (max-width:1200px) {
	body {
		font: 12px/ 1.5 arial, sans-serif;
		text-align: center
	}
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
		<script language="javascript">
	function show(aa) {
		document.all.div4.style.display = "none";
		aa.style.display = "block";

	}
	function cleardiv(aa) {
		document.all.div4.style.display = "none";
		aa.style.display = "none";
	}
</script>
	</head>
	<%CommonDAO dao = (CommonDAO)Info.getDao(request,"CommonDAO"); %>
	<%Sysuser member = (Sysuser)session.getAttribute("member");   %>
	<body>

		<TABLE border=0 cellSpacing=0 cellPadding=0 width=100% align=center
			height=100>
			<TBODY>
				<TR>
					<TD width=100%>
						  
						<img src="picture/files/logo.jpg" width=100% height="120">
					</TD>
				</TR>
			</TBODY>
		</TABLE>

		<TABLE border=0 cellSpacing=0 cellPadding=0 width=100%>
			<TBODY>


				<TD vAlign=top>
					<form action="/FCBarcelona/search.jsp" method="post"
						autocomplete="off">
						<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%"
							background=picture/files/bgtop.gif height="36">
							<TBODY>
								<TR>
									<TD vAlign=center width="75%">

										<TABLE class=9 border=0 cellSpacing=0 cellPadding=0
											width="100%" align=center>
											<TBODY>
												<TR>
													<TD class=b vAlign=top width="100%" align=center>
														<DIV align=center>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<A href="index.jsp" class="menu"
																onmouseover=
	cleardiv(div4);
><FONT color=#ffffff
																size="4" style="font-family: 楷体"><b>首页
															</FONT>
															</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

															<A id="nav4" class="menu" onmouseover=
	show(div4);
><FONT
																color=#ffffff size="4" style="font-family: 楷体"><b>商品目录
															</FONT>
															</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<A href="/FCBarcelona/producttj.jsp"
																onmouseover=
	cleardiv(div4);
><FONT color=#ffffff
																size="4" style="font-family: 楷体"><b>特价商品
															</FONT>
															</A>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<A href="/FCBarcelona/notices.jsp"
																onmouseover=
	cleardiv(div4);
><FONT color=#ffffff
																size="4" style="font-family: 楷体"><b>新闻公告
															</FONT>
															</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<A href="/FCBarcelona/msg.jsp"
																onmouseover=
	cleardiv(div4);
><FONT color=#ffffff
																size="4" style="font-family: 楷体"><b>留言板
															</FONT>
															</A>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															&nbsp;&nbsp;&nbsp;&nbsp;
															<input type="text" id="proname" name="proname"
																onfocus='loadXMLDoc(this.value)' size="20" />
															&nbsp;&nbsp; &nbsp;
															<b><input style="font-family: 黑体" type="submit"
																	value="  搜索  ">
															</b>&nbsp;&nbsp;
														</DIV>
													</TD>
												</TR>
											</TBODY>
										</TABLE>

									</TD>
									<TD width="6%">
									</TD>
								</TR>
								<TR>
									<TD height=4 vAlign=center colSpan=3></TD>
								</TR>
							</TBODY>
						</TABLE>
					</form>
					<table height="20" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<DIV style="PADDING-RIGHT: 10px; DISPLAY: none" id="div4">
									<%ArrayList<Protype> protypelist = (ArrayList<Protype>)dao.findByHql(" from Protype where delstatus=0 order by id desc"); 
                  		for(Protype protype:protypelist){
                  		%>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<img src="picture/files/logo7.jpg" width=16 height="13">
									</font><A class="navm"
										href="/FCBarcelona/search.jsp?protype=<%=protype.getId() %>"><font
										color=#43118e style="font-family: 楷体" size="3"><b><%=protype.getTypename() %></b>
									</font> <%} %>
									
								</DIV>
							</td>
						</tr>
					</table>
				</TD>



				<TABLE border=0 cellSpacing=0 cellPadding=0 width=100% align=center>
					<tr>
						<td>
							<DIV align=right>
								<%if(member==null){ %>
								<A href="/FCBarcelona/login.jsp"><FONT color=#000000
									style="font-family: 黑体" size="2"><img
											src="picture/files/logo6.jpg" width=13 height="11">登录</FONT>
								</A> &nbsp;&nbsp;&nbsp;
								<A href="/FCBarcelona/register.jsp"><FONT color=#000000
									style="font-family: 黑体" size="2"><img
											src="picture/files/logo6.jpg" width=13 height="11">注册</FONT>
								</A> &nbsp;&nbsp;&nbsp;
								<%}else{ %>
								<A href="/FCBarcelona/orders.jsp"><FONT color=#000000
									style="font-family: 黑体" size="2"><img
											src="picture/files/logo6.jpg" width=13 height="11">我的订单</FONT>
								</A> &nbsp;&nbsp;&nbsp;
								<A href="/FCBarcelona/car.jsp"><FONT color=#000000
									style="font-family: 黑体" size="2"><img
											src="picture/files/logo6.jpg" width=13 height="11">购物车</FONT>
								</A> &nbsp;&nbsp;&nbsp;

								

								<A href="/FCBarcelona/memberinfo.jsp"><FONT color=#000000
									style="font-family: 黑体" size="2"><img
											src="picture/files/logo6.jpg" width=13 height="11">个人中心</FONT>
								</A> &nbsp;&nbsp;&nbsp;
								<A href="memberExit.action"><FONT color=#000000
									style="font-family: 黑体" size="2"><img
											src="picture/files/logo6.jpg" width=13 height="11">注销</FONT>
								</A> &nbsp;&nbsp;&nbsp;
								<%} %>
							</DIV>
						</td>
					</tr>
				</table>


				<script type="text/javascript">
	function mSift_SeekTp(oObj, nDire) {
		var nPosition = null;
		if (oObj.getBoundingClientRect && !document.all) {
			var oDc = document.documentElement;
			switch (nDire) {
			case 0:
				return oObj.getBoundingClientRect().top + oDc.scrollTop;
			case 1:
				return oObj.getBoundingClientRect().right + oDc.scrollLeft;
			case 2:
				return oObj.getBoundingClientRect().bottom + oDc.scrollTop;
			case 3:
				return oObj.getBoundingClientRect().left + oDc.scrollLeft;
			}
		} else {
			if (nDire == 1 || nDire == 3) {
				nPosition = oObj.offsetLeft;
			} else {
				nPosition = oObj.offsetTop;
			}
			if (arguments[arguments.length - 1] != 0) {
				if (nDire == 1) {
					nPosition += oObj.offsetWidth;
				} else if (nDire == 2) {
					nPosition += oObj.offsetHeight;
				}
			}
			if (oObj.offsetParent != null) {
				nPosition += mSift_SeekTp(oObj.offsetParent, nDire, 0);
			}
			return nPosition;
		}
	}
	function mSift(cVarName, nMax) {
		this.oo = cVarName;
		this.Max = nMax;
	}
	mSift.prototype = {
		Varsion : 'v2010.10.29 by AngusYoung | mrxcool.com',
		Target : Object,
		TgList : Object,
		Listeners : null,
		SelIndex : 0,
		Data : [],
		ReData : [],
		Create : function(oObj) {
			var _this = this;
			var oUL = document.createElement('ul');
			oUL.style.display = 'none';
			oObj.parentNode.insertBefore(oUL, oObj);
			_this.TgList = oUL;
			oObj.onkeydown = oObj.onclick = function(e) {
				_this.Listen(this, e);
			};
			oObj.onblur = function() {
				setTimeout(function() {
					_this.Clear();
				}, 100);
			};
		},
		Complete : function() {
		},
		Select : function() {
			var _this = this;
			if (_this.ReData.length > 0) {
				_this.Target.value = _this.ReData[_this.SelIndex].replace(
						/\*/g, '*').replace(/\|/g, '|');
				_this.Clear();
			}
			setTimeout(function() {
				_this.Target.focus();
			}, 10);
			_this.Complete();
		},
		Listen : function(oObj) {
			var _this = this;
			_this.Target = oObj;
			var e = arguments[arguments.length - 1];
			var ev = window.event || e;
			switch (ev.keyCode) {
			case 9://TAB  
				return;
			case 13://ENTER  
				_this.Target.blur();
				_this.Select();
				return;
			case 38://UP  
				_this.SelIndex = _this.SelIndex > 0 ? _this.SelIndex - 1
						: _this.ReData.length - 1;
				break;
			case 40://DOWN  
				_this.SelIndex = _this.SelIndex < _this.ReData.length - 1 ? _this.SelIndex + 1
						: 0;
				break;
			default:
				_this.SelIndex = 0;
			}
			if (_this.Listeners) {
				clearInterval(_this.Listeners);
			}
			_this.Listeners = setInterval(function() {
				_this.Get();
			}, 10);
		},
		Get : function() {
			var _this = this;
			if (_this.Target.value == '') {
				_this.Clear();
				return;
			}
			if (_this.Listeners) {
				clearInterval(_this.Listeners);
			}
			;
			_this.ReData = [];
			var cResult = '';
			for ( var i = 0; i < _this.Data.length; i++) {
				if (_this.Data[i].toLowerCase().indexOf(
						_this.Target.value.toLowerCase()) >= 0) {
					_this.ReData.push(_this.Data[i]);
					if (_this.ReData.length == _this.Max) {
						break;
					}
				}
			}
			var cRegPattern = _this.Target.value.replace(/\*/g, '*');
			cRegPattern = cRegPattern.replace(/\|/g, '|');
			cRegPattern = cRegPattern.replace(/\+/g, '\\+');
			cRegPattern = cRegPattern.replace(/\./g, '\\.');
			cRegPattern = cRegPattern.replace(/\?/g, '\\?');
			cRegPattern = cRegPattern.replace(/\^/g, '\\^');
			cRegPattern = cRegPattern.replace(/\$/g, '\\$');
			cRegPattern = cRegPattern.replace(/\(/g, '\\(');
			cRegPattern = cRegPattern.replace(/\)/g, '\\)');
			cRegPattern = cRegPattern.replace(/\[/g, '\\[');
			cRegPattern = cRegPattern.replace(/\]/g, '\\]');
			cRegPattern = cRegPattern.replace(/\\/g, '\\\\');
			var cRegEx = new RegExp(cRegPattern, 'i');
			for ( var i = 0; i < _this.ReData.length; i++) {
				if (_this.Target.value.indexOf('*') >= 0) {
					_this.ReData[i] = _this.ReData[i].replace(/\*/g, '*');
				}
				if (_this.Target.value.indexOf('|') >= 0) {
					_this.ReData[i] = _this.ReData[i].replace(/\|/g, '|');
				}
				cResult += '<li style="padding:0 5px;line-height:20px;cursor:default;" onmouseover="'
						+ _this.oo
						+ '.ChangeOn(this);'
						+ _this.oo
						+ '.SelIndex='
						+ i
						+ ';" onmousedown="'
						+ _this.oo
						+ '.Select();">'
						+ _this.ReData[i]
								.replace(
										cRegEx,
										function(s) {
											return '<span style="background:#ff9;font-weight:bold;font-style:normal;color:#e60;">' + s + '</span>';
										});
				+'</li>';
			}
			if (cResult == '') {
				_this.Clear();
			} else {
				_this.TgList.innerHTML = cResult;
				_this.TgList.style.cssText = 'display:block;position:absolute;background:#fff;border:#610aa5 solid 1px;margin:-1px 0 0;padding: 5px;list-style:none;font-size:12px;';
				_this.TgList.style.top = mSift_SeekTp(_this.Target, 2) + 'px';
				_this.TgList.style.left = mSift_SeekTp(_this.Target, 3) + 'px';
				_this.TgList.style.width = _this.Target.offsetWidth - 12 + 'px';
			}
			var oLi = _this.TgList.getElementsByTagName('li');
			if (oLi.length > 0) {
				oLi[_this.SelIndex].style.cssText = 'background:#53138e;padding:0 5px;line-height:20px;cursor:default;color:#fff;';
			}
		},
		ChangeOn : function(oObj) {
			var oLi = this.TgList.getElementsByTagName('li');
			for ( var i = 0; i < oLi.length; i++) {
				oLi[i].style.cssText = 'padding:0 5px;line-height:20px;cursor:default;';
			}
			oObj.style.cssText = 'background:#53138e;padding:0 5px;line-height:20px;cursor:default;color:#fff;';
		},
		Clear : function() {
			var _this = this;
			if (_this.TgList) {
				_this.TgList.style.display = 'none';
				_this.ReData = [];
				_this.SelIndex = 0;
			}
		}
	}
</script>

				<script type="text/javascript">  
    //建立实例，第一个参数是实例对象的名称，第二个是最多显示的数量  
    var oo = new mSift('oo', 20);  
    //获取数据  
    function loadXMLDoc(str) {  
        var xmlhttp;  
        if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari  
            xmlhttp = new XMLHttpRequest();  
        } else {// code for IE6, IE5  
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");  
        }  
        xmlhttp.onreadystatechange = function() {  
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {  
                oo.Data = unescape(xmlhttp.responseText).split("$");  
            }  
        };  
        xmlhttp.open("POST", "productSearch.action?proname="+encodeURI(str), true);  
        xmlhttp.send();  
    }  
        //指定文本框对象建立特效  
        oo.Create(document.getElementById('proname'));  
    </script>
	</body>
</html>
