﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>欢迎进入主页</title>
<link href="${pageContext.request.contextPath}/css/reset.css"  rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />

 <!--导航特效-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.js"></script>
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
    <script language="javascript">
　　function   openwin()   {
  　　window.open   ("weixin2.html",   "newwindow",   "height=300,   width=300,   toolbar   =no,   top=200 , left=400,menubar=no,   scrollbars=no,   resizable=no,   location=no,   status=no")   //写成一行
  　　}
    </script>
<style type="text/css">
#massage_box{ position:absolute; background:#fff url("${pageContext.request.contextPath}/images/lang-headerbg.jpg") repeat-x; left:300px; top:49px; width:775px; height:486px;filter:dropshadow(color=#666666,offx=3,offy=3,positive=2); z-index:2; visibility:hidden;padding-top:3px;}
#mask{ position:absolute; top:0; left:0; width:expression(body.scrollWidth); height:expression(body.scrollHeight); filter:ALPHA(opacity=60); z-index:1; visibility:hidden}
.massage{width:100%; height:100%; color:#036; font-size:12px; line-height:150%}
.header{ color:#fff}
#massage_box ul{ margin-right:25; float:left; display:block;}
#massage_box ul li{padding-left:70px; font:12px/24px Candara; color:#093079; }
#massage_box ul li strong{ height:47px; font:bold 14px/47px Candara; color:#093079}
#massage_box ul li a{ color:#093079;font:12px/24px Candara; text-decoration:none;  padding-left:9px; }
#massage_box ul li a:hover{ color:#e37006;font:12px/24px Candara; text-decoration:none; background:url("../images/submenulihover.png") left center no-repeat; padding-left:9px;}
    </style>
</head>
<body>

      <div id="head">
      <div class="headcontent">
        <div id="sbmlogo"><a href=""><h1>XXXX科技有限公司</h1></a></div>
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
              <li><a href="index.html" class="current">首页</a></li>
              <li id=""><a href="prolist.html">产品中心</a>
                <ul>
                    <li><a href="#">ERP软件</a></li>
                    <li><a href="#">财务软件</a>
                    <li><a href="#">加密软件</a></li>
                    <li><a href="#">服务器</a></li>
                </ul>
              </li>
              <li id="">
                <a href="prolist.html">解决方案</a>
                <ul>
                  <li><a href="#">技术解决方案</a></li>
                  <li><a href="#">行业解决方案</a></li>
                  <li><a href="#">成功案例</a></li>
                </ul>
              </li>
              <li id=""><a href="list.html">新闻中心</a>
                <ul>
                  <li><a href="#">公司动态</a></li><li><a href="#">行业资讯</a></li>
                </ul>
              </li>
              <li id=""><a href="download.html">服务支持</a>
                <ul>
               <li><a href="#">资料文档</a></li>
               <li><a href="#">软件更新</a></li>
                </ul>
              </li>
          <li id=""> <a href="about.html">合作伙伴</a>

      <ul>
                  <li><a href="#">渠道战略</a></li><li><a href="#">合作加盟</a></li>
                </ul>
      </li>
    <li id=""><a href="about.html">关于我们</a>
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
           <li data-sPic="${pageContext.request.contextPath}/images/111.jpg" style="background:#fff url(images/11.jpg) center no-repeat;><a href="" class="bannerbg_main" style="background:url(../images/11.jpg) 50% 50% no-repeat;" ></a>         </li>
           <li data-sPic="${pageContext.request.contextPath}/images/222.jpg" style="background:#fff url(images/22.jpg) center no-repeat;><a href="" class="bannerbg_main" style="background:url(../images/22.jpg) 50% 50% no-repeat;" ></a></li>
           <li data-sPic="${pageContext.request.contextPath}/images/333.jpg" style="background:#fff url(images/33.jpg) center no-repeat;><a href="" class="bannerbg_main" style="background:url(../images/33.jpg) 50% 50% no-repeat;" ></a></li>
           <li data-sPic="${pageContext.request.contextPath}/images/444.jpg" style="background:#fff url(images/44.jpg) center no-repeat;><a href="" class="bannerbg_main" style="background:url(../images/44.jpg) 50% 50% no-repeat;" ></a></li>
           <li data-sPic="${pageContext.request.contextPath}/images/555.jpg" style="background:#fff url(images/55.jpg) center no-repeat;"><a href="" class="bannerbg_main" style="background:url(../images/55.jpg) 50% 50% no-repeat;" ></a></li>
          </ul>

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
          if (e && e.stopPropagation){
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
<li><a href="proview.html">财务软件解决方案</a></li>
<li><a href="proview.html">员工管理软件解决方案</a></li>
<li><a href="proview.html">房地产行业管理方案</a></li>
<li><a href="proview.html">互联网方案</a></li>
<li><a href="proview.html">安全加密方案</a></li>
<li><a href="proview.html">特殊行业解决方案</a></li>
          </ul>

          <div id="prosearch">
        </div>
          <div class="miningprocess"><a href="">查看更多解决方案</a></div>
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
          <h2>简介</h2>
          <div><a href="javascript:void()">十年专业咨询顾问和大数据服务经验，是中国行业发展数据，信息及分析的领导服务企业，致力于为企业提供一站式数据信息服务平台。 通过“专业的，深入的，及时的，精准的，权威的”数据信息，为企业提供综合数据信息内容服务。 </a>
          </div>
          <a href="" class="learnmore">查看更多</a>  <br/><br/>
            <wb:follow-button uid="" type="red_3" width="100%" height="24" ></wb:follow-button>
          <div><a href='#' onclick='openwin()'><img src="images/weixin1.png" style='margin-left:38px'/></a><a href=''>&nbsp;&nbsp;&nbsp;微信公众号</a></div>
        </div>
        <div class="clear"></div>
      </div>
    </div>
    </div>

<!--底部-->
 <div id="footer">
      <div class="footercontent">
        <div class="share">
          <span class="follow"><a href="" class="sharetwitter"></a>
            <a href=""  class="sharefacebook"></a></span> <a href="#" class="top"></a>
        </div>
        <div class="links">Copyright © 2016 芜湖科技有限公司. All rights reserved</div>
        <div class="contacts">
          <ul>
            <li class="tel">400-800-8800</li>
            <li class="fax">025-8888888</li>
            <li class="email"><a href="">123456@123.com</a></li>
          </ul>
        </div>
        <div class="clear"></div>
      </div>
<div style="width:100%;height:100%;;background-color:#07132d"">
     <div style="width:960px;height:90px;margin:0 auto;background-color:#07132d;color:#41638d">友情链接:
      <a href="http://www.baidu.com" style="color:#41638d" target="_blank">百度</a>
</div>

</div>
 </div>
</body>
</html>