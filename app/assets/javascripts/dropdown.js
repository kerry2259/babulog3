$(function(){
	$('.dropdown>li').on('click', function(){
		$(this).toggleClass('dropdown_toggle').children('.submenu').slideToggle(200);
	});
});