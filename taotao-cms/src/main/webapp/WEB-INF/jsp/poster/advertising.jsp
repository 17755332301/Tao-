<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
        <link href="${pageContext.request.contextPath}/assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/font/css/font-awesome.min.css" />
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-ie.min.css" />
		<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/typeahead-bs2.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/lrtk.js" type="text/javascript" ></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.bootstrap.js"></script>
        <script src="${pageContext.request.contextPath}/assets/layer/layer.js" type="text/javascript" ></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Widget/swfupload/swfupload.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Widget/swfupload/swfupload.queue.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Widget/swfupload/swfupload.speed.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Widget/swfupload/handlers.js"></script>
<title>广告管理</title>
</head>

<body>
<div class=" clearfix" id="advertising">
       <div id="scrollsidebar" class="left_Treeview">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="widget-box side_content" >
    <div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div>
     <div class="side_list">
      <div class="widget-header header-color-green2">
          <h4 class="lighter smaller">广告图分类</h4>
      </div>
      <div class="widget-body">
         <ul class="b_P_Sort_list">
             <li><i class="orange  fa fa-user-secret"></i><a href="#">全部(${number})</a></li>
			 <c:forEach items="${categoryAll}" var="item">
			 <li><i class="fa fa-image pink "></i> <a href="#">${item.category_name}(${item.number})</a></li>
			 </c:forEach>
         </ul>
  </div>
  </div>
  </div>
  </div><div class="Ads_list">
   <div class="border clearfix">
       <span class="l_f">
        <a href="javascript:ovid()" id="ads_add" class="btn btn-warning"><i class="fa fa-plus"></i> 添加广告</a>
        <a href="javascript:ovid()" class="btn btn-danger"><i class="fa fa-trash"></i> 批量删除</a>
       </span>
       <span class="r_f">共：<b>${number}</b>条广告</span>
     </div>
     <div class="Ads_lists">
       <table class="table table-striped table-bordered table-hover" id="sample-table">
		<thead>
		 <tr>
				<th width="25"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th width="80">ID</th>
                <th>排序</th>
				<th width="140">分类</th>
				<th width="200px">图片</th>
				<th width="140px">尺寸（大小）</th>
				<th width="280px">链接地址</th>
				<th width="180">加入时间</th>
				<th width="70">状态</th>
				<th width="230">操作</th>
			</tr>
		</thead>
	<tbody>
	<c:forEach items="${posterList}" var="item">
      <tr>
       <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
       <td>${item.id}</td>
       <td><input name="" type="text"  style=" width:50px" placeholder="${item.poster_sort}"/></td>
       <td>${item.category_name}</td>
       <td><img src="${item.poster_url}" width="130" height="60"/></td>
       <td><a href="#" target="_blank">${item.poster_size}</a></td>
       <td>${item.poster_url}</td>
		<td><fmt:formatDate value="${item.create_time}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
       <td class="td-status"><span class="label label-success radius">显示</span></td>
      <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="fa fa-check  bigger-120"></i></a>
        <a title="编辑" onclick="member_edit('${item.id}')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="fa fa-edit bigger-120"></i></a>
        <a title="删除" href="javascript:;"  onclick="member_del('${item.id}')" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>
       </td>
      </tr>

	</c:forEach>
    </tbody>
    </table>
     </div>
 </div>
</div>

<!--添加广告样式-->

<form name="addPoster">
<div id="add_ads_style"  style="display:none">
 <div class="add_adverts">
 <ul>
  <li>
  <label class="label_name">所属分类</label>
  <span class="cont_style">
  <select class="form-control" name="category_id" id="form-field-select-1">
    <option value="">---选择分类---</option>

  </select></span>
  </li>
  <li><label class="label_name">图片尺寸</label><span class="cont_style">
  <input name="len" type="text" id="form-field-1" placeholder="0" class="col-xs-10 col-sm-5" style="width:80px">
  <span class="l_f" style="margin-left:10px;">x</span><input name="wid" type="text" id="form-field-2" placeholder="0" class="col-xs-10 col-sm-5" style="width:80px"></span></li>
  <li><label class="label_name">显示排序</label><span class="cont_style"><input name="poster_sort" type="text" id="form-field-3" placeholder="0" class="col-xs-10 col-sm-5" style="width:50px"></span></li>
  <li><label class="label_name">链接地址</label><span class="cont_style"><input name="poster_address" type="text" id="form-field-4" placeholder="地址" class="col-xs-10 col-sm-5" style="width:450px"></span></li>
   <li><label class="label_name">状&nbsp;&nbsp;态：</label>
   <span class="cont_style">
     &nbsp;&nbsp;<label><input name="poster_status" type="radio" checked="checked" class="ace" value="0"><span class="lbl">显示</span></label>&nbsp;&nbsp;&nbsp;
     <label><input name="poster_status" type="radio" class="ace" value="1"><span class="lbl">隐藏</span></label></span><div class="prompt r_f"></div>
     </li>
     <li><label class="label_name">图片</label><span class="cont_style">
  <div class="demo" >
	           <div class="logobox"><div class="resizebox"><img id="imgPath" src="${pageContext.request.contextPath}/images/image.png" width="250px" alt="" height="115px"/></div></div>
               <div class="logoupload">
                  <div class="btnbox"><a id="uploadBtnHolder" class="uploadbtn" href="javascript:;">上传替换</a></div>
                  <div style="clear:both;height:0;overflow:hidden;"></div>
                  <div class="progress-box" style="display:none;">
                    <div class="progress-num">上传进度：<b>0%</b></div>
                    <div class="progress-bar"><div style="width:0%;" class="bar-line"></div></div>
                  </div>  <div class="prompt"><p>图片大小小于5MB,支持.jpg;.gif;.png;.jpeg格式的图片</p></div>
              </div>
           </div>
   </span>
  </li>


 </ul>
 </div>
