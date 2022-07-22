<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
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
<TABLE border=0 cellSpacing=0 cellPadding=0 width=1002 align=center>
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
                
                
                
                
                
                
                
                
                
                <TD valign="top">
                
                
                <form action="/jsp_qzzp_sys/qy.jsp" onSubmit="return check();" method="post" name="f1"   >
                <TABLE 
                          width="100%" border=0 align="center" cellPadding=0 cellSpacing=0>
                  <TBODY>
                    <TR>
                      <TD><TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                          <TBODY>
                            <TR>
                              <TD height=10 colSpan=2></TD>
                            </TR>
                            <TR>
                              <TD width=228 background="jsp_qzzp_sys_files/ny_y3.jpg" height="37" align="left">
                              
                             <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 企业信息</strong></TD>
                              <TD 
                                background=jsp_qzzp_sys_files/ny_ybj.jpg>&nbsp;</TD>
                            </TR>
                          </TBODY>
                      </TABLE></TD>
                    </TR>
                    <TR>
                      <TD height=10>&nbsp;</TD>
                    </TR>
                    <TR>
                      <TD class=css vAlign=top align=left><TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                          <TBODY>
                          
                          
                          
                          
                          
                          
                          <TR>
                              <TD class=css align=left height="76"> 
                              
                              <%
                              String tname = request.getParameter("tname")==null?"":request.getParameter("tname");
                               
                              
                              String houhold = request.getParameter("houhold")==null?"":request.getParameter("houhold");
                              String wei = request.getParameter("wei")==null?"":request.getParameter("wei");
                              String xl = request.getParameter("xl")==null?"":request.getParameter("xl");
                              String zy = request.getParameter("zy")==null?"":request.getParameter("zy");
                              HashMap mm = new HashMap();
                              mm.put("tname",tname);
                              mm.put("houhold",houhold);
                              mm.put("wei",wei);
                              mm.put("xl",xl);
                              mm.put("zy",zy);
                               %>
                              &nbsp;&nbsp;&nbsp;&nbsp;
                            企业名称 : <input type=text name="tname" id="tname" size="10" style="height: 15px" />
                            &nbsp;
                            所在城市 : 
                            
        <select id="houhold" name="houhold" onblur='checkform()' >
        	<option value="">请选择</option>
        <%ArrayList<HashMap> arealist = (ArrayList<HashMap>)new CommDAO().select("select * from area where delstatus='0'"); 
        for(HashMap areamap:arealist){%>
        	<option value="<%=areamap.get("id") %>"><%=areamap.get("addr") %></option>
        <%} %>
        </select>
                           &nbsp;
                          企业规模 : <input type=text name="wei" id="wei" size="10" style="height: 15px" /> 
                            
                            <table><tr><td></td></tr></table>
                             &nbsp;&nbsp;&nbsp;&nbsp;
                             行业类别 : 
                             <select id='xl' name='xl' onblur='checkform()'>
        	<option value="">请选择</option>
        	<option value="计算机|互联网|通信|电子">计算机|互联网|通信|电子</option>
        	<option value="会计/金融/银行/保险">会计/金融/银行/保险</option>
        	<option value="贸易/消费/制造/营运">贸易/消费/制造/营运</option>
        	<option value="制药/医疗">制药/医疗</option>
        	<option value="广告/媒体">广告/媒体</option>
        	<option value="房地产/建筑">房地产/建筑</option>
        	<option value="专业服务/教育/培训">专业服务/教育/培训</option>
        	<option value="服务业">服务业</option>
        	<option value="物流/运输">物流/运输</option>
        </select>
                            &nbsp;
                            公司性质 :
                            <select id='zy' name='zy' >
                            	<option value="">请选择</option>
                            	<option value="民营企业">民营企业</option>
                            	<option value="国有企业">国有企业</option>
                            	<option value="外资企业">外资企业</option>
                            </select>
                           &nbsp; 
                             
                              <input type=submit  value="查询" style="height: 22px"  /> 
                            
                               </TD>
                             
                            </TR>
                          
                          
                          
                          
                          
                           
                           
                              <%
        String key=request.getParameter("key")==null?"":request.getParameter("key"); 
         
        PageManager pageManager = PageManager.getPage("qy.jsp?1=1",4, request);
        
        String sql = "select * from sysuser where utype='企业' ";
        
         if (!tname.equals("")) sql+=" and tname like'%"+tname+"%' ";
         if (!houhold.equals("")) sql+=" and houhold like'%"+houhold+"%' ";  
         if (!wei.equals("")) sql+=" and wei like'%"+wei+"%' ";  
         if (!xl.equals("")) sql+=" and xl like'%"+xl+"%' ";  
         if (!zy.equals("")) sql+=" and zy like'%"+zy+"%' ";  
        
        
	    pageManager.doList(sql);
	    PageManager bean= (PageManager)request.getAttribute("page");
	    ArrayList<HashMap> nlist=(ArrayList)bean.getCollection();
	    
	   
	    for(HashMap m :nlist)
	    {
                            %>
                            <TR>
                              <TD class=css align=left> 
                              &nbsp;&nbsp;&nbsp;&nbsp;
                              <a href="qxiang.jsp?id=<%=m.get("id") %>">
                              
                              <%=m.get("tname") %>
                              -
                              <%=m.get("uname") %>
                              
                              
                              </a>
                              
                               &nbsp;&nbsp; 
                             
                             <font color=gray> 企业性质 : <%=m.get("xl") %> - <%=m.get("zy") %></font>
                              
                              
                             &nbsp;&nbsp; 
                             
                             <font color=gray> 成立日期 : <%=m.get("cbdate") %></font>
                              
                              </TD>
                             
                            </TR>
                            
                              <TR>
                             <TD class=css  height="10"
                                align="center">
                                 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                </TD>
                            </TR>
                            
                            <%} %>
                            
                            
                          </TBODY>
                      </TABLE>
                      <TR>
                      <TD height=33 colSpan=2 align="center"><label>${page.info }</label></TD>
                      </TR>
                    <TR>
                      <TD colSpan=2 align=middle>&nbsp;</TD>
                    </TR>
                  </TBODY>
                </TABLE>
                </form>
                
                
                
                
                
                
                
                
                
                
                
                </TD>
              </TR></TBODY></TABLE>
              
              
              </TD></TR>
       
       
       
       
       
       
      <jsp:include page="foot.jsp"></jsp:include>
      
      
      
      
      
      
      
      
      
      </TABLE></TD></TR></TBODY></TABLE>
      
<SCRIPT type=text/javascript charset=utf-8 
src="jsp_qzzp_sys_files/2462870.jss"></SCRIPT>


</BODY></HTML>
<script type="text/javascript">
<!--
<%if(request.getAttribute("suc")!=null){%>
alert("操作成功");
<%}%>
//-->
</script>
  <%=Info.tform(mm) %>
 
