// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
	
var init = function() {
	//Show scrollbar
	$("#course ul").mCustomScrollbar({
		theme: "light-thin",
		autoHideScrollbar:true
		}
	);


	// Dynamic height
	var height = $("#main").height() + $("#search-tool").height()-1;

	$("#main").height(height);
	$("#year").height(height);
	$("#course").height(height);
	$("#search-tool").css("bottom", $("#search-tool").height());
	$("#course-viewer").height(height);
	$("#course-viewer").width($("#wiki").width());
	$("#course-viewer").hide();

	// Nav Selection
	var _duration = 400;

	//Curriculum click trigger
	$("#curriculum li").click(function() {
		if(!$(this).hasClass('active')){
			$("#curriculum li").removeClass('active',{children:true, duration:_duration});
			$(this).addClass('active',{children:true, duration:_duration});
		} else {
			$("#curriculum li").removeClass('active',{children:true, duration:_duration});
		}

		return false;
	});


	//Year click trigger
	$("#year li").click(function() {
		if(!$(this).hasClass('active')){
			$("#year li").removeClass('active', {children:true, duration:_duration})
			$(this).addClass('active',{ children:true, duration:_duration});

		//Fetch queries
		var year = $("span[data-tag='year']",this)[0];
		var semester = $("span[data-tag='semester']",this)[0];

	    $.ajax({
	        type: 'GET', 
	        url: '/coursefetch2', 
	        dataType: 'html',
	        data: { year: year.textContent, semester: semester.textContent},
	        beforeSend: function() {
	        } ,
    		success: function(data) {
    			$("#course ul .mCSB_container").html(data);
    			$("#course ul").mCustomScrollbar("update");

    		},
    		error: function() {
    			console.log("AJAX error");
    		}
    	});

		}
		else {
			$("#year li").removeClass('active',{children:true, duration:_duration});
			$("#course ul .mCSB_container").html("");
    		$("#course ul").mCustomScrollbar("update");
		}
		

    	return false;
	});

	$("#course li").click(function() {
		/* TODO: add ajax
	    $.ajax({
	    	type: 'GET',
	    	url: '/wikis/1',
	    	success: function(data) {
	    		$("#wiki").hide("slide", {direction:"right"},2000);
	    		$("#course-viewer").show("slide", {direction:"left"},2000);
	    }}); */
	});

	//Search focus
	var focus_duration = 800;

	$("#search-tool .footer").click(function() {
		if(!$("#search-course").is(":focus")){
			$("#search-course").focus();
		}
	});

	$("#search-course").focus(function(){
		$("#search-tool").clearQueue().switchClass("span4", "span12", focus_duration);
	});

	$("#search-course").blur(function(){
		setTimeout(function(){
			if(!$("#search-course").is(":focus")){
			$("#search-tool").clearQueue().switchClass("span12", "span4", focus_duration);
		}},2000);
	});


	//Show page fadeIn
	$("#show-course").fadeIn("slow");
	
}

$(document).ready(init);
$(window).bind('page:change',init);