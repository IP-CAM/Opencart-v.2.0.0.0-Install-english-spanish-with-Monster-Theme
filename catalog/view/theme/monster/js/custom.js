$(function(){
	if(navigator.appVersion.indexOf("Mac")!=-1){
		$('body').addClass('mac');	
	}
});


$(function(){
	$('ul.categories li').mouseenter(function(){
		$(this).find('ul').show();
	}).mouseleave(function(){
		$(this).find('ul').hide();
	});
	
	var catAmt = 9;
	if(typeof morecat != 'undefined'){
			moreCat = morecat;
	}else{
		moreCat = "Más categorías";	
	}
	if(typeof mincat != 'undefined'){
			minCat = mincat;
	}else{
		minCat = "Minimizar lista";
			
	}
	if(typeof catAmt != 'undefined'){
		var exclude = $("ul.categories li.level0:gt(" + catAmt + ")");
		$( "ul.categories li.level0:gt(" + catAmt + ")").hide();
		$('ul.categories li.more-cat').click(function(){
			$(exclude).insertBefore($(this)).slideToggle();
			$(this).toggleClass('active');
			$(this).hasClass('active') ? $(this).find('a').text(minCat) : $(this).find('a').text(moreCat); 
		});
		$('ul.categories').mouseleave(function(){
			$(exclude).slideUp();
			$('ul.categories li.more-cat').removeClass('active').find('a').text(moreCat);
		});
	}
});

$(window).scroll(function() {
if ($(this).scrollTop() > 77){  
	$('header').addClass("sticky");
	$('.bg1,.bg2').hide();
  }
  else{
	$('header').removeClass("sticky");
	$('.bg1,.bg2').show();
  }
});

$(function () {
	$("#hidden-nav").tinyNav({
		header: 'Browse Categories'
	});
	$(".tinynav").wrap('<div class="select-nav" />');
});

$(function(){	
	//Slideshow
	$('.customSlideshow .flex-control-paging').prepend('<li><a href="prev" class="prev slideBtn"><i class="fa fa-chevron-left"></a></li>');
	$('.customSlideshow .flex-control-paging').append('<li><a href="next" class="next slideBtn"><i class="fa fa-chevron-right"></a></li>');
	
	function slides(slideBtn,block){
		$(slideBtn).on('click', function(){
			var href = $(this).attr('href');
			$(block).flexslider(href)
			return false;
		});
	}
	slides('.customSlideshow .prev,.customSlideshow .next','.customSlideshow');
	slides('.latest .btnPrev,.latest .btnNext','.latest .products');
	slides('.featured .btnPrev,.featured .btnNext','.featured .products');
	slides('.featured_categories .btnPrev,.featured_categories .btnNext','.featured_categories .block-slide');
});

$(window).load(function() {
	//Equal Heights
	$('#content .products,ul.product-grid').each(function(){
		var elementHeights = $('#content .products li p.description,ul.product-grid li p.description').map(function() {
			return $(this).innerHeight();
		}).get();
  		var maxHeight = Math.max.apply(null, elementHeights);
  		$(this).find('li p.description').height(maxHeight);
	});
});

$(function(){
	//Category Display
	var productDisplay = localStorage.getItem('display');
	$('#'+productDisplay+'-view').addClass('active');
	if(productDisplay == 'grid'){
		$('ul.product-list').attr('class','product-grid');	
	}else{
		$('ul.product-list li').append('<div class="clear" />');	
	}
	$('a#grid-view,a#list-view').click(function(){
		$('.display').find('a').removeClass('active');
		$(this).addClass('active');
		var productDisplay = localStorage.getItem('display');
		if(productDisplay == 'grid'){
			$('ul.product-list').attr('class','product-grid');
		}else{
			$('ul.product-grid').attr('class','product-list');
			$('ul.product-list li').append('<div class="clear" />');
			$('ul.product-list li p.description').css('height','auto');
		}
		return false;
	});
	$('.clearfix.visible-lg').remove();
});

$(function(){
	$('.button-group button').mouseenter(function(){
		$(this).addClass('hovered');
	}).mouseleave(function(){
		$(this).removeClass('hovered');
	});
});

$(function(){
	$("ul.qtyAmt li a").click(function(){
		if($(this).hasClass("increase")){
			var qty = $("#input-quantity").val();
			qty++;
			$("#input-quantity").val(qty);
		}else{
			var qty = $("#input-quantity").val();
			qty--;
			if(qty>0){
				$("#input-quantity").val(qty);
			}
		}
		return false;
	});	
});

$(window).load(function() {
	var infoHeight = $('.product-information').innerHeight() - 30;
	$('.product-images,.custom-block').height(infoHeight);
});

$(window).load(function() {
	$('.related .products').flexslider({
		animation: 'slide',
		animationLoop: false,
		slideshow:true,
		directionNav: false,
		controlNav: true,
		itemWidth: 224,
		animationSpeed:1000
	});
});

$(function(){
	var lis = $('.category-list > li');
	for(var i = 0; i < lis.length; i+=5) {
	  lis.slice(i, i+5)
		 .wrapAll("<li><ul></ul></li>");
	}	
});

$(function(){
	//Featured Categories
	$('ul.category-list > li > ul').each(function(){
		$(this).find('> li').first().addClass('first');
		$(this).find('> li').mouseenter(function(){
			var ul = $(this).closest('ul');
			$(ul).find('.right').hide();
			$(ul).find('> li').css('marginRight','8px');
			$(this).css('marginRight','205px').find('.right').show();
		});	
	});
});

$(window).load(function(){
	function equalHeights(sel1,sel2,sel3,diff1,diff2){ 
			$(sel1).each(function(){  
				var left = $(this).find(sel2).outerHeight();
				var right = $(this).find(sel3).outerHeight(true);
				if(left > right){
					var tallest = left;	
					$(this).find(sel3).css( "height", left-diff1 + "px" );
				}else{
					var tallest = right;	
					$(this).find(sel2).css( "height", right-diff2 + "px" );
				}	
			});
		}
		equalHeights('.category-list li.top-level','.left','.right','',32);
});

$(function(){
	$('.product-wrapper,.product-wrapper .products ul li,.category-list .left,.featured_categories,.related,ul.product-grid li').mouseenter(function(){
		$(this).addClass('hovered');
	}).mouseleave(function(){
		$(this).removeClass('hovered');
	});
});

$(function(){
	var width = $(window).width();
	 if(width < 650){
					$('body.common-home .flexslider.customSlideshow .flex-control-nav').css( "bottom", "-54px");
				}else if(width < 1030){
					$('body.common-home .flexslider.customSlideshow .flex-control-nav').css( "bottom", "-68px");			
				}else{
					$('body.common-home .flexslider.customSlideshow .flex-control-nav').css( "bottom", "-40px");
				}
	$(window).resize(function(){
		   if($(this).width() != width){
			  var width = $(this).width();
			   if(width < 650){
					$('body.common-home .flexslider.customSlideshow .flex-control-nav').css( "bottom", "-54px");
				}else if(width < 1030){
					$('body.common-home .flexslider.customSlideshow .flex-control-nav').css( "bottom", "-68px");			
				}else{
					$('body.common-home .flexslider.customSlideshow .flex-control-nav').css( "bottom", "-40px");
				}
		   }
	});
});


