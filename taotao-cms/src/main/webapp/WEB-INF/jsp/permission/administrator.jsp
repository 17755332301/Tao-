<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
         <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
        <link href="${pageContext.request.contextPath}/assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/font/css/font-awesome.min.css" />
        <!--[if lte IE 8]>
	<link rel="stylesheet" href="../../../assets/css/ace-ie.min.css"/>
	<![endif]-->
		<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Widget/Validform/5.3.2/Validform.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/typeahead-bs2.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.bootstrap.js"></script>
        <script src="${pageContext.request.contextPath}/assets/layer/layer.js" type="text/javascript" ></script>
		<script src="${pageContext.request.contextPath}/js/lrtk.js" type="text/javascript" ></script>
         <script src="${pageContext.request.contextPath}/assets/layer/layer.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/assets/laydate/laydate.js" type="text/javascript"></script>
<title>管理员</title>
</head>

<body>
<div class="page-content clearfix">
  <div class="administrator">
       <div class="d_Confirm_Order_style">
    <div class="search_style">
      <div class="title_names">搜索查询</div>
      <ul class="search_content clearfix">
       <li><label class="l_f">管理员名称</label><input name="" type="text"  class="text_add" placeholder=""  style=" width:400px"/></li>
       <li><label class="l_f">添加时间</label><input class="inline laydate-icon" id="start" style=" margin-left:10px;"></li>
       <li style="width:90px;"><button type="button" class="btn_search"><i class="fa fa-search"></i>查询</button></li>
      </ul>
    </div>
    <!--操作-->
     <div class="border clearfix">
       <span class="l_f">
        <a href="javascript:ovid()" id="administrator_add" class="btn btn-warning"><i class="fa fa-plus"></i> 添加管理员</a>
        <a href="javascript:ovid()" class="btn btn-danger"><i class="fa fa-trash"></i> 批量删除</a>
       </span>
       <span class="r_f"></span>
     </div>
     <!--管理员列表-->
     <div class="clearfix administrator_style" id="administrator">
      <div class="left_style">
      <div id="scrollsidebar" class="left_Treeview">
        <div class="show_btn" id="rightArrow"><span></span></div>
        <div class="widget-box side_content" >
         <div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div>
         <div class="side_list"><div class="widget-header header-color-green2"><h4 class="lighter smaller">管理员分类列表</h4></div>
         <div class="widget-body">
           <ul class="b_P_Sort_list">
           <li><i class="fa fa-users green"></i> <a href="#">全部管理员（${allRole}）</a></li>
            <c:forEach items="${role}" var="item">
            <li><i class="fa fa-users orange"></i> <a href="#">${item.role_name}（${item.roleCount}）</a></li>
            </c:forEach>
           </ul>
        </div>
       </div>
      </div>  
      </div>
      </div>
      <div class="table_menu_list"  id="testIframe">
           <table class="table table-striped table-bordered table-hover" id="sample_table">
		<thead>
		 <tr>
				<th width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th width="80px">编号</th>
				<th width="130px">登录名</th>
				<th width="120px">密码</th>
				<th width="100px">手机</th>
                <th width="100px">角色</th>
				<th width="180px">加入时间</th>
				<th width="70px">状态</th>                
				<th width="200px">操作</th>
			</tr>
		</thead>
	<tbody>
     <c:forEach items="${user}" var="item" varStatus="vs" >
	<tr>
      <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
      <td>${vs.count}</td>
      <td>${item.user_name}</td>
      <td>${item.user_password}</td>
      <td>${item.user_phone}</td>
      <td>${item.role_name}</td>
      <td><fmt:formatDate value="${item.enter_time}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
      <td class="td-status"><span class="label label-success radius"><c:if test="${item.is_use == 1}">已启用</c:if>
      <c:if test="${item.is_use == 0}">已停用</c:if></span></td>
      <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="fa fa-check  bigger-120"></i></a>  
        <a title="编辑" onclick="member_edit('${item.id}')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="fa fa-edit bigger-120"></i></a>
        <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>
       </td>
     </tr>
	 </c:forEach>
    </tbody>
    </table>
      </div>
     </div>
  </div>
