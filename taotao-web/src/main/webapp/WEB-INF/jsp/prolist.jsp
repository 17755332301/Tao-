﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>蘑街街网</title>
    <link href="${pageContext.request.contextPath}/css/reset.css"  rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/sub.css"  rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/pro.css"  rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/111.ico">
    <!--导航特效-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/smartmenu-min.js"></script>
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
      #massage_box{ position:absolute; background:#fff url("../images/lang-headerbg.jpg") repeat-x; left:300px; top:49px; width:775px; height:486px;filter:dropshadow(color=#666666,offx=3,offy=3,positive=2); z-index:2; visibility:hidden;/* border-top:3px #ea820e solid;*/ padding-top:3px;}
      #mask{ position:absolute; top:0; left:0; width:expression(body.scrollWidth); height:expression(body.scrollHeight); filter:ALPHA(opacity=60); z-index:1; visibility:hidden}
      .massage{/*border:#036 solid; border-width:1 1 3 1;*/ width:100%; height:100%; color:#036; font-size:12px; line-height:150%}
      .header{ color:#fff}
      #massage_box ul{ margin-right:25; float:left; display:block;}
      #massage_box ul li{padding-left:70px; font:12px/24px Candara; color:#093079; }
      #massage_box ul li strong{ height:47px; font:bold 14px/47px Candara; color:#093079}
      #massage_box ul li a{ color:#093079;font:12px/24px Candara; text-decoration:none;  padding-left:9px; }
      #massage_box ul li a:hover{ color:#e37006;font:12px/24px Candara; text-decoration:none; background:url("../../images/submenulihover.png") left center no-repeat; padding-left:9px;}
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
               <li><a href="#">资料文档</a></li>
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
<div id="body" style="background:none;margin-bottom: 150px;" >
      <div class="subbanner" style="background:url(images/productbg.png) top center repeat-x">
        <div class="subbannercontent" style=" width:100%; background:url(images/productbg.png) top center no-repeat">
          <div class="subbody">
            <div class="location"><a href="">首页</a> > <a href="">产品中心</a> > <a href="">安全管理软件</a></div>
            <h2>PRODUCTS</h2>
            <div class="project-content-left-body">
              <ul id="tabmenu" class="tabmenupro">
                <li class="active"><a href="">应用/数据安全防护</a></li>
                <li><a href="">应用/数据安全防护</a></li>
                <li><a href="">安全服务产品</a></li>
                <li><a href="">云计算与虚拟化</a></li>
                <li><a href="">网络/应用性能管理</a></li>
                <li><a href="">舆情监测系统</a></li>
              </ul>
              <div class="clear"></div>
              
 
               <div class="project-main"><div class="project-main-nr">
                <a href="proview.html"><img src="images/p1.jpg" height="107" width="167" /></a>
                <div class="project-main-nr-des"><h3><a href="proview.html">管理软件</a></h3>
                <p>企业内部网络的终端的综合管理。通常包含行为监控、补丁分发、ip等远程设置、进程封杀和禁用U盘等外设等众多话题。从技术上可以理解为在操作系统、杀 毒之外，对三不管的空间采用的防护管理措施。 客观上来说，内网管理促进了网络的运营安全、稳定性、可靠性、网络的封闭性、可管理性等作用。</p><p class="address-head"></p>
                </div></div></div>
<div class="project-main"><div class="project-main-nr">
                <a href="proview.html"><img src="images/p2.jpg" height="107" width="167" /></a>
                <div class="project-main-nr-des"><h3><a href="proview.html">认证软件</a></h3>
                <p>企业内部网络的终端的综合管理。通常包含行为监控、补丁分发、ip等远程设置、进程封杀和禁用U盘等外设等众多话题。从技术上可以理解为在操作系统、杀 毒之外，对三不管的空间采用的防护管理措施。 客观上来说，内网管理促进了网络的运营安全、稳定性、可靠性、网络的封闭性、可管理性等作用。</p><p class="address-head"></p>
                </div></div></div>
<div class="project-main"><div class="project-main-nr">
                <a href="proview.html"><img src="images/p3.jpg" height="107" width="167" /></a>
                <div class="project-main-nr-des"><h3><a href="proview.html">ERP软件</a></h3>
                <p>企业内部网络的终端的综合管理。通常包含行为监控、补丁分发、ip等远程设置、进程封杀和禁用U盘等外设等众多话题。从技术上可以理解为在操作系统、杀 毒之外，对三不管的空间采用的防护管理措施。 客观上来说，内网管理促进了网络的运营安全、稳定性、可靠性、网络的封闭性、可管理性等作用。</p><p class="address-head"></p>
                </div></div></div>
<div class="project-main"><div class="project-main-nr">
                <a href="proview.html"><img src="images/p4.jpg" height="107" width="167" /></a>
                <div class="project-main-nr-des"><h3><a href="proview.html">财务软件</a></h3>
                <p>企业内部网络的终端的综合管理。通常包含行为监控、补丁分发、ip等远程设置、进程封杀和禁用U盘等外设等众多话题。从技术上可以理解为在操作系统、杀 毒之外，对三不管的空间采用的防护管理措施。 客观上来说，内网管理促进了网络的运营安全、稳定性、可靠性、网络的封闭性、可管理性等作用。</p><p class="address-head"></p>
                </div></div></div>

                
            
              
            </div>
            <div class="proright">
                   <div class="inquiry-content-right-nr">
                <h4>联系我们</h4>
                <p>如果您对我们的产品有任何疑问或者想要咨询，请拨打咨询热线：400-800-8888 或者: </p>
                <p class="chat-now"><a href="javascript:void()"  target="_blank">在线咨询</a></p>
                <div class="sidebar-contact">
                  <ul>
                    <li class="sidetel">全国免费咨询热线：400-800-8888</li>
                    <li class="sidetel2">联系电话：025-8888888</li>
                    <li class="sideemail">邮箱：<a href="">123456@123.com</a></li>
                    <li class="sidefax">传真：025-8888888</li>
                  </ul>
                </div>
              </div>
          <div class="inquiry-content-right-nr">
                <h4>最新新闻 <a href="" class="sidemore">更多></a></h4>
             <div class="inquiry-nr-detail"><a href="">网络音乐“后版权”时代：原创音乐交易已盛行</a><br />[2016-06-05]</div>
<div class="inquiry-nr-detail"><a href="">校园现金贷成本“爆表” 部分平台实际年化利率超70%</a><br />[2016-06-05]</div>
<div class="inquiry-nr-detail"><a href="">游久游戏刘亮辞去董事、副董事长职务 公司新提名2名董事</a><br />[2016-06-05]</div>
  
         </div>
              
               <div class="inquiry-content-right-nr">
                <h4>您有可能关注我司其他产品</h4>
                 <p><a href="">服务器</a></p><p><a href="">管理软件</a></p><p><a href="">财务软件</a></p>
                <p>&nbsp;</p>
              </div>
                 <div class="inquiry-content-right-nr2">
                <h4>分享，让更多人知道我们</h4>
                <!-- JiaThis Button BEGIN --><div class="jiathis_style_32x32">
                  <a class="jiathis_button_qzone"></a>
                  <a class="jiathis_button_tsina"></a>
                  <a class="jiathis_button_tqq"></a>
                  <a class="jiathis_button_weixin"></a>
                  <a class="jiathis_button_renren"></a>
                  <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
                  </div>
                  <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1367461003302510" charset="utf-8"></script>
                  <!-- JiaThis Button END -->              </div>
            </div>
            <div class="clear"></div>
          </div>
        </div>
      </div>
      <div class="clear"></div>
    </div>
      <!--底部-->
      <div style="font-size: 14px;">
          <%@include file="foot.jsp"%>
      </div>

</body>
</html>
