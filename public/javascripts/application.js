$(document).ready(function() {
	$("#navigation li a[title]").tooltip({
		effect: 'toggle', // or 'fade'
		offset: [-10, 0],
		tipClass: 'nav-tooltip'
	});
});
