$(document).ready(function () {
			// get all listed items from the #tabMenu list
			$("#tabMenu li").click(function () {
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

			// mouse-over effects for Post, Comments, Famous, and Random tab(s)
			$(".boxBody li").click(function () {
				// only change anchors in div.box
				window.location = $(this).find("div.box > a").attr("href");
			}).mouseover(function () {
				// change background color
				$(this).css("backgroundColor", "#888");
			}).mouseout(function () {
				// restore background color
				$(this).css("backgroundColor", "");
			});
		});