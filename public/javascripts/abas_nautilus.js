jQuery(document).ready(function() {
/* search bar */
  jQuery('#Search_bar button').click(function() {
    var jQuerymarginLefty = jQuery(this).next();
    jQuerymarginLefty.animate({marginLeft: parseInt(jQuerymarginLefty.css('marginLeft'),10) == 0 ? jQuerymarginLefty.outerWidth() : 0});
  });
 /* search bar */
  
  
    jQuery("#Login_tab").hide();  
	
	jQuery("#login").click(function(){
		if(jQuery("#Login_tab").hasClass("closed"))
		{
		  jQuery("#Login_tab").slideDown('fast');
		  jQuery("#imgbotao").attr("src", "/images/menu/bt_amigodarevenda1.png");
		  jQuery("#Login_tab").removeClass("closed");
		  jQuery("#Login_tab").addClass("open");
		}
		else
		{
			jQuery("#Login_tab").slideUp('fast');
		  	jQuery("#imgbotao").attr("src", "/images/menu/bt_amigodarevenda0.png");
			jQuery("#Login_tab").removeClass("open");
		  	jQuery("#Login_tab").addClass("closed");
		}  
  
	});
});