class Notifier < ActionMailer::Base
  default :from => "CONTATO NAUTILUS<site@nautilus.ind.br>"
  
  def enviar(corpo)
      @Contato = corpo
      #mail(:to => "bsilva@korewa.com.br", :bbc => "bsilva@korewa.com.br", :subject => "Nautilus - Contato via site")
      mail(:to => @Contato.area, :bcc => "log@korewa.com.br", :subject => "Nautilus - Contato via site - Protocolo Nº. " + @Contato.id.to_s)
  end
  
  def protocolo(contato)
    #Aaa
      @Contato = contato
      mail(:to => @Contato.email, :bcc => "log@korewa.com.br", :subject => "Atendimento Nautilus - Protocolo Nº. " + @Contato.id.to_s)
  end
  
end
