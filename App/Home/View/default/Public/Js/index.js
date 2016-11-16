$(function ($) {
    // 改变导航栏高度
    if(window.innerWidth>=768){
        $(window).scroll(function(e) {
            //若滚动条离顶部大于50元素
            if($(window).scrollTop()>50){
                $('#b-public-nav').stop().animate({'padding-top':'0px','padding-bottom':'0px'},50);
            }else{
                $('#b-public-nav').stop().animate({'padding-top':'2px','padding-bottom':'2px'},50);
            }
        });
    }

    // 鼠标移入导航条的hover状态
    $('.b-nav-parent li').hover(function() {
        getWidthLeft($(this),true);
    }, function() {
        getWidthLeft($('li.active'),true);
    });

});


/**
 * 传递对象；获取left值和width
 * @param  {subject}  obj   html对象
 * @param  {Boolean} change  true获取left和宽；false改变left和宽；
 * @return {subject}         获取到的left和宽
 */
function getWidthLeft(obj,change){
    var mobileLeft=obj.position().left;
    var mobileWidth=obj.width();
    var widthLeft={
        'left':mobileLeft,
        'width':mobileWidth
    }
    if(!change){
        return widthLeft;
    }
    $('.b-nav-mobile').stop().animate({'left':mobileLeft,'width':mobileWidth}, 300);
}



// 点击返回顶部
function goTop(){
    $('body,html').animate({scrollTop:0},500);
    return false;
}

/**
 * 设置cookie
 * @param {string} name  键名
 * @param {string} value 键值
 * @param {integer} days cookie周期
 */
function setCookie(name,value,days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime()+(days*24*60*60*1000));
        var expires = "; expires="+date.toGMTString();
    }else{
        var expires = "";
    }
    document.cookie = name+"="+value+expires+"; path=/";
}

// 获取cookie
function getCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
}

// 删除cookie
function deleteCookie(name) {
    setCookie(name,"",-1);
}