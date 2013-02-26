﻿var tabs = new Array("Domains", "Workflows", "Documents");
/* store Tabs visited */
var tabStack = new Array("Domains");
var tabIndex = 1;
/* store Location of links clicked */
var locStack = new Array();
var locIndex = 0;

function tab_select(selected_tab) {
    /* hide all Tab content and reset Tabs */
    for (i = 0; i < tabs.length; i++) {
        document.getElementById(tabs[i]).className = "";
        document.getElementById(tabs[i] + "_Content").style.display = "none";
    }

    /* Display selected Tab content and style selected Tab */
    document.getElementById(selected_tab).className = "active";
    document.getElementById(selected_tab + "_Content").style.display = "block";

    /* add selected Tab to Tabs visited */
    tabStack[tabIndex] = selected_tab;
    tabIndex++;
}

function link_to_tab(linked_tab, link_id, curr_id) {
    /* add current location to Location stack */
    loc_stack[locIndex] = "#" + curr_id;
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
