$(document).ready(function() {
/* search bar */
  $('#Search_bar button').click(function() {
    var $marginLefty = $(this).next();
    $marginLefty.animate({marginLeft: parseInt($marginLefty.css('marginLeft'),10) == 0 ? $marginLefty.outerWidth() : 0});
  });
 /* search bar */
  
  
    $("#Login_tab").hide();  
	
	$("#login").click(function(){
		if($("#Login_tab").hasClass("closed"))
		{
		  $("#Login_tab").slideDown('fast');
		  $("#imgbotao").attr("src", "images/menu/bt_amigodarevenda1.png");
		  $("#Login_tab").removeClass("closed");
		  $("#Login_tab").addClass("open");
		}
		else
		{
			$("#Login_tab").slideUp('fast');
		  	$("#imgbotao").attr("src", "images/menu/bt_amigodarevenda0.png");
			$("#Login_tab").removeClass("open");
		  	$("#Login_tab").addClass("closed");
		}  
  
	});
});