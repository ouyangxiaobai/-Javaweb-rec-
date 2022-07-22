<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%
	CommDAO dao = new CommDAO();
	String zx = request.getParameter("zx");
	if (zx != null)
		session.invalidate();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>大学生求职招聘系统</TITLE>
<LINK rel=stylesheet type=text/css href="style/css.css">

<STYLE type=text/css>
BODY {
	BACKGROUND-IMAGE: none;
	MARGIN: 0px
}
</STYLE>
<LINK rel=stylesheet type=text/css href="jsp_qzzp_sys_files/style.css">
<STYLE type=text/css>
.STYLE3 {
	COLOR: #333333;
	FONT-SIZE: 12px
}

A:link {
	TEXT-DECORATION: none
}

A:visited {
	TEXT-DECORATION: none
}

A:hover {
	TEXT-DECORATION: none
}

A:active {
	TEXT-DECORATION: none
}
</STYLE>

<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META name=GENERATOR content="MSHTML 8.00.6001.19222">
</HEAD>
<BODY>
	<TABLE border=0 cellSpacing=0 cellPadding=0 width=990 align=center>
		<TBODY>
			<TR>
				<TD background=jsp_qzzp_sys_files/bj.jpg align=middle>
					<TABLE border=0 cellSpacing=0 cellPadding=0 width=800>
						<TBODY>







							<jsp:include page="top.jsp"></jsp:include>








							<TR>
								<TD vAlign=top>
									<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
										<TBODY>
											<TR>






												<jsp:include page="left.jsp"></jsp:include>









												<TD>&nbsp;</TD>
												<TD vAlign=top width=390>
													<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
														<TBODY>
															<TR>
																<TD background="jsp_qzzp_sys_files/index_jj.jpg"
																	height="45" align="left">
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	<strong><font color="#4A91CF">系统简介</font></strong>
																</TD>
															</TR>
															<TR>
																<TD>
																	<TABLE border=0 cellSpacing=0 cellPadding=0
																		width="100%">
																		<TBODY>
																			<TR>
																				<TD width=8 height="143"><IMG
																					src="jsp_qzzp_sys_files/index_jjz.jpg" width=8
																					height=143></TD>
																				<TD vAlign=top
																					background=jsp_qzzp_sys_files/index_jjzbj.jpg
																					align=middle>
																					<TABLE border=0 cellSpacing=0 cellPadding=0
																						width="100%">
																						<TBODY>
																							<TR>
																								<TD vAlign=top align=left>
																									<%
																										HashMap jjmap = dao.select("select * from zdatadic where id='2'").get(0);
																										out.print(Info.subStr(Info.filterStrIgnoreCase(jjmap.get("content").toString(), "<", ">"), 335));
																									%>
																								</TD>
																							</TR>
																						</TBODY>
																					</TABLE>
																				</TD>
																				<TD width=8><IMG
																					src="jsp_qzzp_sys_files/index_jjy.jpg" width=8
																					height=143></TD>
																			</TR>
																		</TBODY>
																	</TABLE>
																</TD>
															</TR>
															<TR>
																<TD><img src="jsp_qzzp_sys_files/index_jjd.jpg"
																	width=390 height=12></TD>
															</TR>
															<TR>
																<TD height=10></TD>
															</TR>
															<TR>
																<TD height="32"
																	background="jsp_qzzp_sys_files/index_xw.jpg" align="left">

																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font
																		color="white">最新招聘信息</font></strong>
																</TD>
															</TR>
															<TR>
																<TD height="5"></TD>
															</TR>
															<TR>
																<TD>
																	<TABLE border=0 cellSpacing=0 cellPadding=0 width="97%"
																		align=right>
																		<TBODY>



																			<%
																				List<HashMap> list = dao.select("select * from zpinfo  order by id desc", 1, 4);
																				for (HashMap m : list) {
																			%>
																			<TR>

																				<TD width="85%" height="19" align=left vAlign=center
																					class=css><a
																					href="zxiang.jsp?id=<%=m.get("id")%>"><%=Info.subStr(m.get("title").toString(), 19)%></a>

																					&nbsp;&nbsp; <%=m.get("zprs")%></TD>
																			</TR>
																			<TR>
																				<TD height="23" align=left vAlign=center class=css>
																					<font color="orange"> 类别:<%=m.get("infotype")%>
																						&nbsp; 学历要求:<%=m.get("xl")%> &nbsp; 发布时间:<%=m.get("savetime")%>

																				</font>
																				</TD>
																			</TR>





																			<%
																				}
																			%>
																		</TBODY>
																	</TABLE>
																</TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
												<TD>&nbsp;</TD>
												<TD vAlign=top width=200>
													<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
														<TBODY>
															<TR>
																<TD height="36"
																	background="jsp_qzzp_sys_files/index_ylm.jpg"><a
																	href="wzgg.jsp"> <strong style="margin-left: 20px"><font
																			color="white">职场资讯</font></strong>
																</a></TD>
															</TR>
															<TR>
																<TD height=162 align=left style="padding: 5px">

																	<TABLE border=0 cellSpacing=0 cellPadding=0 width=177>
																		<TBODY>

																			<%
																				for (HashMap ysmap : dao.select("select * from zdatadic where datatype='职场资讯' order by id desc", 1, 5)) {
																			%>
																			<TR>
																				<TD align=left height="42"><a
																					href="/jsp_qzzp_sys/gxiang.jsp?id=<%=ysmap.get("id")%>">
																						<%=Info.subStr(ysmap.get("ptitle").toString(), 23)%>
																				</a></TD>
																			</TR>

																			<%
																				}
																			%>




																		</TBODY>
																	</TABLE>




																</TD>
															</TR>
															<TR>
																<TD background="jsp_qzzp_sys_files/index_ylm2.jpg"
																	height="34" align="left">
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font
																		color="white">求职技巧</font></strong>
																</TD>
															</TR>
															<TR>
																<TD background=jsp_qzzp_sys_files/index_ylmbj.jpg
																	align=middle><TABLE border=0 cellSpacing=0
																		cellPadding=0 width=190 bgColor=#ffffff>
																		<TBODY>
																			<TR>
																				<TD height=2 align=middle></TD>
																			</TR>
																			<TR>
																				<TD align=middle>
																					<DIV
																						style="WIDTH: 180px; BACKGROUND: #ffffff; HEIGHT: 202px; OVERFLOW: hidden"
																						id=demo>
																						<DIV id=demo1>
																							<DIV align=center>
																								<TABLE border=0 cellSpacing=0 cellPadding=0
																									width=148>
																									<TBODY>

																										<%
																											for (HashMap ysmap : dao.select("select * from hbnews where infotype='新闻' order by id desc")) {
																										%>
																										<TR>
																											<TD align=left height="42"><a
																												href="/jsp_qzzp_sys/xiang.jsp?id=<%=ysmap.get("id")%>">
																													<%=Info.subStr(ysmap.get("title").toString(), 23)%>
																											</a></TD>
																										</TR>

																										<%
																											}
																										%>




																									</TBODY>
																								</TABLE>
																							</DIV>
																						</DIV>
																						<DIV id=demo2></DIV>
																					</DIV>

																				</TD>
																			</TR>
																			<TR>
																				<TD height=10 align=middle></TD>
																			</TR>
																		</TBODY>
																	</TABLE></TD>
															</TR>
															<TR>
																<TD height=5 background=jsp_qzzp_sys_files/index_ylmbj.jpg
																	align=middle></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>






							<jsp:include page="foot.jsp"></jsp:include>
					</TABLE>
				</TD>
			</TR>
		</TBODY>
	</TABLE>

	<SCRIPT type=text/javascript charset=utf-8
		src="jsp_qzzp_sys_files/2462870.jss"></SCRIPT>


</BODY>
</HTML>

<script language="javascript">
	
<%if (request.getAttribute("error") != null) {%>
	alert("用户名或密码错误");
<%}%>
	
</script>