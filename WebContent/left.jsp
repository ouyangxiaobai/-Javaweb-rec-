<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0031)http://www.qyyqyj.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>大学生求职招聘系统</TITLE>
<LINK rel=stylesheet type=text/css 
href="style/css.css">

<STYLE type=text/css>BODY {
	BACKGROUND-IMAGE: none; MARGIN: 0px
}
</STYLE>
<LINK rel=stylesheet type=text/css href="jsp_qzzp_sys_files/style.css">
<STYLE type=text/css>.STYLE3 {
	COLOR: #333333; FONT-SIZE: 12px
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
<META name=GENERATOR content="MSHTML 8.00.6001.19222"></HEAD>
<BODY>
<TD vAlign=top width=196>
                  <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                    <TBODY>
                    <TR>
                      <TD background="jsp_qzzp_sys_files/index_zlm.jpg" height="35" align="left">
                      <font color="white"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户登录</strong></font></TD></TR>
                    <TR>
                      <TD background=jsp_qzzp_sys_files/index_zlmbj.jpg 
                        align=middle>
                        
                          <form name="form1" method="post" action="/jsp_qzzp_sys/jsp_qzzp_sys?ac=mlogin">
                        <TABLE border=0 cellSpacing=0 cellPadding=0 
                        width="90%" align=center>
                        
                          <TBODY>
                          <TR>
                            <TD class=css height=10 
                            background=jsp_qzzp_sys_files/index_dx.jpg 
                          align=left></TD></TR>
                        
                        
                        
                          
                          <%
                          String t = request.getParameter("t");
                          if(t!=null)
                          {
                          session.removeAttribute("admin");
                          %>
                          <script language=javascript>
                          window.location.replace("/jsp_qzzp_sys");
                          </script>
                          <%
                          }
                           %>
                          
                        
                        
                        
                        <%
                        HashMap umap = (HashMap)Info.getUser(request);
                        if(umap==null){
                         %>
                          <TR>
                            <TD class=css height=33 
                              align=center>
                              
                              
                              用户名 :  <input type="text" name="uname" size="12" style="height:13px;width: 90px">
                               
                                                            </TD>
                          </TR>
                          <TR>
                            <TD class=css height=33 
                              align=center>密 &nbsp;码 :
                              <input type="password" name="upass"  size="12" style="height:13px;width: 90px"></TD>
                          </TR>
                          
                          <TR>
                            <TD class=css height=33 
                              align=center><input type="submit" value="登录" style="border:2px" />
&nbsp;&nbsp;&nbsp;
<input type="reset" value="重置" style="border:2px" /></TD>
                          </TR>
                          <%}else{ %>
                           <TR>
                            <TD class=css height=33 
                              align=center>
                              
                              <br />
                              
                             欢迎你回来 : <%=umap.get("uname") %>
                             
                             <br /><br />
                             
                             <a href="/jsp_qzzp_sys/admin/main.jsp">去信息服务中心</a>
                             
                             &nbsp;&nbsp;
                             
                             <a href="index.jsp?t=t">退出</a>
                             
                              <br /><br /> 
                                                            </TD>
                          </TR>
                          
                          <%} %>
                          
                          <TR>
                            <TD class=css height=10 
                            background=jsp_qzzp_sys_files/index_dx.jpg 
                          align=left></TD></TR></TBODY>  
                            </TABLE>
                            </form>
                            
                            
                            
                            
                            </TD></TR>
                  
                  
                  
                  
                  
                  
                  
                  
                  <!-- 
                    <TR>
                      <TD align=left height="41" background="jsp_qzzp_sys_files/index_zlm1.jpg" >
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="white">联系我们</font></strong>
                      
                      </TD></TR>
                    <TR>
                      <TD background=jsp_qzzp_sys_files/index_zlmbj1.jpg 
                        align=middle><TABLE border=0 cellSpacing=0 cellPadding=0 
                        width=186 bgColor=#ffffff>
                          <TBODY>
                          <TR>
                            <TD height=2></TD></TR>
                          <TR>
                            <TD align=left style="padding: 5px" height="188">
                              
                              <%
                              //CommDAO dao = new CommDAO();
                             // HashMap lxmap = dao.select("select * from zdatadic where id=3").get(0);
                             // out.print(Info.subStr(lxmap.get("content").toString(),140) );
                               %>
                              
                              </TD></TR>
                          </TBODY></TABLE></TD></TR>
                          
                          -->
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                    <TR>
                      <TD height=62 background=jsp_qzzp_sys_files/index_zlmbj1.jpg 
                      align=middle>
                      
                      <div style="position: absolute; line-height:50px;left:340px; FONT-FAMILY:  "><font color="orange" size="4"  ><strong> </strong></font> </div> 
                      
                      <A 
                        href="messages.jsp" ><IMG border=0 
                        src="jsp_qzzp_sys_files/index_zlm2.jpg" width=186 
                        height=50></A></TD></TR></TBODY></TABLE></TD>


</BODY></HTML>

