// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {
	
	//Show scrollbar
	$("#year ul").mCustomScrollbar({
		theme: "light-thin",
		autoHideScrollbar:true
		}
	);
	$("#course ul").mCustomScrollbar({
		theme: "light-thin",
		autoHideScrollbar:true
		}
	);


	// Dynamic height
	var height = $("#main").height() + $("#search-tool").height()-1;

	$("#year").height(height);
	$("#course").height(height);
	$("#search-tool").css("bottom", $("#search-tool").height()+4);
	// Nav Selection
	var _duration = 400;
	$("#curriculum li").click(function() {
		if(!$(this).hasClass('active')){
			$("#curriculum li").removeClass('active',{children:true, duration:_duration});
			$(this).addClass('active',{children:true, duration:_duration});
		} else {
			$("#curriculum li").removeClass('active',{children:true, duration:_duration});
		}

		return false;
	});

	$("#year li").click(function() {
		if(!$(this).hasClass('active')){
			$("#year li").removeClass('active', {children:true, duration:_duration})
			$(this).addClass('active',{ children:true, duration:_duration});
		}
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
});
