// ==UserScript==
// @name        Hide Reddit sidebar
// @namespace   com.rleppink.hideredditsidebar
// @description Hides the sidebar on reddit.com
// @version     1.0
// @grant       none
// ==/UserScript==

$('.side').hide();
$('#header-bottom-right .flat-list.hover').append('<span class="separator">|</span><a id="toggleSidebar">toggle sidebar</a>');
$('#toggleSidebar').click(function() {
  $('.side').toggle();
});
$('#toggleSidebar').css('cursor', 'pointer');


$('form.usertext.cloneable').hide();
$('.menuarea').append('<a id="toggleComment">toggle comment box</a>');
$('#toggleComment').click(function() {
  $('form.usertext.cloneable').toggle();
});
$('#toggleComment').css('cursor', 'pointer');
