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

<script type="text/javascript"> 
var isIE = (document.all) ? true : false;
 
var $ = function (id) {
	return "string" == typeof id ? document.getElementById(id) : id;
};
 
var Class = {
	create: function() {
		return function() { this.initialize.apply(this, arguments); }
	}
}
 
var Extend = function(destination, source) {
	for (var property in source) {
		destination[property] = source[property];
	}
}
 
var Bind = function(object, fun) {
	return function() {
		return fun.apply(object, arguments);
	}
}
 
var Each = function(list, fun){
	for (var i = 0, len = list.length; i < len; i++) { fun(list[i], i); }
};
 
 
//ie only
var RevealTrans = Class.create();
RevealTrans.prototype = {
  initialize: function(container, options) {
	this._img = document.createElement("img");
	this._a = document.createElement("a");
	
	this._timer = null;//计时器
	this.Index = 0;//显示索引
	this._onIndex = -1;//当前索引
	
	this.SetOptions(options);
	
	this.Auto = !!this.options.Auto;
	this.Pause = Math.abs(this.options.Pause);
	this.Duration = Math.abs(this.options.Duration);
	this.Transition = parseInt(this.options.Transition);
	this.List = this.options.List;
	this.onShow = this.options.onShow;
	
	//初始化显示区域
	this._img.style.visibility = "hidden";//第一次变换时不显示红x图
	this._img.style.width = "790"; 
	this._img.style.height = "154"; 
	this._img.style.border = 0;
	this._img.onmouseover = Bind(this, this.Stop);
	this._img.onmouseout = Bind(this, this.Start);
	isIE && (this._img.style.filter = "revealTrans()");
	
	this._a.target = "_blank";
	
	$(container).appendChild(this._a).appendChild(this._img);
  },
  //设置默认属性
  SetOptions: function(options) {
	this.options = {//默认值
		Auto:		true,//是否自动切换
		Pause:		1000,//停顿时间(微妙)
		Duration:	1,//变换持续时间(秒)
		Transition:	23,//变换效果(23为随机)
		List:		[],//数据集合,如果这里不设置可以用Add方法添加
		onShow:		function(){}//变换时执行
	};
	Extend(this.options, options || {});
  },
  Start: function() {
	clearTimeout(this._timer);
	//如果没有数据就返回
	if(!this.List.length) return;
	//修正Index
	if(this.Index < 0 || this.Index >= this.List.length){ this.Index = 0; }
	//如果当前索引不是显示索引就设置显示
	if(this._onIndex != this.Index){ this._onIndex = this.Index; this.Show(this.List[this.Index]); }
	//如果要自动切换
	if(this.Auto){
		this._timer = setTimeout(Bind(this, function(){ this.Index++; this.Start(); }), this.Duration * 1000 + this.Pause);
	}
  },
  //显示
  Show: function(list) {
	if(isIE){
		//设置变换参数
		with(this._img.filters.revealTrans){
			Transition = this.Transition; Duration = this.Duration; apply(); play();
		}
	}
	this._img.style.visibility = "";
	//设置图片属性
	this._img.src = list.img; this._img.alt = list.text;
	//设置链接
	!!list["url"] ? (this._a.href = list["url"]) : this._a.removeAttribute("href");
	//附加函数
	this.onShow();
  },
  //添加变换对象
  Add: function(sIimg, sText, sUrl) {
	this.List.push({ img: sIimg, text: sText, url: sUrl });
  },
  //停止
  Stop: function() {
	clearTimeout(this._timer);
  }
};
 
 
</script>

