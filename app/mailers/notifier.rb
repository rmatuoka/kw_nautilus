class Notifier < ActionMailer::Base
  default :from => "CONTATO NAUTILUS<site@fasterm.com.br>"
  
  def enviar(corpo)
      @Contato = corpo
      mail(:to => @Contato.area, :bbc => @Contato.area, :subject => "Nautilus - Contato via site")
  end
  
end
