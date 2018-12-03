var pin = new Array();
var cloneCount = 0;

$(function() {
	// pin img 복사 이동
	$('.pin-img').draggable({
		helper : "clone",
		cursorAt : {
			top : 0,
			left : 15
		}
	});
	// drop 이벤트
	$('.pin-img').bind('dragstop', function(event, ui) {
		pin[cloneCount] = $(ui.helper).clone();
		$(this).after(pin[cloneCount].draggable());
		pin[cloneCount].attr("id", "pin" + cloneCount);
		pin[cloneCount].css({
			'z-index' : '999'
		});
		$("#dialog").css({
			'display' : 'block'
		});
		cloneCount++;
	});
	$(".close").click(function() {
		$("#dialog").css({
			'display' : 'none'
		});
	});
	$("html").click(function(event) {
		if (event.target.id === "dialog") {
			$("#dialog").css({
				'display' : 'none'
			});
		}
	});
});