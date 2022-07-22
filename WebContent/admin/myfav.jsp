<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.PageManager"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
String userid = user.get("id").toString();
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
<!--

.mytab {
	font-size: 12px;
	width:100%;
	line-height: 150%;
	text-decoration: none;
	word-wrap: break-word;
	border:#DBE6E3 solid 1px; border-bottom:0; border-right:0; border-left:#DBE6E3 solid 1px;
	line-height:175%; 
	margin:1px 1px;
	margin-left: 0px;	
}
.mytab td{ padding:2px 5px; border:#DBE6E3 solid 1px; border-left:0; border-top:0;}

body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}
.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}
.STYLE6 {color: #000000; font-size: 12; }
.STYLE10 {color: #000000; font-size: 12px; }
.STYLE19 {
	color: #344b50;
	font-size: 12px;
}
.STYLE21 {
	font-size: 12px;
	color: #3b6375;
}
.STYLE22 {
	font-size: 12px;
	color: #295568;
}
-->
</style>

<script language="javascript" src="/jsp_qzzp_sys/js/popup.js"></script>

<script>
var  highlightcolor='#d5f4fe';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[0].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[0].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[0].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[0].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>


</head>

<body>
<form  action="myfav.jsp"  name="f1" method="post">
<table width="99.8%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="3%" height="19" valign="bottom">&nbsp;&nbsp;&nbsp;</td>
                <td width="97%" valign="bottom"><span class="STYLE1"> 收藏夹</span></td>
              </tr>
            </table></td>
            <td> 
            
             
            
            </td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="1" class="mytab"   onmouseover="changeto()"  onmouseout="changeback()">
      
      
      
      
      <tr bgcolor="#F3F8F7">
        <td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;"  >职位</td>
        <td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;"  >技能要求</td>
        <td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;"  >企业</td>
		<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;"  >操作</td>
        </tr>
      
       
      <% 

if(request.getParameter("did")!=null){ 
 new CommDAO().commOper("delete from fav where id="+request.getParameter("did"));  
} 

String sql = "select * from fav where qzzuname='"+user.get("uname")+"' " ;


  sql +=" order by id desc ";
String url = "myfav.jsp?1=1"; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ 
HashMap aamm =  new CommDAO().select("select * from zpinfo where id="+map.get("zpinfoid")).get(0);
%>
<tr>

        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=aamm.get("title")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=aamm.get("jl")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">
        	<%=aamm.get("qytname")%>
        </td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">
        <a href="/jsp_qzzp_sys/zxiang.jsp?id=<%=map.get("zpinfoid")%>" target="_blank">查看详情</a>
&nbsp;|&nbsp;
<a onclick="return confirm('确定要删除这条记录吗?')" href="myfav.jsp?did=<%=map.get("id")%>">删除</a>
</td>
</tr>
<%}%>
     
      
      
      
      
    </table></td>
  </tr>
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan=4 align="center" class="STYLE19">${ page.info}</td>
        </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>


<script language=javascript src='/jsp_qzzp_sys/js/ajax.js'></script>
<% 
%>
<script language=javascript >  
 
</script>  
<script language=javascript src='/jsp_qzzp_sys/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/jsp_qzzp_sys/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('areaedit.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('areaadd.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
