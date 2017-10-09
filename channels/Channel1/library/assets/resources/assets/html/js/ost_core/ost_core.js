		
			
/*/ SCROLL /*/
			
var scrolled = 0;
var scrollAmt = 240;
var scrollAmtMax = 239;
var imgHeight = $('img').height();console.log("imgHeight:",imgHeight);
var scrollArea = imgHeight - 480;
var i = 1;
while (scrollAmt > scrollAmtMax){
	scrollAmt = scrollArea / i;
	i++;
}
console.log("scrollAmt:",scrollAmt);


/*/ BUTTONS /*/

var repeatTapTimeout = false;
var delayAmt = 100;
//
$(".scroll-down").on("vmousedown", function(event) {
	event.stopPropagation();
	event.preventDefault();
	if(!repeatTapTimeout){
		repeatTapTimeout = true;
		var $this = $(this);
		$this.addClass("buttonActive");
		window.setTimeout(function(){$this.removeClass("buttonActive");repeatTapTimeout = false;}, delayAmt);
		//
		console.log("DOWN",scrolled,scrollArea);					
		scrolled = scrolled + scrollAmt;
		if (scrolled > scrollArea){scrolled = scrollArea};
		$(".scroll-wrapper").animate({scrollTop:scrolled});
		window.startTimeout();
	}
});

$(".scroll-up").on("vmousedown", function(event) {
	event.stopPropagation();
	event.preventDefault();
	if(!repeatTapTimeout){
		repeatTapTimeout = true;
		var $this = $(this);
		$this.addClass("buttonActive");
		window.setTimeout(function(){$this.removeClass("buttonActive");repeatTapTimeout = false;}, delayAmt);
		//
		console.log("UP",scrolled,scrollArea);
		scrolled = scrolled - scrollAmt;
		if (scrolled < 0){scrolled = 0};
		$(".scroll-wrapper").animate({scrollTop:scrolled});
		window.startTimeout();
	}
});


/*/ TIMEOUT /*/

var timeout = 180000;
	
function startTimeout() {
	console.log("SCREEN: startTimeout()");
	var _this = this;
	clearTimeout(this.timer);
	this.timer = setTimeout(function(){ _this.exitApp(); }, this.timeout);
}

function stopTimeout() {
	console.log("SCREEN: stopTimeout()");
	clearTimeout(this.timer);
}


/*/ GENERIC /*/

function init() {
	$('body').on("vmousedown", function(event) {
		event.stopPropagation();
		event.preventDefault();
		startTimeout();
	});
	$('.exit').on("vmousedown", function(event) {
		event.stopPropagation();
		event.preventDefault();
		if(!repeatTapTimeout){
			repeatTapTimeout = true;
			var $this = $(this);
			$this.addClass("buttonActive");
			window.setTimeout(function(){$this.removeClass("buttonActive");repeatTapTimeout = false;}, delayAmt);
			//
			exitApp();
		}
	});
}

function exitApp() {
	console.log("SCREEN: exitApp()");
	ESMM.showFinished();
}

function onF4Pressed(){
	ESMM.showFinished();
}
