package com.rain.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rain.bean.BookBean;
import com.rain.bean.CarsBean;
import com.rain.dao.BookDao;
import com.rain.dao.CarDao;

/**
 * Servlet implementation class Carsxq
 */
@WebServlet("/Carsxq")
public class Carsxq extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Carsxq() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		//获取要添加图书的信息
		
		
		int cid = Integer.parseInt(request.getParameter("id"));
		//System.out.println(cid);
		CarDao carsdao=new CarDao();
		ArrayList<CarsBean> data = null;
		//调用函数，存入
		try {
			data=carsdao.get_CarInfo(cid);
		} catch (ClassNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		//System.out.println(data.toString());
		request.setAttribute("data", data);
		//将请求转发
	    request.getRequestDispatcher(response.encodeURL("ceshi.jsp")).forward(request, response);
	}

}
