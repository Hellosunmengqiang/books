
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" 
import = "com.rain.bean.CarsBean,com.rain.dao.CarDao,com.rain.bean.CarsBean,com.rain.dao.CarDao" %>
    <%request.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset:utf-8"); %>
<html lang="en">
<head>
 <script src="static/js/index.js"></script>
    <script src="static/js/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="static/css/index.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>详情</title>
<style>

*{
padding:0;
margin:0;}
#img{
  margin:30px;
  display:inline-block;
  
}
#uu{
margin-top:80px;
margin-right:260px;
float:right;
}
#click{
color:red;
font-size:13px;
}

</style>
</head>
<body>
  <div class="header">
        <div class="header_left">
            <div class="logo"></div>
            <ul class="a">
                 <li><a href="zhifu.jsp" id="click">点击预定</a></li>
                <li>首页</li>
               
                <li>到店去还</li>
                <li>长租</li>
                <li>企业租车</li>
                <li>顺风车</li>
                <li>门店</li>
               
            </ul>
        </div>
        <div class="header_right">
            <ul class="register">
                
                <li><a href="index.html">注销</a></li>
              
            </ul>
            <ul class="title">
            
                <li>我的远大</li>
                <li><span class="tel"></span>666-666-6666</li>
            </ul>

        </div>
    </div>

    <%
          ArrayList<CarsBean> cardata =(ArrayList<CarsBean>)request.getAttribute("data");
          if(cardata==null||cardata.size()<1)
          {
          	out.print("没有数据!");
          }
               //  if(cardata==null){
             //CarDao cardao = new CarDao();
              // cardata = (ArrayList<CarsBean>)cardao.get_Carinfo();
                   //   }
                   
                  for (CarsBean bean : cardata){
                             %> 
                               <div id="img">
                               <img src="static/img/<%= bean.getImg() %>" width="700px">
                               </div> 
                               <div id="uu">           
								<ul>
	                         	   	<li>1. 类型：<%= bean.getCartype() %></li><br>
	                                <li>2. 型号：<%= bean.getCarname() %></li><br>
	                                <li>3. 车名字：<%= bean.getCarbrand() %></li><br>
	                                <li>4. 数量：<%= bean.getCarset() %></li><br>
	                                <li>5. 出租地：<%= bean.getCarfact() %></li> <br> 
	                                <li>6. 一般时速：<%= bean.getCarspeed() %></li><br>
	                                 <li>7. 出租价格：<%= bean.getCarprice() %></li><br>
	                                  <li>8. 产地：<%= bean.getCarwhere() %></li><br>
	                                   <li>9. 油耗：<%= bean.getCaroil() %></li>
	                              
	                             </ul>
	                             </div>  
	                                    
    <%} %>

</body>
</html>