<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META name=GENERATOR content="MSHTML 8.00.6001.19222"></HEAD>
<BODY>
 
       
       
       
    
       
       
       
        <TR>
          <TD height=70 vAlign=center align=right>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width="40%" height="80" rowspan="2" align="center" onClick="window.location.replace('/jsp_qzzp_sys')" >
              
              
              
              <font face="华文行楷" style="font-size: 15px"> 大学生求职招聘系统 </font>         
                
              
                      </TD>
                <TD width="60%" height="42" align="right"   >
                
                
                <%
                if(Info.getUser(request)==null){
                 %>
                <font color="#804000">
               	 欢迎您光临本站。
                     
                
                <a href="regedit.jsp"><font color="red">求职者注册</font></a>
                
                 &nbsp;&nbsp;&nbsp;  
                 
                  <a href="qregedit.jsp"><font color="red">企业注册</font></a>
                
                 &nbsp;&nbsp;&nbsp;  
                
                   </label>                 </font>
                 <%}else{ %>
                
                
                <%=Info.getUser(request).get("uname") %>，欢迎您回来 
                 
                &nbsp;
                <a href="/jsp_qzzp_sys/admin/main.jsp"><font color="#804000">去信息服务中心</font></a>
   
                             &nbsp;&nbsp;
                             
                             <a href="index.jsp?t=t">退出</a>
                
                <%} %>                </TD>
          </TR>
              <TR>
                <TD align="right"   >
                <marquee   scrollamount="2">欢迎光临大学生求职招聘系统，本系统能为您提供最新招聘资讯与求职服务</marquee>
                 </TD>
              </TR>
          </TBODY></TABLE></TD></TR>
        <TR>
          <TD height=47 vAlign=top>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" 
              height=40><TBODY>
              <TR>
                <TD width=16><IMG src="jsp_qzzp_sys_files/dh_z.jpg" width=16 
                  height=40></TD>
                <TD class=bold_txt background=jsp_qzzp_sys_files/dh_bj.jpg 
                align=middle>
               
                <A href="index.jsp">首页</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <A href="fg.jsp?type=1">招聘信息</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <A href="qy.jsp?type=2">企业资料</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <!--  <A href="bys.jsp">求职者资料</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
                   <A href="qytj.jsp">企业推荐</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <A href="gfcs.jsp">求职技巧</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <A href="wzjj.jsp">系统简介</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <A href="gywm.jsp">关于我们</A> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <A href="messages.jsp">留言板</A>　
                 
                </TD>
                <TD width=16><IMG src="jsp_qzzp_sys_files/dh_y.jpg" width=16 
                  height=40></TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD height=160 vAlign=top width="100%">
            
            <img src="/jsp_qzzp_sys/jsp_qzzp_sys_files/gg.png" width="799" height="160"></img>
 
            </TD></TR>
     
     
     
     <tr><td height="3"></td></tr>
     
     
     
        <TR>
          <TD height=34 vAlign=top>
            <TABLE width="100%" height="34" border=0 cellPadding=0 cellSpacing=0>
              <TBODY>
              <TR>
                <TD width=200 height=30 align=middle valign="middle" bgColor=#4990ce><SPAN 
                  class=wit_txt>
                <DIV align=center>
                  <SCRIPT language=JavaScript>
				var todayx=new Date()
				yearx=todayx.getYear()
				monthx=todayx.getMonth()
				datex=todayx.getDate()
				document.write('今天是 '+(monthx+1)+'-'+datex)
				//document.write('今天是 '+yearx+'-'+(monthx+1)+'-'+datex)
		      </SCRIPT>
                </DIV></SPAN></TD>
                <TD width=56 valign="top"><IMG src="/jsp_qzzp_sys/jsp_qzzp_sys_files/gg_zj.jpg" width=56 
                  height=34></TD>
                <TD align=left valign="middle" height="30" background=jsp_qzzp_sys_files/gg_bj.jpg><SPAN 
                  class=css>欢迎光临本站，如对本网站有好的建议请联系我
                  </SPAN></TD>
                <TD width=16  height="30" background="jsp_qzzp_sys_files/gg_y.jpg">              </TD>
          </TR></TBODY></TABLE></TD></TR>
          
          <tr><td height="5"></td></tr>
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
            
</BODY></HTML>
 

