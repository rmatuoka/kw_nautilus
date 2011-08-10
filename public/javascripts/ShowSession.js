function show_session(x, obj)
{
	
	//MOTRA AS LOJAS
	if(jQuery("#Session_show" + x).hasClass('hide'))
	{
		//MOSTRA
		jQuery("#Session_show" + x).slideDown('slow');
		jQuery("#Session_show" + x).removeClass('hide')
	}
	else
	{
		//ESCONDE\
		jQuery("#Session_show" + x).slideUp('slow');
		jQuery("#Session_show" + x).addClass('hide')
	}
	//MUDA O FUNDO DO BACKGROUND
	if(jQuery(obj).hasClass("Title_opened"))
	{	
		//CLICADO
		//alert("fechar");
		jQuery(obj).removeClass('Title_opened');
		jQuery(obj).addClass('Title_closed')
	}
	else
	{
		//alert("abrir");
		jQuery(obj).removeClass('Title_closed');
		jQuery(obj).addClass('Title_opened')		
	}
	
	//alert(jQuery(obj).attr("class"));
}