class HomeController < ApplicationController
  before_filter :load_states
  
  layout "home" 
  
  def index
    @Depoimento = Testimonial.all(:conditions => ['published = 1'], :limit => 1, :order => 'created_at DESC')
    @Destaques = Highlight.all(:conditions => ['published = 1'], :order => "position ASC")    
    @NoticiasHome = Notice.all(:conditions => ['published = 1'], :limit => 4, :order => "id DESC")
  end

  def load_states
    @Estados = Reseller.all(:conditions => ['published = 1'], :group => "state", :order => "state ASC")
  end
end

