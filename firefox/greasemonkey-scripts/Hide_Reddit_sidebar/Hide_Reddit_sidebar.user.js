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
  $('div.content')[0].style.maxWidth = "1000px";
  $('div.content')[0].style.margin = "0 auto";
  $('div.content')[0].style.marginTop = "1.5em";
};

function hideOrganicListing() {
  $('.organic-listing').hide();
};

function hideTrendingSubreddits() {
  $('.trending-subreddits').hide();
};

function hideSubredditHeaderArea() {
  $('#sr-header-area').hide();
}

$(document).ready(function () {
  hideSideBar();
  hideCommentBox();
  middleColumnComments();
  hideTrendingSubreddits();
  hideSubredditHeaderArea();
});

window.onload = function () {
  hideOrganicListing();
};