</div>
</form>
</body>
</html>
<script>

	//初始化宽度、高度
 $(".widget-box").height($(window).height());
 $(".Ads_list").width($(window).width()-220);
  //当文档窗口发生改变时 触发
    $(window).resize(function(){
	$(".widget-box").height($(window).height());
	 $(".Ads_list").width($(window).width()-220);
	});
	$(function() {
	$("#advertising").fix({
		float : 'left',
		//minStatue : true,
		skin : 'green',
		durationTime :false,
		stylewidth:'220',
		spacingw:30,//设置隐藏时的距离
	    spacingh:250,//设置显示时间距
		set_scrollsidebar:'.Ads_style',
		table_menu:'.Ads_list'
	});
});
/*广告图片-停用*/
function member_stop(obj,id){
	layer.confirm('确认要关闭吗？',{icon:0,},function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="显示"><i class="fa fa-close bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已关闭</span>');
		$(obj).remove();
		layer.msg('关闭!',{icon: 5,time:1000});
	});
}
/*广告图片-启用*/
function member_start(obj,id){
	layer.confirm('确认要显示吗？',{icon:0,},function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="关闭"><i class="fa fa-check  bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">显示</span>');
		$(obj).remove();
		layer.msg('显示!',{icon: 6,time:1000});
	});resizebox
}
/*广告图片-删除*/
function member_del(id){
	layer.confirm('确认要删除吗？',{icon:0,},function(index){

		$.ajax({
			url:'${pageContext.request.contextPath}/poster/deletePoster',
			type:'post',
			data:{'id':id},
			success:function (val) {
				if(val.code == 1){
					layer.msg('已删除!',{icon:1,time:1000});
					window.location.reload();
				}
				if(val.code == 2){
					layer.msg('删除失败!',{icon:0,time:1000});
				}
			}

		});
	});

}

	/*******添加广告*********/
 $('#ads_add').on('click', function(){
	  layer.open({
        type: 1,
        title: '添加广告',
		maxmin: true,
		shadeClose: false, //点击遮罩关闭层
        area : ['800px' , ''],
        content:$('#add_ads_style'),
		btn:['提交','取消'],
		yes:function(index,layero){
		 var num=0;
		 var str="";
     $(".add_adverts input[type$='text']").each(function(n){
         /* if($(this).val()=="")
          {

			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                title: '提示框',
				icon:0,
          });
		    num++;
            return false;
          } */
		 });
		  if(num>0){  return false;}
          else{

			  var a1 = $("#form-field-select-1").val();
			  if(a1.trim() == '' || a1 == null){
				  layer.alert('请选择分类！',{
					  title: '提示框',
					  icon:0,
				  });
				  return ;
			  }

			  var a2 = $("#form-field-1").val();
			  if(a2.trim() == '' || a2 == null){
				  layer.alert('请输入尺寸！',{
					  title: '提示框',
					  icon:0,
				  });
				  return ;
			  }

			  var a3 = $("#form-field-2").val();
			  if(a3.trim() == '' || a3 == null){
				  layer.alert('请输入尺寸！',{
					  title: '提示框',
					  icon:0,
				  });
				  return ;
			  }

			  var a4 = $("#form-field-3").val();
			  if(a4.trim() == '' || a4 == null){
				  layer.alert('请输入排序！',{
					  title: '提示框',
					  icon:0,
				  });
				  return ;
			  }
			  var a5 = $("#form-field-4").val();
			  if(a5.trim() == '' || a5 == null){
				  layer.alert('请输入链接地址！',{
					  title: '提示框',
					  icon:0,
				  });
				  return ;
			  }

			  $.ajax({
				  url:'${pageContext.request.contextPath}/poster/insertPoster',
				  type:'post',
				  data:$("form[name='addPoster']").serializeArray(),
				  success:function (val) {
					  if(val.code == 1){
						  layer.msg('添加成功!',{icon:1,time:1000});
						  window.location.reload();
					  }
					  if(val.code == 2){
						  layer.alert('添加失败！',{
							  title: '提示框',
							  icon:0,
						  });
					  }

				  }
			  });
		  }
		}
    });
})
</script>
<script type="text/javascript">
function updateProgress(file) {
	$('.progress-box .progress-bar > div').css('width', parseInt(file.percentUploaded) + '%');
	$('.progress-box .progress-num > b').html(SWFUpload.speed.formatPercent(file.percentUploaded));
	if(parseInt(file.percentUploaded) == 100) {
		// 如果上传完成了
		$('.progress-box').hide();
	}
}

