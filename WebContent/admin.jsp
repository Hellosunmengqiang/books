<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import = "com.rain.bean.AdminBean,com.rain.bean.HistoryBean,com.rain.dao.AdminDao" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN" class="ax-vertical-centered">
<head>
	<meta charset="UTF-8">
	<title>共享汽车管理系统</title>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="static/css/bootstrap.min.css">
	    <link rel="stylesheet" href="static/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="static/css/bootstrap-admin-theme.css">
        <link rel="stylesheet" href="static/css/bootstrap-admin-theme.css">
        <script src="static/js/bootstrap.min.js"></script>
        <script src="static/jQuery/jquery-3.1.1.min.js"></script>
            <script src="static/js/bootstrap-dropdown.min.js"></script>
                      
              <script src="static/ajax-lib/ajaxutils.js"></script>
            <script src="static/js/adminUpdateInfo.js"></script>
             <script src="static/js/adminUpdatePwd.js"></script>
       
</head>



<script src="static/js/jquery.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>


<body class="bootstrap-admin-with-small-navbar">
<%
AdminBean admin = new AdminBean();
String aid = (String)session.getAttribute("aid");
AdminDao admindao = new AdminDao();
admin = admindao.get_AidInfo2(aid);

%>
    <nav class="navbar navbar-inverse navbar-fixed-top bootstrap-admin-navbar bootstrap-admin-navbar-under-small" role="navigation">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="collapse navbar-collapse main-navbar-collapse">
                        <a class="navbar-brand" href="admin.jsp"><strong>欢迎使用共享汽车管理系统</strong></a>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-hover="dropdown"> <i class="glyphicon glyphicon-user"></i> 欢迎您， <s:property value="#session.admin.name"/> <i class="caret"></i></a>
                            
                                 <ul class="dropdown-menu">
                                     <li><a href="#updateinfo" data-toggle="modal">个人资料</a></li>
                                      <li role="presentation" class="divider"></li>
                                       <li><a href="#updatepwd" data-toggle="modal">修改密码</a></li>
                                        <li role="presentation" class="divider"></li>
                                    <li><a href="index.html">退出</a></li>
                                </ul>
                                
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <div class="container">
        <!-- left, vertical navbar & content -->
        <div class="row">
            <!-- left, vertical navbar -->
            <div class="col-md-2 bootstrap-admin-col-left">
                <ul class="nav navbar-collapse collapse bootstrap-admin-navbar-side">
                    <li>
                        <a href="admin_book.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 汽车管理</a>
                    </li>
                    <li>
                        <a href="admin_user.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 用户管理</a>
                    </li>
                    <li>
                        <a href="admin_booktype.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 汽车分类管理</a>
                    </li>
                    <li>
                        <a href="admin_borrow.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 汽车租借信息</a>
                    </li>
                    <li>
                        <a href="admin_history.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 汽车归还信息</a>
                    </li>
                  
                </ul>
                
            </div>

            <!-- content -->
            <div class="col-md-10">
                
                  
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">汽车管理</div>
                            </div>
                            <div class="bootstrap-admin-panel-content">
                                <ul>
                                    <li>根据汽车编号、汽车名称查询汽车基本信息</li>
                                    <li>添加、修改、删除汽车</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">汽车分类管理</div>
                            </div>
                            <div class="bootstrap-admin-panel-content">
                                <ul>
                                    <li>根据分类名称查询汽车分类信息</li>
                                    <li>添加、修改、删除汽车分类</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">汽车借阅</div>
                            </div>
                            <div class="bootstrap-admin-panel-content">
                                <ul>
                                    <li>展示所有正在租借汽车的信息</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">汽车归还</div>
                            </div>
                            <div class="bootstrap-admin-panel-content">
                                <ul>
                                    <li>展示所有已归还汽车的信息</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                  
                   <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">用户管理</div>
                            </div>
                            <div class="bootstrap-admin-panel-content">
                                <ul>
                                    <li>根据账号、姓名查询用户基本信息</li>
                                    <li>添加、修改、删除用户信息</li>
                                </ul>
                            </div>
                        </div>
                </div>
           
            </div>
            
           
            
        </div>
    </div>
    
    
    
    
    
    
    
    
    
<!-------------------------------------------------------------->  
                 
                   <form class="form-horizontal" method="post" action="/books/AdminServlet">   <!--保证样式水平不混乱-->                  
                                     <!-- 模态框（Modal） -->
				<div class="modal fade" id="updatepwd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									&times;
								</button>
								<h4 class="modal-title" id="myModalLabel">
									修改密码
								</h4>
							</div>
							<div class="modal-body">
							 
								<!--正文-->
								<input type="hidden" name="tip" value="1">
								<input type="hidden" name="url" value="admin">
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">原密码</label>
								<div class="col-sm-7">
									<input type="password" class="form-control" name="password" id="oldPwd"  placeholder="请输入原密码">
										<label class="control-label" for="oldPwd" style="display: none"></label>				
								</div>
							</div>	
							
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">新密码</label>
								<div class="col-sm-7">
									<input type="password" class="form-control" name="password2" id="newPwd"  placeholder="请输入新密码">
										<label class="control-label" for="newPwd" style="display: none"></label>			
								</div>
							</div>	
							
								<!--正文-->
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭
								</button>
								<button type="submit" class="btn btn-primary" >
									修改
								</button>
							</div>
						</div><!-- /.modal-content -->
					</div><!-- /.modal -->
				</div>

				</form>	
                                   <!-------------------------------------------------------------->
                                   
                                   <!-------------------------个人资料模糊框------------------------------------->  
                 
                   <form class="form-horizontal" method="post" action="AdminServlet">   <!--保证样式水平不混乱-->                  
                                     <!-- 模态框（Modal） -->
				<div class="modal fade" id="updateinfo" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									&times;
								</button>
								<h4 class="modal-title" id="ModalLabel">
									个人资料
								</h4>
							</div>
							
							<div class="modal-body">
							 
								<!--正文-->
								<input type="hidden" name="tip" value="2">
								<input type="hidden" name="url" value="admin">
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">真实姓名</label>
								<div class="col-sm-7">
			<input type="text" class="form-control" id="name" name="name" placeholder="请输入您的真实姓名" value='<% out.write(admin.getName());%>'>
										<label class="control-label" for="name" style="display: none"></label>			
								</div>
							</div>	
							
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">手机号</label>
								<div class="col-sm-7">
			<input type="text" class="form-control" id="phone" name="phone" placeholder="请输入您的手机号" value='<% out.write(admin.getPhone());%>'>
											<label class="control-label" for="phone" style="display: none"></label>				
								</div>
							</div>	
							
							
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">邮箱</label>
								<div class="col-sm-7">
			<input type="text" class="form-control" id="email" name="email"  placeholder="请输入您的邮箱" value='<% out.write(admin.getEmail());%>'>
											<label class="control-label" for="email" style="display: none"></label>				
								</div>
							</div>	
							
								<!--正文-->
								
								
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭
								</button>
								<button type="submit" class="btn btn-primary" >
									修改
								</button>
							</div>
						</div><!-- /.modal-content -->
					</div><!-- /.modal -->
				</div>

				</form>	
                                   <!-------------------------------------------------------------->
    
    
    
    
    
    <div class="modal fade" id="modal_info" tabindex="-1" role="dialog" aria-labelledby="addModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="infoModalLabel">提示</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-12" id="div_info"></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="btn_info_close" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
    
    
    
    
    
</body>
</html>