var tabs = new Array("Events", "Models", "Outlooks", "Tracks", "Mesos", "WWs", "Radar", "Info");
/* store Tabs visited */
var tabStack = new Array("Events");
var tabIndex = 1;
/* store Location of links clicked */
var locStack = new Array();
var locIndex = 0;

function tab_select(selected_tab) {
    /* hide all Tab content and reset Tabs */
    for (i = 0; i < tabs.length; i++) {
		if (document.getElementById(tabs[i])) {
			document.getElementById(tabs[i]).className = "";
			document.getElementById(tabs[i] + "_Content").style.display = "none";
		}
    }

    /* Display selected Tab content and style selected Tab */
	document.getElementById(selected_tab).className = "active";
	document.getElementById(selected_tab + "_Content").style.display = "block";

    /* add selected Tab to Tabs visited */
    tabStack[tabIndex] = selected_tab;
    tabIndex++;
}

function goto_tab(linked_tab, link_id, curr_id) {
    /* add current location to Location stack */
    locStack[locIndex] = "#" + curr_id;
    locIndex++;

    tab_select(linked_tab);
    window.location.hash = "#" + link_id;
}

function return_from_tab() {
    /* pop Tab/Tab content that was exited */
    tab_select(tabStack[tabIndex - 2]);

    /* pop location where link was clicked */
    window.location.hash = locStack[locIndex - 1];

    tabIndex--;
    locIndex--;
}
