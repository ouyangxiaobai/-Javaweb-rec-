<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE3 {
	font-size: 12px;
	color: #435255;
}
.STYLE4 {font-size: 12px}
.STYLE5 {font-size: 12px; font-weight: bold; }
-->
</style></head>
<script language=javascript>
function show(no)
{
for(var i=1;i<20;i++)
{
var a = document.getElementById(no+"@"+i);
if(a==null)
{
continue;
}
if(a.style.display=="")
{
a.style.display="none";
}else{
a.style.display="";
}
}

}
</script>
<body>

  <%
    HashMap map = (HashMap)session.getAttribute("admin");
    
    %>

  
 
  

<table width="147"  border="0" align="center" cellpadding="0" cellspacing="0">


  <%
  HashMap user = (HashMap)session.getAttribute("admin");
      String utype = user.get("utype").toString();
      if(utype.equals("管理员")){
   %>

<tr  onClick="show('2')"  style="cursor:hand">
    <td height="23" background="images/main_34.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9%">&nbsp;</td>
        <td width="83%"><div align="center" class="STYLE5">招聘信息管理</div></td>
        <td width="8%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td valign="top"><div align="center">
       <table width="82%" border="0" id="2@3"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('zpinfocx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">招聘信息管理</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
       
     
       <table width="82%" border="0" id="2@4"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('empcx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">求职信息查看</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
      
     
      
      
       
      </div></td></tr>
  
    
  
  <tr  onClick="show('5')"  style="cursor:hand">
    <td height="23" background="images/main_34.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9%">&nbsp;</td>
        <td width="83%"><div align="center" class="STYLE5">网站信息管理</div></td>
        <td width="8%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td valign="top"><div align="center">
  
   <table width="82%" border="0" id="5@11"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('area.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">工作地点管理</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
   
    <table width="82%" border="0" id="5@8"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('xwhbnewscx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">求职技巧</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
       
   
       <table width="82%" border="0" id="5@1"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('wzgg.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">职场资讯</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
       
       <table width="82%" border="0" id="5@2"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('wzjj.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">系统简介</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
      <table width="82%" border="0" id="5@3"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('yqljcx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">友情链接</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
      
       <table width="82%" border="0" id="5@4"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('gywm.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">关于我们</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
       <table width="82%" border="0" id="5@5"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('messagescx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">留言板管理</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
       
  

  <tr  onClick="show('4')"  style="cursor:hand">
    <td height="23" background="images/main_34.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9%">&nbsp;</td>
        <td width="83%"><div align="center" class="STYLE5">基本信息管理</div></td>
        <td width="8%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td valign="top"><div align="center">
  
  
  
  
    
    <table width="82%" border="0" id="4@1"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('byssysusercx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">求职者管理</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
      <table width="82%" border="0" id="4@2"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('qysysusercx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">企业信息管理</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
    
    
  
       
        <table width="82%" border="0" id="4@6"  style="display: none"  align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="23" onClick="go('sysusercx.jsp')" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">管理员信息维护</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
       
      
       
    
     
    <table width="82%" border="0" id="4@7"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('pusersxg.jsp?id=<%=map.get("id") %>&ms=ms')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">修改个人信息</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
    
    
    <table width="82%" border="0" id="4@8"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('uppass.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">修改登录密码</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      <%} %>
      
      
      
      
      
      
      
      
      
      
      
      
  <% 
      if(utype.equals("求职者")){
   %>
 
  <tr  onClick="show('4')"  style="cursor:hand">
    <td height="23" background="images/main_34.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9%">&nbsp;</td>
        <td width="83%"><div align="center" class="STYLE5">基本信息管理</div></td>
        <td width="8%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td valign="top"><div align="center">
    
    
    
  
   
   <table width="82%" border="0" id="4@1"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('jlxsysuserxg.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">我的简历</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
    
     
    <table width="82%" border="0" id="4@7"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('cbxsysuserxg.jsp?id=<%=map.get("id") %>&ms=ms')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">个人基本信息</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      <table width="82%" border="0" id="4@170"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('studentcx.jsp?username=<%=map.get("uname") %>&ms=ms')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">我的工作申请</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
       <table width="82%" border="0" id="4@17"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('qysysusercxtj.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">企业推荐</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      

             <table width="82%" border="0" id="4@18"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('mymsg.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">企业来信</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
    
    
    <table width="82%" border="0" id="4@188"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('myfav.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">收藏夹</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
    
    <table width="82%" border="0" id="4@8"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('uppass.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">修改登录密码</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
      
    
      
      
      <%} %>
      
      
      
      
      
      
      
      
      
      
      
      
  <% 
      if(utype.equals("企业")){
   %>
   
   
   
<tr  onClick="show('2')"  style="cursor:hand">
    <td height="23" background="images/main_34.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9%">&nbsp;</td>
        <td width="83%"><div align="center" class="STYLE5">招聘信息管理</div></td>
        <td width="8%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td valign="top"><div align="center">
       <table width="82%" border="0" id="2@3"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('zpinfocx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">招聘信息管理</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
       
     
       <table width="82%" border="0" id="2@4"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('empcx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">求职信息查看</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
             <table width="82%" border="0" id="2@5501"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('rctj.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">人才推荐</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
   
      
      
       
      </div></td></tr>
  
    
   
   
   
   
 
  <tr  onClick="show('4')"  style="cursor:hand">
    <td height="23" background="images/main_34.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9%">&nbsp;</td>
        <td width="83%"><div align="center" class="STYLE5">基本信息管理</div></td>
        <td width="8%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td valign="top"><div align="center">
    
    
    
  
   
   <table width="82%" border="0" id="4@1"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('pqqysysuserxg.jsp?id=<%=map.get("id") %>')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">企业详细管理</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
    
     
    <table width="82%" border="0" id="4@7"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('cbqsysuserxg.jsp?id=<%=map.get("id") %>&ms=ms')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">企业基本信息</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
    
    
    <table width="82%" border="0" id="4@8"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('uppass.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">修改登录密码</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      <%} %>
      
      
      
      
      
      
      
      
      
      </div></td></tr>
  

  
  
</table>
</body>
</html>
<script language="javascript">
        function go(purl)
        {
        parent.document.getElementsByTagName("iframe")[1].src=(purl);
        }
        </script>
