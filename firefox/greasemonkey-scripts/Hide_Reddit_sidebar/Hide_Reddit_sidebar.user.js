// ==UserScript==
// @name        reddit.com: Hide sidebar
// @namespace   com.rleppink.hideredditsidebar
// @description Hides the sidebar on reddit.com
// @version     1.0
// @grant       none
// ==/UserScript==


function hideSideBar() {
  $('.side').hide();
  $('#header-bottom-right .flat-list.hover').append('<span class="separator">|</span><a id="toggleSidebar">toggle sidebar</a>');
  $('#toggleSidebar').click(function() {
    $('.side').toggle();
  });
  $('#toggleSidebar').css('cursor', 'pointer');
};

function hideCommentBox() {
  $('form.usertext.cloneable').hide();
  $('.menuarea').append('<a id="toggleComment">toggle comment box</a>');
  $('#toggleComment').click(function() {
    $('form.usertext.cloneable').toggle();
  });
  $('#toggleComment').css('cursor', 'pointer');  
};

function middleColumnComments() {
  $('div.content')[0].style.width = "1000px";
  $('div.content')[0].style.margin = "0 auto";
  $('div.content')[0].style.marginTop = "1.5em";
}

window.onload = function () {
  hideSideBar();
  hideCommentBox();
  middleColumnComments();
};
