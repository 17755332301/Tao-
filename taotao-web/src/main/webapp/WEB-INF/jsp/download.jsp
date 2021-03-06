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
    <link href="${pageContext.request.contextPath}/css/defined-li.css"  rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/111.ico">
    <!--导航特效-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/smartmenu-min.js"></script>
    <script type="text/javascript">
        jQuery(window).ready(function () {
            jQuery("#navigation").Smartmenu({ animationDuration: 350 });
        });
        //SyntaxHighlighter.all();
    </script>
    <!--导航特效end-->
    
    <script language="javascript">
        var Obj = ''
        document.onmouseup = MUp
        document.onmousemove = MMove

        function MDown(Object) {
            Obj = Object.id
            document.all(Obj).setCapture()
            pX = event.x - document.all(Obj).style.pixelLeft;
            pY = event.y - document.all(Obj).style.pixelTop;
        }

        function MMove() {
            if (Obj != '') {
                document.all(Obj).style.left = event.x - pX;
                document.all(Obj).style.top = event.y - pY;
            }
        }

        function MUp() {
            if (Obj != '') {
                document.all(Obj).releaseCapture();
                Obj = '';
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
              <li id=""><a href="${pageContext.request.contextPath}/download">服务支持</a>
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


 <div id="body" style="background:none">
    <div class="subbanner" style="background:url(images/inquirybgbg.png) top center repeat-x">
      <div class="subbannercontent" style=" width:100%; background:url(images/inquirybg.png) top center no-repeat">
        <div class="subbody" style="padding-top:31px; top:145px;">
          <div class="contact-content">
            <div class="inquiry-content-left">
              <div class="inquiry-content-left-head">服务支持</div>
              <div class="inquiry-content-left-body">

          
                <table><tr><td width="640" height="20"></td></tr></table>
                <table cellpadding="0" cellspacing="0" border="0">
                   <tr>
                     <td width="110" valign="top">
                     <img src="images/inquiry-step-2.jpg" width="94" height="36" style="margin-top:10px;" />
                     </td>
                     <td width="540">
                     <div class="address-head">
                     <span style="float:left;font-family:微软雅黑">文档方案</span>
                     <input type="hidden" name="ycid" value="$info.id" />
                     <span style="float:right;font-family:微软雅黑">[<a href="">下载</a>]2014-02-10</span>
                     </div><p></p>
                     </td>
                     </tr>
                    <tr>
                      <td></td>
                      <td><div style="height:5px; border-bottom:1px dashed #999"></div></td>
                    </tr>
                    </table>  

<table><tr><td width="640" height="20"></td></tr></table>
                <table cellpadding="0" cellspacing="0" border="0">
                   <tr>
                     <td width="110" valign="top">
                     <img src="images/inquiry-step-2.jpg" width="94" height="36" style="margin-top:10px;" />
                     </td>
                     <td width="540">
                     <div class="address-head">
                     <span style="float:left;font-family:微软雅黑">文档方案</span>
                     <input type="hidden" name="ycid" value="$info.id" />
                     <span style="float:right;font-family:微软雅黑">[<a href="">下载</a>]2014-02-10</span>
                     </div><p></p>
                     </td>
                     </tr>
                    <tr>
                      <td></td>
                      <td><div style="height:5px; border-bottom:1px dashed #999"></div></td>
                    </tr>
                    </table> 

<table><tr><td width="640" height="20"></td></tr></table>
                <table cellpadding="0" cellspacing="0" border="0">
                   <tr>
                     <td width="110" valign="top">
                     <img src="images/inquiry-step-2.jpg" width="94" height="36" style="margin-top:10px;" />
                     </td>
                     <td width="540">
                     <div class="address-head">
                     <span style="float:left;font-family:微软雅黑">文档方案</span>
                     <input type="hidden" name="ycid" value="$info.id" />
                     <span style="float:right;font-family:微软雅黑">[<a href="">下载</a>]2014-02-10</span>
                     </div><p></p>
                     </td>
                     </tr>
                    <tr>
                      <td></td>
                      <td><div style="height:5px; border-bottom:1px dashed #999"></div></td>
                    </tr>
                    </table> 

<table><tr><td width="640" height="20"></td></tr></table>
                <table cellpadding="0" cellspacing="0" border="0">
                   <tr>
                     <td width="110" valign="top">
                     <img src="images/inquiry-step-2.jpg" width="94" height="36" style="margin-top:10px;" />
                     </td>
                     <td width="540">
                     <div class="address-head">
                     <span style="float:left;font-family:微软雅黑">文档方案</span>
                     <input type="hidden" name="ycid" value="$info.id" />
                     <span style="float:right;font-family:微软雅黑">[<a href="">下载</a>]2014-02-10</span>
                     </div><p></p>
                     </td>
                     </tr>
                    <tr>
                      <td></td>
                      <td><div style="height:5px; border-bottom:1px dashed #999"></div></td>
                    </tr>
                    </table> 

   
               
               
              </div>
                </div>
                  
                  <div class="inquiry-content-right" style="margin-bottom: 130px;">
                    <div class="inquiry-content-right-head">
                      <p><a href="www.51taorui.com">首页</a> > 服务支持 > <a href="">资料下载</a></p>
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
                <p>
                  <!-- JiaThis Button BEGIN --><div class="jiathis_style_32x32">
                  <a class="jiathis_button_qzone"></a>
                  <a class="jiathis_button_tsina"></a>
                  <a class="jiathis_button_tqq"></a>
                  <a class="jiathis_button_weixin"></a>
                  <a class="jiathis_button_renren"></a>
                  <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
                  </div>
                  <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1367461003302510" charset="utf-8"></script>
                  <!-- JiaThis Button END -->
                </p>
              </div>
            </div>
                </div>
                </div>
                </div>
                </div>
                  <div class="clear"></div>
                </div>
</div>
     <!--底部-->
     <div style="font-size: 14px;">
         <%@include file="foot.jsp"%>
     </div>

</body>
</html>
