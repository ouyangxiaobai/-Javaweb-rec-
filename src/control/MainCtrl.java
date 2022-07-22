package control;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.RequestContext;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;


import util.Info;

import dao.CommDAO;

public class MainCtrl extends HttpServlet {

	public MainCtrl() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
	this.doPost(request, response);
	}

		public void go(String url,HttpServletRequest request, HttpServletResponse response)
		{
		try {
			request.getRequestDispatcher(url).forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		}
		
		public void gor(String url,HttpServletRequest request, HttpServletResponse response)
		{
			try {
				response.sendRedirect(url);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		HashMap user = (HashMap)session.getAttribute("admin");
		String ac = request.getParameter("ac");
		if(ac==null)ac="";
		CommDAO dao = new CommDAO();
		String date = Info.getDateStr();
		String today = date.substring(0,10);
		String tomonth = date.substring(0,7);
		

		 
		
		if(ac.equals("mlogin"))
		{  
			String username = request.getParameter("uname");
			String password = request.getParameter("upass"); 
				List<HashMap> list = dao
						.select("select * from sysuser where uname='"
								+ username + "'");
				if (list.size() == 1) {
					HashMap map = list.get(0);
					List<HashMap> ulist = dao
							.select("select * from sysuser where uname='"
									+ username + "'   and upass='" + password
									+ "'");

					if (ulist.size() == 1&& password.equals(map.get("upass").toString())) {
					 
							request.getSession().setAttribute("admin", map);
							
							gor("/jsp_qzzp_sys/index.jsp", request, response);
						 
					} else {
						request.setAttribute("error", "");
						go("/index.jsp", request, response);
					}
				} else {
					request.setAttribute("error", "");
					go("/index.jsp", request, response);
				}
		 
		}
		
		
		//修改密码
		if(ac.equals("uppass"))
		{
			String olduserpass = request.getParameter("olduserpass");
			String userpass = request.getParameter("userpass");
			String copyuserpass = request.getParameter("copyuserpass");   
			 user = dao.getmap(Info.getUser(request).get("id").toString(), "sysuser");
			if(!(((String)user.get("upass")).equals(olduserpass)))
			{
				request.setAttribute("error", "");
				go("/admin/uppass.jsp", request, response);
			}else{
			String id = (String)user.get("id");
			String sql = "update sysuser set upass='"+userpass+"' where id="+id;
			dao.commOper(sql);
			request.setAttribute("suc", "");
			go("/admin/uppass.jsp", request, response);
			}
		}
		 
		 
		
		if(ac.equals("uploaddoc"))
		{
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			}
			
			go("/js/uploaddoc.jsp?docname="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			    }
		}
		
		//导excel
		if(ac.equals("importexcel"))
		{
			String page = request.getParameter("page");
			String whzdstr = request.getParameter("whzdstr");
			String tablename = request.getParameter("tablename");
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			    
			   if(filename.indexOf(".xls")>-1)
				{
					Workbook workbook;
					try {
						workbook = Workbook.getWorkbook(new File(request.getRealPath("/upfile/")+"/"+filename));
		               //通过Workbook的getSheet方法选择第一个工作簿（从0开始）
						Sheet sheet = workbook.getSheet(0); 
		               //通过Sheet方法的getCell方法选择位置为C2的单元格（两个参数都从0开始）
						//int empty = 0;
						for(int i=1;i<1000;i++)
						{
							Cell cell = null;
							try{
								String isql = "insert into "+tablename+"(";
								
								for(String str:whzdstr.split("-"))
								{ 
									isql+=str+",";
								}
								isql = isql.substring(0,isql.length()-1);
								isql+=")values(";
								
								int j=0;
								int empty = 1;
								for(String str:whzdstr.split("-"))
								{
								cell = sheet.getCell(j,i); 
								isql+="'"+cell.getContents()+"',";
								String content = cell.getContents()==null?"":cell.getContents();
								if(!"".equals(content.trim()))
								{
									empty = 0;
								}
								j++;
								}
								if(empty==1)continue;
								isql = isql.substring(0,isql.length()-1);
								isql+=")";
								dao.commOper(isql);
							}catch (Exception e) {
							continue;
							}
						    
						 } 
						 workbook.close(); 
		            } catch (Exception e) {
						e.printStackTrace();
					} 
                  }
			}
			go("/admin/"+page+"?docname="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}
	  

		if(ac.equals("uploadimg"))
		{
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			}
			
			go("/js/uploadimg.jsp?filename="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			    }
		}
		
		
		if(ac.equals("uploadimg2"))
		{
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			}
			
			go("/js/uploadimg2.jsp?filename="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			    }
		}
		
		if(ac.equals("uploadimg3"))
		{
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			}
			
			go("/js/uploadimg3.jsp?filename="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			    }
		}
		
		if(ac.equals("uploadimg4"))
		{
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			}
			
			go("/js/uploadimg4.jsp?filename="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			    }
		}
		
		if(ac.equals("uploadimg5"))
		{
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			}
			
			go("/js/uploadimg5.jsp?filename="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			    }
		}
		
		//
		if(ac.equals("addxspl")){
			String savetime = Info.getDateStr();
			String utype = "求职者";
			 try {
					String filename="";  
				request.setCharacterEncoding("utf-8");
				RequestContext  requestContext = new ServletRequestContext(request);
				if(FileUpload.isMultipartContent(requestContext)){
				   DiskFileItemFactory factory = new DiskFileItemFactory();
				   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
				   ServletFileUpload upload = new ServletFileUpload(factory);
				   upload.setSizeMax(100*1024*1024);
				   List items = new ArrayList();
				     items = upload.parseRequest(request);
				    FileItem fileItem = (FileItem) items.get(0);
				     if(fileItem.getName()!=null && fileItem.getSize()!=0){
				      File fullFile = new File(fileItem.getName());
				      filename = Info.generalFileName(fullFile.getName());
				      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
				      try {
				       fileItem.write(newFile);
				      } catch (Exception e) {
				       e.printStackTrace();
				      }
				     }else{
				     }
				    }
				  List   result   =   new   ArrayList();   
				  File   uploadFileName   =   new   File(request.getRealPath("/upfile/")+"/" + filename);   
				  InputStream   is   =   new   FileInputStream(uploadFileName);   
				  jxl.Workbook   excel   =   Workbook.getWorkbook(is);    
				  Sheet   sheet   =   excel.getSheet(0);  
				  int   rows   =   sheet.getRows();   
				  int   columns   =   sheet.getColumns();   
				  for   (int   r   =   0;   r   <   rows;   r++)   {   
				  String[]   rowDates   =   new   String[columns];  
				  if(r>0)
				  {
					  System.out.println("这是第"+r+"行");
					  String uname = sheet.getCell(0,   r).getContents();
					  String upass = sheet.getCell(1,   r).getContents();
					  String tname = sheet.getCell(2,   r).getContents();
					  String sex = sheet.getCell(3,   r).getContents();
					  String qq = sheet.getCell(4,   r).getContents();
					  String email = sheet.getCell(5,   r).getContents();
					 // ArrayList<HashMap> lll = (ArrayList)dao.select("select * from teacher where tno="+tno);
					 // if(lll.size()==0){
						  String sql = "insert into sysuser (uname,upass,tname,sex,qq,email,utype,savetime) " +
						  		" values ('"+uname+"','"+upass+"','"+tname+"','"+sex+"','"+qq+"','"+email+"','"+utype+"','"+savetime+"')";
							 System.out.println(sql);
							  dao.commOper(sql);
							  
					 // }else{
					 // request.setAttribute("no", "");
				    //	go("/addjspl.jsp", request, response);
					 // }
				  }
				  for   (int   c   =   0;   c   <   columns;   c++)   {   
				  Cell   cell   =   sheet.getCell(c,   r);   
				  String   cellValue   =   cell.getContents();   
				  rowDates[c]   =   cellValue;  
				  }   
				  result.add(rowDates);   
				  }   
				  excel.close();   
				  }   catch   (Exception   e)   {   
				  System.out.println(e.getMessage());   
				  }   
			/*String sql = "insert into kq values (null,'"+sno+"','"+kcname+"','"+remark+"','"+time+"','"+tid+"')";
			*/
				  request.setAttribute("suc", "");
			    	go("/admin/addxspl.jsp", request, response);
		    }
		
		dao.close();
		out.flush();
		out.close(); 
}


	public void init() throws ServletException {
		// Put your code here
	}
	
	
	public static void main(String[] args) {
		System.out.println(new CommDAO().select("select * from mixinfo"));
	}
	

}
