package com.action;

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
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.RequestContext;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;

import com.dao.CommDAO;
import com.util.Info;





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
		HashMap admin = (HashMap)session.getAttribute("admin");
		HashMap user = (HashMap)session.getAttribute("user");
		String ac = request.getParameter("ac");
		if(ac==null)ac="";
		CommDAO dao = new CommDAO();
		String date = Info.getDateStr();
		String today = date.substring(0,10);
		String tomonth = date.substring(0,7);
		
		//登录
		if(ac.equals("login"))
		{
			String utype = request.getParameter("utype");
			String username = request.getParameter("uname");
			String password = request.getParameter("upass");
			String sql = "select * from sysuser where uname='"+username+"' and upass='"+password+"' and delstatus='0' ";
			List<HashMap> userlist = dao.select(sql);
			if(userlist.size()!=1)
			{
				request.setAttribute("error", "");
				go("/admin/login.jsp", request, response);
			}else{
				request.getSession(). setAttribute("admin", userlist.get(0));
				gor("/loancompany/admin/index.jsp", request, response);
			}
		}
		
		
		
		dao.close();
		out.flush();
		out.close();
	}


	public void init() throws ServletException {
		// Put your code here
	}
	
	

}