</div>
 <!--添加管理员-->
 <div id="add_administrator_style" class="add_menber" style="display:none">


    <form name="addUserForm" method="post" id="form-admin-add">
		<input type="hidden" id="hiddenid" name="id" value=""/>
		<div class="form-group">
			<label class="form-label"><span class="c-red">*</span>登录名：</label>
			<div class="formControls">
				<input type="text" class="input-text" value="" placeholder="" id="user_name" name="user_name" datatype="*2-16" nullmsg="用户名不能为空">
			</div>
			<div class="col-4"> <span class="Validform_checktip"></span></div>
		</div>
		<div class="form-group">
			<label class="form-label"><span class="c-red">*</span>初始密码：</label>
			<div class="formControls">
			<input type="password" placeholder="密码" name="user_password" id="user_password" autocomplete="off" value="" class="input-text" datatype="*6-20" nullmsg="密码不能为空">
			</div>
			<div class="col-4"> <span class="Validform_checktip"></span></div>
		</div>
		<div class="form-group">
			<label class="form-label "><span class="c-red">*</span>确认密码：</label>
			<div class="formControls ">
		<input type="password" placeholder="确认新密码" autocomplete="off" class="input-text Validform_error" errormsg="您两次输入的新密码不一致！" datatype="*" nullmsg="请再输入一次新密码！" recheck="user_password" id="newpassword2" name="newpassword2">
			</div>
			<div class="col-4"> <span class="Validform_checktip"></span></div>
		</div>
		<div class="form-group">
			<label class="form-label "><span class="c-red">*</span>手机：</label>
			<div class="formControls ">
				<input type="text" class="input-text" value="" placeholder="" name="user_phone" id="user_phone" datatype="m" nullmsg="手机不能为空">
			</div>
			<div class="col-4"> <span class="Validform_checktip"></span></div>
		</div>
		<div class="form-group">
			<label class="form-label">角色：</label>
			<div class="formControls "> <span class="select-box" style="width:150px;">
				<select class="select" name="roleId" size="1" id="roleId1">

				</select>
				</span> </div>
		</div>
		<div class="form-group">
			<label class="form-label">备注：</label>
			<div class="formControls">
				<textarea name="remark" id="remark" cols="" rows="" class="textarea" placeholder="说点什么...100个字符以内" dragonfly="true" onkeyup="checkLength(this);"></textarea>
				<span class="wordage">剩余字数：<span id="sy" style="color:Red;">100</span>字</span>
			</div>
			<div class="col-4"> </div>
		</div>
		<div> 
        <input class="btn btn-primary radius" type="button" id="Add_Administrator" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
	</form>
   </div>

 </div>
</body>
</html>
<script type="text/javascript">
jQuery(function($) {


	    $.ajax({
			url:'${pageContext.request.contextPath}/permission/selectAllRoleBackJson',
			type:'post',
			success:function(val){
				for(var i =0 ; i < val.length ; i++){
					$("#roleId1").append("<option value="+val[i].id+">"+val[i].role_name+"</option>");
				}
			}
		});
	    $("#Add_Administrator").on("click",function(){

			var  id = $("#hiddenid").val();
			if(id == null || id == ''){
				$.ajax({
					url:'${pageContext.request.contextPath}/permission/addUser',
					type:'post',
					data:$("form[name='addUserForm']").serializeArray(),
					success:function(val){
						if(val.code == 1){
							alert("添加用户成功！");
							window.location.href="${pageContext.request.contextPath}/permission/selectAllUser";
						}
						if(val.data == 2){
							alert("添加用户失败！");
						}
					}
				});

			}
			if(id != null || id != ''){

				$.ajax({
					url:'${pageContext.request.contextPath}/permission/editUser',
					type:'post',
					data:$("form[name='addUserForm']").serializeArray(),
					success:function(val){
						if(val.code == 1){
							alert("编辑用户成功！");
							window.location.href="${pageContext.request.contextPath}/permission/selectAllUser";
						}
						if(val.data == 2){
							alert("编辑用户失败！");
						}
					}
				});
			}
		});

		var oTable1 = $('#sample_table').dataTable( {
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,2,3,4,5,7,8,]}// 制定列不参与排序
		] } );
				

				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});

				});


				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();

					var off2 = $source.offset();
					var w2 = $source.width();

					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			});

