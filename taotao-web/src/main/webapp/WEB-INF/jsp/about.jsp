<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>蘑街街网</title>
<link href="${pageContext.request.contextPath}/css/reset.css"  rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/main.css"  rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/sub.css"  rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/111.ico">
    <!--导航特效-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/smartmenu-min.js" ></script>
    <script type="text/javascript">
      jQuery(window).ready(function(){
      jQuery("#navigation").Smartmenu({animationDuration: 350});
      });
      //SyntaxHighlighter.all();
    </script>
    <!--导航特效end-->
    
    <script language="javascript">
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
    <style type="text/css">
      #massage_box{ position:absolute; background:#fff url("../images/headerbg.jpg") repeat-x; left:300px; top:49px; width:775px; height:486px;filter:dropshadow(color=#666666,offx=3,offy=3,positive=2); z-index:2; visibility:hidden;/* border-top:3px #ea820e solid;*/ padding-top:3px;}
      #mask{ position:absolute; top:0; left:0; width:expression(body.scrollWidth); height:expression(body.scrollHeight); filter:ALPHA(opacity=60); z-index:1; visibility:hidden}
      .massage{/*border:#036 solid; border-width:1 1 3 1;*/ width:100%; height:100%; color:#036; font-size:12px; line-height:150%}
      .header{ color:#fff}
      #massage_box ul{ margin-right:25; float:left; display:block;}
      #massage_box ul li{padding-left:70px; font:12px/24px Candara; color:#093079; }
      #massage_box ul li strong{ height:47px; font:bold 14px/47px Candara; color:#093079}
      #massage_box ul li a{ color:#093079;font:12px/24px Candara; text-decoration:none;  padding-left:9px; }
      #massage_box ul li a:hover{ color:#e37006;font:12px/24px Candara; text-decoration:none; background:url("../../images/submenulihover.png"/) left center no-repeat; padding-left:9px;}
    </style>
</head>
<body>
<div id="head">
      <div class="headcontent">
        <div id="sbmlogo"><a href="http://www.51taorui.com"><h1>XXXX科技有限公司</h1></a></div>
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
            <ul>
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
    <li id=""><a href="${pageContext.request.contextPath}/about">关于我们</a>
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


  <div id="body" style="background:none;margin-bottom:125px;">  <div class="subbanner" style="background:url(images/supportbgbg.jpg) top center repeat-x;">
    <div class="subbannercontent" style=" width:100%;background:url(images/supportbg.jpg) top center no-repeat;">
      <div class="subbody" style="padding-top:31px;">
        <div class="subbodyleft">
          <ul>
            <li class="firstli">关于我们</li>
           <li><a href="">公司介绍</a></li><li><a href="">联系我们</a></li><li><a href="">招贤纳士</a></li><li><a href="">在线地图</a></li>
          </ul>
          <div class="follows">
          </div>
        </div>
        
        <div class="subbodyright">
          <div class="location" style="line-height:30px;"><a href="/">首页</a> - <a href="">关于我们</a> - 公司介绍</div>
          <h2>ABOUT Us</h2>                                       
          <div class="post" id="post-262">
 
  
            <div class="newscontent">
              <div class="entry"><p>为保护世界上最重要的数据，与您携手
 
WonderTech一流的合作伙伴计划使渠道合作伙伴能够轻松地为客户提供专业、创新的数据加密解决方案。立即加入计划，您将能够获得全国技术服务支持、培训支持、市场活动支持、网络推广及代理商促销等优势。</p></div>
            </div>
            <div class="navigation">
              <div class="alignleft"></div>
            </div>
            
          </div>
          <div class="bottomhelp"></div>
          <h3></h3>
          <div class="clear"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
    </div>
  </div>
<!--底部-->
<div style="font-size: 14px;">
    <%@include file="foot.jsp"%>
</div>
</body>
</html>
