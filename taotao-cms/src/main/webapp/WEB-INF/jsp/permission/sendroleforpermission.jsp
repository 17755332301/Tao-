<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/5/27
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分配权限</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/demo.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.ztree.core-3.5.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.ztree.excheck-3.5.js"></script>
</head>
<SCRIPT type="text/javascript">

    var setting = {
        check: {
            enable: true,
            chkboxType: {"Y":"ps", "N":""}
        },
        view: {
            dblClickExpand: false
        },
        data: {
            simpleData: {
                enable: true,
                idKey: "id",
                pIdKey: "pid"
            }
        },
        callback: {
            beforeClick: beforeClick,
            onCheck: onCheck
        }
    };

    var zNodes =${pjCooPermissionList};

    function beforeClick(treeId, treeNode) {
        var zTree = $.fn.zTree.getZTreeObj("treeDemo");
        zTree.checkNode(treeNode, !treeNode.checked, null, true);
        return false;
    }

    function onCheck(e, treeId, treeNode) {
        var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
                nodes = zTree.getCheckedNodes(true),
                v = "";
        for (var i=0, l=nodes.length; i<l; i++) {
            v += nodes[i].name + ",";
        }
        if (v.length > 0 ) v = v.substring(0, v.length-1);
        var cityObj = $("#citySel");
        cityObj.attr("value", v);
    }

    function showMenu() {
        var cityObj = $("#citySel");
        var cityOffset = $("#citySel").offset();
        $("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");

        $("body").bind("mousedown", onBodyDown);
    }
    function hideMenu() {
        $("#menuContent").fadeOut("fast");
        $("body").unbind("mousedown", onBodyDown);
    }
    function onBodyDown(event) {
        if (!(event.target.id == "menuBtn" || event.target.id == "citySel" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
            hideMenu();
        }
    }

    $(document).ready(function(){
        $.fn.zTree.init($("#treeDemo"), setting, zNodes);

    });

</SCRIPT>
<body>
<input type="hidden" id="roleid" value="${id}">
<div class="content_wrap">
    <div class="zTreeDemoBackground left">
        <ul class="list">
            <li class="title">&nbsp;&nbsp;权限树: <input id="citySel" type="text" readonly value="" style="width:120px;" onclick="showMenu();" />
                &nbsp;<a id="menuBtn" href="#" onclick="showMenu(); return false;">选择权限</a></li>
        </ul>
    </div>

<div id="menuContent" class="menuContent" style="display:none; position: absolute;">
    <ul id="treeDemo" class="ztree" style="margin-top:0; width:180px; height: 300px;"></ul>
</div>
    <input type="button" onclick="tijiao()" id="tijiao" value="提交"/>
</body>
<script>
    function tijiao(){
        var id = $("#roleid").val();
        var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
        var nodes = treeObj.getCheckedNodes(true);
        //alert(nodes.length);
        var str=[];
        for(var i=0;i<nodes.length;i++){
           str.push(nodes[i].id);
        }
        //alert(str);
        $.post("<%=request.getContextPath()%>/permission/sendRolePermission?id="+id+"&str="+str,function(msg){
               if(msg.code == 1){
                   alert(msg.data);
               }
               if(msg.code == 2){
                   alert(msg.data);
               }
        });
        window.close();
    }
</script>
</html>
