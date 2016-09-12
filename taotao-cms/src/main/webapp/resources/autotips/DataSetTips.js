/**
 * @author: YingYueZhou
 * @date: 2016年6月26日11:29:41
 * @version: v1.01
 * @param pSourceData
 */
function DataSetTips(pSourceData) {
    $(function() {
        $("<div id='autoDataTips'><div id='autoDataTipsMsg' ></div><div id='autoDataTipsList'></div><div id='autoDataTipsPages'></div></div>").appendTo("body").hide();
        var warningHtml = '<div class="side"><img src="resources/autotips/n050.gif" width="18" height="33" /></div><div class="center">warn</div><div class="side"><img src="resources/autotips/n051.gif" width="18" height="33" /></div>';
        $("<div id='warning'></div>").html(warningHtml).appendTo('body').hide();
        $('<iframe style="position:absolute;z-index:101;display:block;"  frameborder="0"  id="citysetTipsIfm"></iframe>').appendTo('body').hide();
        $("#autoDataTips").click(function() { return false; });
    });
    var pCache = {};
    pCache.$InputCID = $('#' + pSourceData['InputCID']);
    pCache.$DataID = $('#' + pSourceData['DataID']);
    pCache.$ShowCount = pSourceData['ShowCount'];
    pCache.$DataArr = pSourceData['DataArr'];
    pCache.$SelectedFun = pSourceData['SelectedFun'];
    pCache.$StockDataArr = pSourceData['StockDataArr'];
    if (typeof (pSourceData['ShowAll']) == 'undefined') {
        pCache.$ShowAll = false;
    } else {
        pCache.$ShowAll = pSourceData['ShowAll'];
    }
    
    if (typeof (pSourceData['ExtendVal']) == 'undefined' || pSourceData['ExtendVal'] == '') {
        pCache.$ExtendVal = 1;
    } else
        pCache.$ExtendVal = pSourceData['ExtendVal'];
    if (typeof (pSourceData['TipMessage']) == 'undefined' || pSourceData['TipMessage'] == '') {
        pCache.$TipMessage = '输入中文或拼音';
    } else
        pCache.$TipMessage = pSourceData['TipMessage'];
    pCache.$InputCID.keyup(function(e) {
        if (pCache.navigate && (e.which >= 37 && e.which <= 40) || e.which == 13)
            return false;
        if (pCache.$DataArr) {
            $("#arrStaticTips").hide(5);
            var pValues = GetDataTips(pCache.$DataArr, this.value.toUpperCase());
            var pOffset = pCache.$InputCID.offset();
            ShowAutoTips(this.value, pValues, pOffset.left, (pOffset.top + pCache.$InputCID.outerHeight()), 1);
        }
        if (this.value == '') pCache.$DataID.val('');
        if (GetDataCodeByName(this.value) || GetDataCodeByName(this.value) != "") {
            pCache.$DataID.val(GetDataCodeByName(this.value));
        } else {
            $("#arrStaticTips").hide(5);
            var pValues = null;
            if (this.value == '' && typeof (pCache.$StockDataArr) != 'undefined') {
                pValues = GetDataTips(pCache.$StockDataArr, this.value.toUpperCase());
            } else {
                pValues = GetDataTips(pCache.$DataArr, this.value.toUpperCase());
            }
            var pOffset = pCache.$InputCID.offset();
            ShowAutoTips(this.value, pValues, pOffset.left, (pOffset.top + pCache.$InputCID.outerHeight()), 1);
        }
        return false;
    }).focus(function(e) {
        $("#arrStaticTips").hide(5);
        var pOffset = pCache.$InputCID.offset();
        var pValues = null;
        if (this.value == '' && typeof (pCache.$StockDataArr) != 'undefined') {
            pValues = GetDataTips(pCache.$StockDataArr, this.value.toUpperCase());
        } else {
            pValues = GetDataTips(pCache.$DataArr, this.value.toUpperCase());
        }
        ShowAutoTips(this.value, pValues, pOffset.left, (pOffset.top + pCache.$InputCID.outerHeight()), 1);
    }).click(function(e) {
        return false;
    }).dblclick(function(e) {
        $("#arrStaticTips").hide(5);
        var pOffset = pCache.$InputCID.offset();
        this.value = '';
        var pValues = GetDataTips(pCache.$DataArr, '');
        ShowAutoTips(this.value, pValues, pOffset.left, (pOffset.top + pCache.$InputCID.outerHeight()), 1);
    }).blur(function() {
        if (pCache.$InputCID.val() != "" && pCache.$InputCID.val().length == 3) {
            var sTemp = GetDataCityEX(pCache.$InputCID.val());
            if (sTemp != '') {
                pCache.$DataID.val(sTemp);
            }
        }
    });

    function ShowAutoTips(inputStr, items, left, top, pageCurrent) {
        //alert(inputStr);
        var showNum = pCache.$ShowCount;
        var page = parseInt(pageCurrent);
        var endNum = page * showNum;
        var startNum = page * showNum - showNum;
        var len = items.length, res;
        var $autoDataTips = $("#autoDataTips");
        if (len > 0) {
            var htmlStr = [];
            var isEndOrder = false;

            for (var i = startNum; (i < endNum) && (i < len); i++) {
                var itemArr = items[i];
                //                var ReOrderStr = "";
                if (itemArr.length >= 3) {//debugbypcw,将==4改为!<4
                    htmlStr.push('<a href = "###" class="autoTipsItem" title="');
                    htmlStr.push(itemArr[0] + '">');
                    htmlStr.push(itemArr[pCache.$ExtendVal] + '<span>');
                    htmlStr.push(itemArr[0] + '</span></a>');
                }
            }
            $("#autoDataTipsList").html(htmlStr.join(''));
            $("#autoDataTipsMsg").text(inputStr && inputStr != '' ? inputStr + ', 按拼音排序' : pCache.$TipMessage);
        } else {
            $("#autoDataTipsList").html('');
            pCache.$DataID.val('');
            $("#autoDataTipsMsg").text('对不起，找不到：' + inputStr);
        }
        if (len > showNum) {
            var pages = Math.ceil(len / showNum); //比x小的最大值

            htmlStr = [];
            if (page != 1) {
                htmlStr.push('<a  href="###" id="autoTipsPrevPage"><-</a>');
            } else {
                htmlStr.push('<a  href="###" class="autoTipsCurrentPage"><-</a>');
            }
            for (var i = 1; i <= pages; i++) {
                if (i == page) {
                    htmlStr.push('<a class="autoTipsCurrentPage"  href="###">' + i + '</a>');

                } else {

                    if (i < 7)
                        htmlStr.push('<a class="autoTipsPage"  href="###">' + i + '</a>');
                    else {
                        if (htmlStr.toString().indexOf("...") == -1)
                            htmlStr.push('...');
                    }
                }
            }
            if (page != pages) {
                htmlStr.push('<a href="###" id="autoTipsNextPage">-></a>');
            } else {
                htmlStr.push('<a  href="###" class="autoTipsCurrentPage">-></a>');
            }
            $("#autoDataTipsPages").html(htmlStr.join("")).show();

            $("a.autoTipsPage").unbind().click(function() {
                //5>addbypcw
                ShowAutoTips(inputStr, items, left, top, this.innerHTML);
                return false;
            });
            $("#autoTipsPrevPage").unbind().click(function() {
                //6>addbypcw
                ShowAutoTips(inputStr, items, left, top, (page - 1));
                return false;
            });
            $("#autoTipsNextPage").unbind().click(function() {
                //7>addbypcw
                ShowAutoTips(inputStr, items, left, top, (page + 1));
                return false;
            });
            $("a.autoTipsCurrentPage").unbind().click(function() {
                return false;
            });

        } else {
            $("#autoDataTipsPages").hide();
            $("#autoTipsPrevPage").unbind();
            $("#autoTipsNextPage").unbind();
        }

        var $item = $("a.autoTipsItem");
        $item.click(function(e) {
            var sRet = GetDataCodeByName(this.title);
            //cache.arriCitys = getArriveCitys(getCityNameByStr(this.title));//debugbypcw
            pCache.$InputCID.val(this.title);
            pCache.$DataID.val(sRet);
            if (typeof (pCache.$SelectedFun) != 'undefined') {
                pCache.$SelectedFun(sRet);
            }
            CloseTips();
            return false;
        }).mouseenter(function() {
            var index = $item.index(this);
            $item.eq(pCache.selectedIndex).removeClass("selected");
            $(this).addClass("selected");
            pCache.selectedIndex = $item.index(this);

            return false;
        });


        $autoDataTips.css({
            "left": left,
            "top": top
        }).show(5, function() {
            pCache.navigate = true;
            $item.eq(pCache.selectedIndex).mouseenter();
            $(document).unbind("keydown click").click(function(e) {
                CloseTips();
                //return false;
            }).keydown(function(e) {
                pCache.navigate = true;
                switch (e.which) {
                    case keys.left:
                        $("#autoTipsPrevPage").triggerHandler("click");
                        return false;
                        break;
                    case keys.up:
                        $item.removeClass("selected");
                        pCache.selectedIndex = pCache.selectedIndex > 0 ? (pCache.selectedIndex - 1) : ($item.size() - 1);
                        $item.eq(pCache.selectedIndex).addClass("selected");
                        return false;
                        break;
                    case keys.right:
                        $("#autoTipsNextPage").triggerHandler("click");
                        return false;
                        break;
                    case keys.down:
                        $item.removeClass("selected");
                        pCache.selectedIndex = pCache.selectedIndex < ($item.size() - 1) ? (pCache.selectedIndex + 1) : 0;
                        $item.eq(pCache.selectedIndex).addClass("selected");
                        return false;
                        break;
                    case keys.enter:
                        $item.eq(pCache.selectedIndex).triggerHandler("click");
                        return false;
                        break;
                    case keys.esc:
                        break;
                    default:
                        pCache.navigate = false;
                        break;
                }
            });
	    if (len > 0 && typeof (pCache.selectedIndex) == 'undefined') {
                pCache.selectedIndex = 0;
                $item.eq(pCache.selectedIndex).addClass("selected");
            }
            var $this = $(this);
            $("#citysetTipsIfm").css({
                "height": $this.innerHeight(),
                "width": $this.width(),
                "left": left,
                "top": top
            }).show(5);
        });
    }

    function CloseTips() {
        pCache.navigate = false;
        $(document).unbind("click");
        $("#arrStaticTips").hide(100);
        $("#autoDataTips").hide(100);
        $("#warning").hide(100);
        $("#citysetTipsIfm").hide(10);
        pCache.selectedIndex = 0;
        if (pCache.$InputCID.val() == "") {
            pCache.$InputCID.css("color", "#969696").val(pCache.$DefaultValue);
            pCache.FirstClick = true;
        } else {
            pCache.FirstClick = false;
        }
    }
    
    var keys = {
        "esc": 27,
        "left": 37,
        "up": 38,
        "right": 39,
        "down": 40,
        "enter": 13
    };

    function trim(sValue) {
        return sValue.replace(/(^\s*)|(\s*$)/g, '');
    }
    function GetDataTips(pDataArr, pValArr) {
        var items = pDataArr, length = items.length;
        var res = [], head = [], temp = {};
        if (!pDataArr)
            return pDataArr;
        if (pCache.$ShowAll && pValArr == '') {
            head.push(['记录为空', 'NOTHING', 'N', '', '', 'NO']);
        }
        pValArr = pValArr.toLowerCase();
        var pattern = new RegExp("^" + pValArr + "\\S*\\b| " + pValArr + "\\S* |\\b" + pValArr + "\\S*\\b", "i"); //不搜索三字码三字码搜索
        //for (var i = 0; i < length; i++) {
        for (var sKey in pDataArr) {
            //var item = items[i].join(" ");
            var item = sKey + ' ' + pDataArr[sKey].join(' ');
            if (trim(pValArr) == '') {
                head.push(pDataArr[sKey]);
                temp[item] = 1;
                continue;
            }
            if (!temp[item] && pattern.test(item)) {
                head.push(pDataArr[sKey]);
                temp[item] = 1;
            } else if (!temp[item] && (item.indexOf(trim(pValArr)) != -1)) {
                head.push(pDataArr[sKey]);
                temp[item] = 1;
            } else {
                continue;
            }
            if (!temp[item] && item.indexOf(pValArr) >= 0) {
                temp[item] = 1;
                res.push(items[i]);
            } else {
                continue;
            }
        }
        return head.concat(res);
    }

    function GetDataCodeByName(sDataName) {
        var res = "";
        if (sDataName) {
            for (va in pCache.$DataArr) {
                if (pCache.$DataArr[va][0] == sDataName || pCache.$DataArr[va][1].toLowerCase() == sDataName.toLowerCase()
                || va == sDataName) {
                    res = va;
                    break;
                }
            }
        }
        return res;
    };
//    DebugLog('Load OK.');
}

function GetDataCityEX(sValueID) {
    sValueID = sValueID.toUpperCase();
    var sTemp = '';
    if (sValueID != '' && cityCode[sValueID] != null) {
        sTemp = sValueID;
    }
    return sTemp;
}