</script>
<script type="text/javascript">
$(function() { 
	$("#administrator").fix({
		float : 'left',
		//minStatue : true,
		skin : 'green',	
		durationTime :false,
		spacingw:50,//设置隐藏时的距离
	    spacingh:270,//设置显示时间距
	});
});
//字数限制
function checkLength(which) {
	var maxChars = 100; //
	if(which.value.length > maxChars){
	   layer.open({
	   icon:2,
	   title:'提示框',
	   content:'您输入的字数超过限制!',	
    });
		// 超过限制的字数了就将 文本框中的内容按规定的字数 截取
		which.value = which.value.substring(0,maxChars);
		return false;
	}else{
		var curr = maxChars - which.value.length; //250 减去 当前输入的
		document.getElementById("sy").innerHTML = curr.toString();
		return true;
	}
};
//初始化宽度、高度  
 $(".widget-box").height($(window).height()-215); 
$(".table_menu_list").width($(window).width()-260);
 $(".table_menu_list").height($(window).height()-215);
  //当文档窗口发生改变时 触发  
    $(window).resize(function(){
	$(".widget-box").height($(window).height()-215);
	 $(".table_menu_list").width($(window).width()-260);
	  $(".table_menu_list").height($(window).height()-215);
	})
 laydate({
    elem: '#start',
    event: 'focus' 
});

/*用户-停用*/
function member_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="fa fa-close bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
		$(obj).remove();
		layer.msg('已停用!',{icon: 5,time:1000});
	});
}
/*用户-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="fa fa-check  bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
		$(obj).remove();
		layer.msg('已启用!',{icon: 6,time:1000});
	});
}
/*产品-编辑*/
function member_edit(id){

	layer.open({
		type: 1,
		title:'编辑管理员',
		area: ['700px',''],
		shadeClose: false,
		content: $('#add_administrator_style'),

	});
		$.ajax({
		url:'${pageContext.request.contextPath}/permission/editUserBack?id='+id,
		type:'post',
		success:function(val){
			      $("#form-admin-add")[0].reset();
			      $("#hiddenid").val(val.id);
                  $("#user_name").val(val.user_name);
			      $("#user_password").val(val.user_password);
                  $("#newpassword2").val(val.user_password);
			      $("#user_phone").val(val.user_phone);
			      $("#remark").html(val.remark);
			     var oo  =$("#roleId1").children();
                 $.each(oo,function(i){
                         if($(this).attr("value") == val.roleId){
                            $(this).attr("selected","selected");
						 }

				 });
		}
		});
}

/*产品-删除*/
function member_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});
}
/*添加管理员*/
$('#administrator_add').on('click', function(){
	layer.open({
    type: 1,
	title:'添加管理员',
	area: ['700px',''],
	shadeClose: false,
	content: $('#add_administrator_style'),
	
	});
})
	//表单验证提交
$("#form-admin-add").Validform({
		
		 tiptype:2,
	
		callback:function(data){
		//form[0].submit();
		if(data.status==1){ 
                layer.msg(data.info, {icon: data.status,time: 1000}, function(){ 
                    location.reload();//刷新页面 
                    });   
            } 
            else{ 
                layer.msg(data.info, {icon: data.status,time: 3000}); 
            } 		  
			var index =parent.$("#iframe").attr("src");
			parent.layer.close(index);
			//
		}
		
		
	});	
</script>

