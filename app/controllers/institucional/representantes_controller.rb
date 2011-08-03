class Institucional::RepresentantesController < ApplicationController
  before_filter :load_states
  
  def load_states
    @Estados = Seller.all(:conditions => ['published = 1'], :group => "state", :order => "state ASC")
  end
  
  def resultados
    #flash[:msg] = params[:pessoa][:estado] + params[:pessoa][:cidade]
    @Resultados = Seller.all(:conditions => ['state = ? AND published = 1', params[:pessoa][:estado]])
  end
end
