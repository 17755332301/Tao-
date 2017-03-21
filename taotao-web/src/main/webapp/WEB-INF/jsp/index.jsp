<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>欢迎进入主页</title>




<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/111.ico">
 <!--导航特效-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/smartmenu-min.js" ></script>
<script type="text/javascript">
      jQuery(window).ready(function() {
          jQuery("#navigation").Smartmenu({animationDuration: 350});
      })
      </script>
<!--导航特效end-->
  <script type="text/javascript">

      //百度统计
      var _hmt = _hmt || [];
      (function() {
          var hm = document.createElement("script");
          hm.src = "//hm.baidu.com/hm.js?f64d32151bb3677d279bd7062ddfb6de";
          var s = document.getElementsByTagName("script")[0];
          s.parentNode.insertBefore(hm, s);
      })();

    var Obj=''
      document.onmouseup=MUp
      document.onmousemove=MMove
      function MDown(Object){
      Obj=Object.id
      document.all(Obj).setCapture()
      pX=event.x-document.all(Obj).style.pixelLeft;
      pY=event.y-document.all(Obj).style.pixelTop;
      }
      function MMove(){
      if(Obj!=''){
      document.all(Obj).style.left=event.x-pX;
      document.all(Obj).style.top=event.y-pY;
      }
      }
      function MUp(){
      if(Obj!=''){
      document.all(Obj).releaseCapture();
      Obj='';
      }
      }
    </script>
    <script language="javascript">
　　function   openwin()   {
  　　window.open   ("weixin2.html",   "newwindow",   "height=300,   width=300,   toolbar   =no,   top=200 , left=400,menubar=no,   scrollbars=no,   resizable=no,   location=no,   status=no")   //写成一行
  　　}

    </script>
