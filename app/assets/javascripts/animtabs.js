/*var tutorials = new Array("ttlModel", "ttlTemp1", "ttlTemp2");
function tutorial_select(selected) {
	for (i=0; i<tutorials.length; i++) {
		if (document.getElementById(tutorials[i])) {
			document.getElementById(tutorials[i]+"_Content").className = "hide";
		}
	}
			
	$("#ttlList").removeClass("disp");
	$("#ttlList").addClass("hide");
	
	document.getElementById(selected+"_Content").className = "disp";
}*/
function showTtlList() {
	// hide tutorial content
	$("#tutorial div").removeClass("disp");
	$("#tutorial div").addClass("hide");
	// show tutorial list
	$("#ttlList").removeClass("hide");
	$("#ttlList").addClass("disp");
	// goto top of page
	window.scrollTo(0,0);
}
function showAnaList() {
	// hide anatomy content
	$("#anatomy div").removeClass("disp");
	$("#anatomy div").addClass("hide");
	// show anatomy list
	$("#anaList").removeClass("hide");
	$("#anaList").addClass("disp");
	// goto top of page
	window.scrollTo(0,0);
}

function showAnaPic(whichpic, alttxt, caption, placeholder) {
	if (document.getElementById) {
		// show image and alternate text
		document.getElementById(placeholder).src = whichpic.href;
		document.getElementById(placeholder).alt = alttxt;
		// hide all captions
		$("#anatomy div figure figcaption").removeClass("disp");
		$("#anatomy div figure figcaption").addClass("hide");
		// display selected caption
		$(caption).removeClass("hide");
		$(caption).addClass("disp");
		return false;
	}
	else {
		return true;
	}	
}

$(document).ready(function () {
			// get all listed items from the #tabMenu list
			$("#tabMenu li").click(function () {

				// show tutorial list
				showTtlList();
				// show anatomy list
				showAnaList();

				// if listed item is not selected, perform following actions
				if (!$(this).hasClass("selected")) {
					// remove the .selected class from all listed items
					$("#tabMenu li").removeClass("selected");
					// reassign the clicked listed item
					$(this).addClass("selected");
					// hide all content in boxBody
					$(".boxBody div.parent").slideUp("1500");
					// find clicked content in boxBody with respect to list-of-tab's index; order is important
					$(".boxBody div.parent:eq(" + $("#tabMenu > li").index(this) + ")").slideDown("1500");
				}
			}).mouseover(function () {
				// add and remove class
				$(this).addClass("mouseover");
				$(this).removeClass("mouseout");
			}).mouseout(function () {
				// add and remove class
				$(this).addClass("mouseout");
				$(this).removeClass("mouseover");
			});
			
			$("#ttlList ul li").click(function() {
				// hide tutorial list
				$("#ttlList").removeClass("disp");
				$("#ttlList").addClass("hide");
				
				// hide unselected content
				$("#tutorial div").removeClass("disp");
				$("#tutorial div").addClass("hide");
				
				// display selected content
				$("#tutorial div.hide:eq(" + $("#ttlList ul li").index(this) + ")").removeClass("hide");
				$("#tutorial div.hide:eq(" + $("#ttlList ul li").index(this) + ")").addClass("disp");
			});
			
			$("#anaList ul li").click(function() {
				// hide anatomy list
				$("#anaList").removeClass("disp");
				$("#anaList").addClass("hide");
				
				// hide unselected content
				$("#anatomy div").removeClass("disp");
				$("#anatomy div").addClass("hide");
				
				// display selected content
				$("#anatomy div.hide:eq(" + $("#anaList ul li").index(this) + ")").removeClass("hide");
				$("#anatomy div.hide:eq(" + $("#anaList ul li").index(this) + ")").addClass("disp");
			});

			/* mouse-over effects with animation for Category tab
			$(".boxBody #category li").mouseover(function () {
				// change background color and animate the padding
				$(this).css("backgroundColor", "#888");
				$(this).children().animate({ paddingLeft: "20px" }, { queue: false, duration: 300 });
			}).mouseout(function () {
				// restore background color and animate the padding
				$(this).css("backgroundColor", "");
				$(this).children().animate({ paddingLeft: "0px" }, { queue: false, duration: 300 });
			});*/

			// mouse-over effects for list items of tab(s)
			$(".boxBody li").mouseover(function () {
				// change background color
				$(this).css("backgroundColor", "rgba(236,174,60,.7)"/*"#888"*/);
			}).mouseout(function () {
				// restore background color
				$(this).css("backgroundColor", "");
			});
		});