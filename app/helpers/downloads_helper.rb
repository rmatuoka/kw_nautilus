module DownloadsHelper
  def mostra_categoria(status)
    
    retorno = ""
    case status
      when "1"
        retorno = "Folhetos"
      
       when "2"
          retorno = "Manuais"
    
      when "3"
        retorno = "Vistas Explodidas"
    end
    
    return retorno
  end
end