<style type="text/css">
#massage_box{ position:absolute; background:#fff url("${pageContext.request.contextPath}/images/lang-headerbg.jpg") repeat-x; left:300px; top:49px; width:775px; height:486px;filter:dropshadow(color=#FF0042,offx=3,offy=3,positive=2); z-index:2; visibility:hidden;padding-top:3px;}
#mask{ position:absolute; top:0; left:0; width:expression(body.scrollWidth); height:expression(body.scrollHeight); filter:ALPHA(opacity=60); z-index:1; visibility:hidden}
.massage{width:100%; height:100%; color:#6a6a6a; font-size:12px; line-height:150%}
.header{ color:H}
#massage_box ul{ margin-right:25; float:left; display:block;}
#massage_box ul li{padding-left:70px; font:12px/24px Candara; color:#FF0042; }
#massage_box ul li strong{ height:47px; font:bold 14px/47px Candara; color:#FF0042}
#massage_box ul li a{ color:#FF0042;font:12px/24px Candara; text-decoration:none;  padding-left:9px; }
#massage_box ul li a:hover{ color:#FF0042;font:12px/24px Candara; text-decoration:none; background:url("../images/submenulihover.png") left center no-repeat; padding-left:9px;}

body, button, input, select, textarea {
    color: #6a6a6a;
    font: 14px/1.6 arial,"Microsoft Yahei","Hiragino Sans GB",sans-serif;
}
.clear::after {
    clear: both;
    content: " ";
    display: block;
    height: 0;
}
.common-top-nav {
    background-color: #333;
    font-size: 12px;
    height: 40px;
    min-width: 990px;
    position: relative;
    z-index: 7999;
}
.clear {
}

</style>
</head>
<body>
<div id="head">
      <div class="headcontent">
        <div id="sbmlogo"><a href="http://www.51taorui.com"><h1>芜湖淘瑞科技有限公司</h1></a></div>
        <div class="topright">
          <div id="logoright">
            <!--popwindow end-->
            <div id="search">

              <form action="http://www.baidu.com/" id="searchform" name="searchform" target="_blank">
                <div>
                  <input type="hidden" name="cx" value="006465712199409902246:uo3hlxpkyqo" />
                  <input type="hidden" name="ie" value="UTF-8" />
                  <input type="text" name="q" id="searchkey" value="Search" onfocus="this.className='m_off';if (this.value=='Search') {this.value=''}" onblur="this.className='m_on' ;if (value=='' ) {value='Search'}" />
                  <input type="submit" name="sa" value="    " onclick="_gaq.push(['_trackEvent','sitesearch','search_headbar','']);" />
                </div>
              </form>

            </div>
          </div>
          <div class="clear"></div>
          <div id="navigation" class="smartmenu">
            <ul class="oo">
              <li><a href="http://www.51taorui.com" class="current">首页</a></li>
              <li><a href="${pageContext.request.contextPath}/prolist">产品中心</a>
                <ul>
                    <li><a href="#">ERP软件</a></li>
                    <li><a href="#">财务软件</a>
                    <li><a href="#">加密软件</a></li>
                    <li><a href="#">服务器</a></li>
                </ul>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/prolist">解决方案</a>
                <ul>
                  <li><a href="#">技术解决方案</a></li>
                  <li><a href="#">行业解决方案</a></li>
                  <li><a href="#">成功案例</a></li>
                </ul>
              </li>
              <li><a href="${pageContext.request.contextPath}/list">新闻中心</a>
                <ul>
                  <li><a href="#">公司动态</a></li><li><a href="#">行业资讯</a></li>
                </ul>
              </li>
              <li><a href="${pageContext.request.contextPath}/download">服务支持</a>
                <ul>
               <li><a href="http://www.51taorui.com/doc/Ajax.docx">资料文档</a></li>
               <li><a href="#">软件更新</a></li>
                </ul>
              </li>
          <li> <a href="${pageContext.request.contextPath}/about">合作伙伴</a>

      <ul>
                  <li><a href="#">渠道战略</a></li><li><a href="#">合作加盟</a></li>
                </ul>
      </li>
    <li><a href="${pageContext.request.contextPath}/about">关于我们</a>
                 <ul>
                  <li><a href="#">公司介绍</a></li>
                  <li><a href="#">联系我们</a></li>
                  <li><a href="#">招贤纳士</a></li>
                  <li><a href="#">在线地图</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
        <div class="clear"></div>
      </div>
    </div>


 <div id="body">
<div id="container" style="overflow:hidden;">
        <div id="imageShow">
          <div id="imgshow_mask"></div>
            <ul class="imagebg" id="imagebg">
              <c:forEach items="${pjPoster}" var="item">
              <li data-sPic="${item.poster_small_url}" style="background:#fff url(${item.poster_url}) center no-repeat;"><a href="" class="bannerbg_main" style="background:url(${item.poster_url}) 50% 50% no-repeat;" ></a></li>
              </c:forEach>
          </ul>
         <%--   --%>
          <div class="scrollbg">
            <div class="scroll">
              <a id="left_img_btn" class="s_pre" href="javascript:void(0)"></a>
              <div class="current" id="current"></div>
              <div class="outScroll_pic">
                <ul class="scroll_pic cls" id="small_pic"></ul>
              </div>
              <a id="right_img_btn" class="s_next" href="javascript:void(0)"></a>
            </div>
          </div>
        </div>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/imgSlider.js"></script>
    <script type="text/javascript">
        img.init();
        img.play(0);
        //阻止事件冒泡
        function estop(e){
            var e=arguments.callee.caller.arguments[0]||event;
            if (e || e.stopPropagation){
                //因此它支持W3C的stopPropagation()方法
                e.stopPropagation();
            }else{
                //否则，我们需要使用IE的方式来取消事件冒泡
                window.event.cancelBubble = true;
                return false;
            }
        }
    </script>


      </div>

<!--首页内容处-->
    <div class="bottom">
      <div class="bottomcontent">
        <div class="bottomleft">
          <ul>
<li><a href="${pageContext.request.contextPath}/proview">财务软件解决方案</a></li>
<li><a href="${pageContext.request.contextPath}/proview">员工管理软件解决方案</a></li>
<li><a href="${pageContext.request.contextPath}/proview">房地产行业管理方案</a></li>
<li><a href="${pageContext.request.contextPath}/proview">互联网方案</a></li>
<li><a href="${pageContext.request.contextPath}/proview">安全加密方案</a></li>
<li><a href="${pageContext.request.contextPath}/proview">特殊行业解决方案</a></li>
          </ul>

          <div id="prosearch">
        </div>
         <%-- <div class="miningprocess"><a href="">查看更多解决方案</a></div>--%>
        </div>
        <div class="bottomcenter">
          <div class="centerleft">
            <h2>产品</h2>
            <ul>
              <li><a href="">应用与数据安全防护</a></li>
              <li><a href="">网络安全防护</a></li>
              <li><a href="">安全服务</a></li>
              <li><a href="">云计算与虚拟化</a></li>
              <li><a href="">网络与应用性能管理</a></li>
              <li><a href="">舆情监测系统</a></li>
            </ul>
            <a href="" class="learnmore">查看更多</a>
          </div>

          <div class="centerright">
            <h2>新闻</h2>
            <div class="news">
               <a href="">全球互联网产业研究之...</a><span>2016-01-02</span><div style="height:5px;"></div>
               <a href="">企业用户的AWS云安全和“人工智能”</a><span>2016-01-02</span><div style="height:5px;"></div>
               <a href="">运动健身类行业研究报告</a><span>2016-01-02</span><div style="height:5px;"></div>
            </div>
            <a href="" class="learnmore">查看更多</a>
         </div>
          <div class="clear"></div>
        </div>
        <div class="bottomright">
          <h2>视频</h2>
            <div style="text-align: center;margin-top: 10px;">
                <video width="225px" height=125px" style="background:#000;" controls="controls">
                    <source src="http://www.51taorui.com/video/aa.mp4" type="video/mp4">
                    您的浏览器不支持此种视频格式。
                </video>
            </div>
          <a href="" class="learnmore">查看更多</a>  <br/><br/>
            <wb:follow-button uid="" type="red_3" width="100%" height="24" ></wb:follow-button>
          <div><a href='#' onclick='openwin()'><img src="../../images/weixin1.png" style='margin-left:38px'/></a><a href=''>&nbsp;&nbsp;&nbsp;微信公众号</a></div>
        </div>
        <div class="clear"></div>
      </div>
    </div>
    </div>

<!--底部-->
<%@include file="foot.jsp"%>
</body>
</html>