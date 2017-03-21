﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>蘑街街网</title>
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/sub.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/pro.css" rel="stylesheet" type="text/css" />
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
      #massage_box {
      position: absolute;
      background: #fff url("../images/lang-headerbg.jpg") repeat-x;
      left: 300px;
      top: 49px;
      width: 775px;
      height: 486px;
      filter: dropshadow(color=#666666, offx=3, offy=3, positive=2);
      z-index: 2;
      visibility: hidden;
      padding-top: 3px;
      }
      #mask {
      position: absolute;
      top: 0;
      left: 0;
      width:expression(body.scrollWidth);
      height:expression(body.scrollHeight);
      filter: ALPHA(opacity=60);
      z-index: 1;
      visibility: hidden
      }
      .massage {
      width: 100%;
      height: 100%;
      color: #036;
      font-size: 12px;
      line-height: 150%
      }
      .header {
      color: #fff
      }
      #massage_box ul {
      margin-right: 25;
      float: left;
      display: block;
      }
      #massage_box ul li {
      padding-left: 70px;
      font: 12px/24px Candara;
      color: #093079;
      }
      #massage_box ul li strong {
      height: 47px;
      font: bold 14px/47px Candara;
      color: #093079
      }
      #massage_box ul li a {
      color: #093079;
      font: 12px/24px Candara;
      text-decoration: none;
      padding-left: 9px;
      }
      #massage_box ul li a:hover {
      color: #e37006;
      font: 12px/24px Candara;
      text-decoration: none;
      background: url("../images/submenulihover.png") left center no-repeat;
      padding-left: 9px;
      }
      #hovera a:hover{text-decoration:none;padding-left:5px;}
    </style>
    
    <!--related pro scroll js-->
    <script language="javascript">
      <!--
      //图片滚动列表 mengjia 070927
      var Speed_1 = 10; //速度(毫秒)
      var Space_1 = 20; //每次移动(px)
      var PageWidth_1 = 134 * 5; //翻页宽度
      var interval_1 = 7000; //翻页间隔
      var fill_1 = 0; //整体移位
      var MoveLock_1 = false;
      var MoveTimeObj_1;
      var MoveWay_1="right";
      var Comp_1 = 0;
      var AutoPlayObj_1=null;
      function GetObj(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}}
      function AutoPlay_1(){clearInterval(AutoPlayObj_1);AutoPlayObj_1=setInterval('ISL_GoDown_1();ISL_StopDown_1();',interval_1)}
      function ISL_GoUp_1(){if(MoveLock_1)return;clearInterval(AutoPlayObj_1);MoveLock_1=true;MoveWay_1="left";MoveTimeObj_1=setInterval('ISL_ScrUp_1();',Speed_1);}
      function ISL_StopUp_1(){if(MoveWay_1 == "right"){return};clearInterval(MoveTimeObj_1);if((GetObj('ISL_Cont_1').scrollLeft-fill_1)%PageWidth_1!=0){Comp_1=fill_1-(GetObj('ISL_Cont_1').scrollLeft%PageWidth_1);CompScr_1()}else{MoveLock_1=false}
      AutoPlay_1()}
      function ISL_ScrUp_1(){if(GetObj('ISL_Cont_1').scrollLeft<=0){GetObj('ISL_Cont_1').scrollLeft=GetObj('ISL_Cont_1').scrollLeft+GetObj('List1_1').offsetWidth}
      GetObj('ISL_Cont_1').scrollLeft-=Space_1}
      function ISL_GoDown_1(){clearInterval(MoveTimeObj_1);if(MoveLock_1)return;clearInterval(AutoPlayObj_1);MoveLock_1=true;MoveWay_1="right";ISL_ScrDown_1();MoveTimeObj_1=setInterval('ISL_ScrDown_1()',Speed_1)}
      function ISL_StopDown_1(){if(MoveWay_1 == "left"){return};clearInterval(MoveTimeObj_1);if(GetObj('ISL_Cont_1').scrollLeft%PageWidth_1-(fill_1>=0?fill_1:fill_1+1)!=0){Comp_1=PageWidth_1-GetObj('ISL_Cont_1').scrollLeft%PageWidth_1+fill_1;CompScr_1()}else{MoveLock_1=false}
      AutoPlay_1()}
      function ISL_ScrDown_1(){if(GetObj('ISL_Cont_1').scrollLeft>=GetObj('List1_1').scrollWidth){GetObj('ISL_Cont_1').scrollLeft=GetObj('ISL_Cont_1').scrollLeft-GetObj('List1_1').scrollWidth}
      GetObj('ISL_Cont_1').scrollLeft+=Space_1}
      function CompScr_1(){if(Comp_1==0){MoveLock_1=false;return}
      var num,TempSpeed=Speed_1,TempSpace=Space_1;if(Math.abs(Comp_1)<PageWidth_1/2){TempSpace=Math.round(Math.abs(Comp_1/Space_1));if(TempSpace<1){TempSpace=1}}
      if(Comp_1<0){if(Comp_1<-TempSpace){Comp_1+=TempSpace;num=TempSpace}else{num=-Comp_1;Comp_1=0}
      GetObj('ISL_Cont_1').scrollLeft-=num;setTimeout('CompScr_1()',TempSpeed)}else{if(Comp_1>TempSpace){Comp_1-=TempSpace;num=TempSpace}else{num=Comp_1;Comp_1=0}
      GetObj('ISL_Cont_1').scrollLeft+=num;setTimeout('CompScr_1()',TempSpeed)}}
      function picrun_ini(){
      GetObj("List2_1").innerHTML=GetObj("List1_1").innerHTML;
      GetObj('ISL_Cont_1').scrollLeft=fill_1>=0?fill_1:GetObj('List1_1').scrollWidth-Math.abs(fill_1);
      GetObj("ISL_Cont_1").onmouseover=function(){clearInterval(AutoPlayObj_1)}
      GetObj("ISL_Cont_1").onmouseout=function(){AutoPlay_1()}
      AutoPlay_1();
      }
      //产品展示滚动图片结束
      //-->
    </script>
    <!--scroll js end-->
    
    <!--big change-->
    <script src="js/all.js"  type="text/javascript"></script>
    <script>
      document.observe('dom:loaded',function(){
      //example 3
      new Control.Tabs('tabs_example_three',{
      hover: true
      });
      
      });
    </script>
    <!--big change end-->
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
 
   <div class="prodetailsbody">
   <div class="location2">
      <a href="http://www.51taorui.com">首页</a> > <a href="prolist.aspx?id=76">产品中心</a> >
      <a href="">财务软件</a> > 用友软件

   
   </div>
      <div class="subbody" style="top:0px">
        <div class="contentbody">
          <div class="contentbody-l">

            <ul class="firstmenu">  
              <li class="firstli precurrentlia">产品中心</li>
              <li class="currentlia"><a href="javascript:void()">网络安全防护</a>           
                <ul class="secondmenu">
                 <li class="last"><a href="">分类一</a></li>
                 <li class="last"><a href="">分类二</a></li>
                </ul>
              </li>
              
              <li class="currentlia"><a href="javascript:void()">技术解决方案</a>           
                <ul class="secondmenu">
                  <li class="last"><a href="jjfa.aspx?id=115">服务器解决方案</a></li>
                  <li class="last"><a href="jjfa.aspx?id=116">云计算解决方案</a></li>
                  <li class="last"><a href="jjfa.aspx?id=117">负载均衡解决方案</a></li>
                  <li class="last"><a href="jjfa.aspx?id=118">上网管理行为解决方案</a></li>
                  <li class="last"><a href="jjfa.aspx?id=119">VPN解决方案</a></li>
                  <li class="last"><a href="proview.aspx?id=313">智慧城市</a></li>
                  <li class="last"><a href="proview.aspx?id=314">智慧社区</a></li>
                </ul>
              </li>
            </ul>


          </div>

          <div class="contentbody-r">
 
            <div class="firstscreen">
              <img src="images/p1.jpg" id="image_1" />
              <img src="images/p2.jpg" style="display:none" id="image_2" />
              <img src="images/p3.jpg" style="display:none" id="image_3" />
              <img src="images/p4.jpg" style="display:none" id="image_4" />
              
              <div class="info">
                <div class="title">
                  <h1>用友软件</h1>
                </div>
                <div class="text">今年以来，陆续上线的原创音乐市场成外界关注的焦点，无论是唱片公司还是在线音乐平台，纷纷发布了原创音乐交易平台。</div>
                <div class="model">
                  <p class="choosetip">如果您有任何疑问:</p>
                  <p class="OrangeBtnt"><a href=""></a></p>
                  <div class="clearing"></div>
                </div>
              </div>
            </div>
            <div class="clear"></div>
            <div class="secondscreen">
              <ul class="tabbed_images" id="tabs_example_three">
                
                <li><a href="#image_1" class="active">
                  <img src="images/p1.jpg" height="47px" width="68px" /></a></li>
                <li><a href="#image_2"><img src="images/p2.jpg" height="47px" width="68px" /></a></li>
                <li><a href="#image_3"><img src="images/p3.jpg" height="47px" width="68px" /></a></li>
                <li><a href="#image_4"><img src="images/p4.jpg" height="47px" width="68px" /></a></li>
              </ul>
              <dl class="secondscreencontact">
                <dd class="tels">400-800-8888</dd>
                <dd class="email"><a href="mailto:$siteconfig.webmail">12345@123.com</a></dd>
                <dd class="faxs">025-88888888</dd>
              </dl>
              <div class="clear"></div>
            </div>
       

            <div class="thirdscreen">
              <DIV id=con>
                <UL id=tags>
                  <LI class=selectTag>
                    <A onClick="selectTag('tagContent0',this)" href="javascript:void(0)">
                      产品概述
                     </A>
                  </LI>
                  <LI><A onClick="selectTag('tagContent1',this)" href="javascript:void(0)">功能特性</A> </LI>
                  <LI><A onClick="selectTag('tagContent2',this)" href="javascript:void(0)">产品优势</A> </LI>
                </UL>
                <DIV id=tagContent>
                  <DIV class="tagContent selectTag" id="tagContent0"  style="font-size:6px;@import;">
                   薛之谦凭借“段子手”功力，刷爆娱乐圈，然而作为一个创作型歌手，他显然不是那么幸运。最近，薛之谦又曝新段子，“我做谐星赚的钱是做歌手的10倍”，他发现仅靠唱歌这条路已经走不通了，目前其最主要的任务就是当谐星，负责逗别人笑。
                    <div class="clear"></div>
                  </DIV>
                  
                  <DIV class="tagContent" id="tagContent1">
                                   
              去年国家版权局7月出台《关于责令网络音乐服务商停止未经转授权传播音乐作品的通知》，要求网络音乐服务商停止传播未经授权的音乐作品，并责令各个网络音乐服务商在7月31日前将未经授权的音乐作品全部下线。
                   
                  </DIV>
                  
                  <DIV class="tagContent" id="tagContent2">
                   根据IFPI(国际唱片业协会)发布了《2016全球音乐报告》，报告显示，2015年中国音乐销量上涨63.8%，达到1.7亿美元，其中数字音乐收入整体上升68.6%，成为近年来中国音乐市场增长最快的一年。

