class Notifier < ActionMailer::Base
  default :from => "CONTATO NAUTILUS<site@nautilus.ind.br>"
  
  def enviar(corpo)
      @Contato = corpo
      #mail(:to => "bsilva@korewa.com.br", :bbc => "bsilva@korewa.com.br", :subject => "Nautilus - Contato via site")
      mail(:to => @Contato.area, :bbc => @Contato.area, :subject => "Nautilus - Contato via site")
  end
  
end
