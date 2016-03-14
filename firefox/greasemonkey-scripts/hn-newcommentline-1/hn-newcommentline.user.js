// ==UserScript==
// @name        hn-newcommentline
// @namespace   nl.rleppink.hn-newcommentline
// @include     news.ycombinator.com
// @version     1
// @grant       none
// ==/UserScript==


function getTopLevelCommentList()
{
  return document.querySelectorAll(".comment-tree .athing td.ind img[width='0']");
};

function addTopBorder(elementToBorder)
{
  elementToBorder.style["border-top"] = "1px dashed #ff6600";
  elementToBorder.style["margin-top"] = "1.5em";
};

window.onload = function () {
  let topLevelComments = getTopLevelCommentList();
  for (var i = 1; i < topLevelComments.length; i++)
  {
    let parentToBorder = topLevelComments[i].parentNode.parentNode.parentNode.parentNode.parentNode;  // Nice.
    console.log(parentToBorder);
    addTopBorder(parentToBorder);
  }
  console.log("Done");
};
