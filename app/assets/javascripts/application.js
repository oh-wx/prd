// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
function showPic(whichpic) {
			if (document.getElementById) {
  				document.getElementById('placeholder').src = whichpic.href;
  				return false;
 			} else {
  				return true;
 			}
		}
		
$(document).ready(function() {
	window.scrollTo(0,0);
	
	$("#ModelMenu th").click(function() {
		// hide all model runs
		$("#ModelRuns tbody tr").removeClass("disp");
		$("#ModelRuns tbody tr").addClass("hide");
		
		// display selected model agency
		$("#ModelMenu th").removeClass("selected");
		$(this).addClass("selected");
		
		// display model runs for selected agency
		$("#ModelRuns tbody tr.hide:eq(" + $("#ModelMenu th").index(this) + ")").removeClass("hide");
		$("#ModelRuns tbody tr.hide:eq(" + $("#ModelMenu th").index(this) + ")").addClass("disp");
	});
});