　　但是业内人士认为，IFPI的报告不能真实体现中国音乐市场的付费情况，IFPI的数据是从华纳、环球、索尼三大唱片公司收集来的，基于播放平台交付版权方的预付款情况得出，现在的付费情况并没有数据显示得那么乐观。
                  </DIV>
                  
                    <DIV class="tagContent" id="tagContent3">
                    <ul style="float:left; max-width:620px;">                 
                      <li>11111</li>
                    </ul>
                    <div class="clear"></div>
                  </DIV>
                </DIV>
              </DIV>

              <SCRIPT type=text/javascript>
                        function selectTag(showContent,selfObj){
                        // 操作标签
                        var tag = document.getElementById("tags").getElementsByTagName("li");
                        var taglength = tag.length;
                        for(i=0; i<taglength; i++){
                        tag[i].className = "";
                        }
                        selfObj.parentNode.className = "selectTag";
                        // 操作内容
                        for(i=0; j=document.getElementById("tagContent"+i); i++){
                        j.style.display = "none";
                        }
                        document.getElementById(showContent).style.display = "block";
                        }
                        </SCRIPT> 
              
              <!--tab end-->
              <div class="proservice">
                <div class="service-text" style="display:none">文档
                  <p>凤凰卫士反泄密软件是文档守望者反泄密的扩展和延伸，在文档守望者反泄密软件透明加密、U盘管控、打印控制、程序控制、日志审计、自动备份、外发文件控制等基础功能上，融入了文件的权限管理，使其既能防止文件向外泄密，又能对内部的文件管理做很好的支撑，实现反泄密与内部管理的无缝结合。系统采用PKI体系，能够实现各种复杂而灵活的应用，满足大中型企事业单位的需要。.</p>
                  <span class="download"><a href="../pdf/crusher/jaw_crusher.pdf">下载</a></span> 
                </div>
              <div class="clear"></div>
              </div>
            </div>
            <div class="fourthscreen"> <strong>您可能关注的其他产品：</strong> 
              <!-- picrotate_left start  -->
              <div class=blk_18>
                <A onmouseup=ISL_StopUp_1() class=LeftBotton onmousedown=ISL_GoUp_1() onmouseout=ISL_StopUp_1() href="javascript:void(0);"target=_self></A>
                <div class=pcont id=ISL_Cont_1>
                  <div class=ScrCont>
                    <div id=List1_1> 
                       <a href="" class="pl"><img src="images/p1.jpg" height="71" width="106" />用友</a>
                    </div>
                    <div id=List2_1></div>
                  </div>
                </div>
                <a onmouseup=ISL_StopDown_1() class=RightBotton onmousedown=ISL_GoDown_1() onmouseout=ISL_StopDown_1() href="javascript:void(0);"target=_self></a></div>
              <SCRIPT type=text/javascript>
                <!--
                picrun_ini()
                //-->
              </SCRIPT> 
              <!-- picrotate_left end -->
              <div class="clear"></div>
            </div>
          </div>
          <div class="clear"></div>
        </div>
      </div>
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