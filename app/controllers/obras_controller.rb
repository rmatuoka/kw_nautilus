class ObrasController < ApplicationController
  def index
    if !params[:area].blank?
      @Cases = Case.all(:conditions => ['published = 1 AND area = ?', params[:area]], :order => "id DESC")
      
      if params[:area] == "Obras Primas"
        @Titulo = "Obras Primas"
      else
        @Titulo = "Cases de Sucesso"
      end
      
    else
      redirect_to cases_path
    end
  end

  def show
  end

end
