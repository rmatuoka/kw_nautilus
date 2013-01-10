class AtendimentoController < ApplicationController
  def index
    redirect_to new_atendimento_path
  end
  
  def show
    @Contato = Sitecontact.find(params[:id])
  end
  
  def new
    @Contato = Sitecontact.new
  end

  def create
    @Contato = Sitecontact.new
    @Contato.name = params[:name]
    @Contato.email = params[:email]
    @Contato.phone = params[:phone]
    @Contato.company = params[:company]
    @Contato.message = params[:message]
    @Contato.area = params[:area]
    @Contato.city = params[:city]
    @Contato.state = params[:state]
    
    
    if @Contato.save
      #ENVIA EMAIL
      Notifier.enviar(@Contato).deliver
      Notifier.protocolo(@Contato).deliver
      
      #Notifier.deliver_enviar(@Contato,"Nautilus - Contato via site", @Contato.area, @Contato.area)
      #if Notifier.deliver_enviar(@corpo.to_s,"Contato Via SITE", @Contact.email)

      #end
      
      redirect_to atendimento_path(@Contato)
    else
      render :action => "new"
    end
  end
end