function initProgress() {
	$('.progress-box').show();
	$('.progress-box .progress-bar > div').css('width', '0%');
	$('.progress-box .progress-num > b').html('0%');
}

function successAction(fileInfo) {
	var up_path = fileInfo.path;
	var up_width = fileInfo.width;
	var up_height = fileInfo.height;
	var _up_width,_up_height;
	if(up_width > 120) {
		_up_width = 120;
		_up_height = _up_width*up_height/up_width;
	}
	$(".logobox .resizebox").css({width: _up_width, height: _up_height});
	$(".logobox .resizebox > img").attr('src', up_path);
	$(".logobox .resizebox > img").attr('width', _up_width);
	$(".logobox .resizebox > img").attr('height', _up_height);
}

var swfImageUpload;
$(document).ready(function() {
	var settings = {
		flash_url : "${pageContext.request.contextPath}/Widget/swfupload/swfupload.swf",
		flash9_url : "${pageContext.request.contextPath}/Widget/swfupload/swfupload_fp9.swf",
		upload_url: "${pageContext.request.contextPath}/poster/upload",// 接受上传的地址
		file_size_limit : "5MB",// 文件大小限制
		file_types : "*.jpg;*.gif;*.png;*.jpeg;",// 限制文件类型
		file_types_description : "图片",// 说明，自己定义
		file_upload_limit : 100,
		file_queue_limit : 0,
		custom_settings : {},
		debug: false,
		// Button settings
		button_image_url: "${pageContext.request.contextPath}/Widget/swfupload/upload-btn.png",
		button_width: "95",
		button_height: "30 ",
		button_placeholder_id: 'uploadBtnHolder',
		button_window_mode : SWFUpload.WINDOW_MODE.TRANSPARENT,
		button_cursor : SWFUpload.CURSOR.HAND,
		button_action: SWFUpload.BUTTON_ACTION.SELECT_FILE,

		moving_average_history_size: 40,

		// The event handler functions are defined in handlers.js
		swfupload_preload_handler : preLoad,
		swfupload_load_failed_handler : loadFailed,
		file_queued_handler : fileQueued,
		file_dialog_complete_handler: fileDialogComplete,
		upload_start_handler : function (file) {
			initProgress();
			updateProgress(file);
		},
		upload_progress_handler : function(file, bytesComplete, bytesTotal) {
			updateProgress(file);
		},
		upload_success_handler : function(file, data, response) {
			// 上传成功后处理函数
			var fileInfo = eval("(" + data + ")");
			successAction(fileInfo);
		},
		upload_error_handler : function(file, errorCode, message) {
			layer.msg('上传成功!',{icon:1,time:1000});
          //获取到文件的名称
             $.ajax({
				 url:'${pageContext.request.contextPath}/poster/uploadBackPath',
                 type:'post',
				 success:function(val){
					 if(val.code == 1){
						$("#imgPath").attr("src",val.data);
					 }
				 }
			 });
		},
		file_queue_error_handler : function(file, errorCode, message) {
			if(errorCode == -110) {
				alert('您选择的文件太大了。');
			}
		}
	};
	swfImageUpload = new SWFUpload(settings);
});
</script>
<script>
jQuery(function($) {

	//自动加载分类列表
	$.ajax({
		url:'${pageContext.request.contextPath}/poster/selectAllPosterCategory',
		type:'post',
		success:function(val){
			for(var i = 0 ; i < val.length ; i++){
				$("#form-field-select-1").append("<option value="+val[i].id+">"+val[i].category_name+"</option>");
			}

		}
	});


				var oTable1 = $('#sample-table').dataTable( {
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
			})
</script>
