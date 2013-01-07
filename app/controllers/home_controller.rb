class HomeController < ApplicationController
  
  layout "home" 
  
  def index
    @Depoimento = Testimonial.all(:conditions => ['published = 1'], :limit => 1, :order => 'created_at DESC')
    @Destaques = Highlight.all(:conditions => ['published = 1'], :order => "position ASC")    
    @NoticiasHome = Notice.all(:conditions => ['published = 1'], :limit => 4, :order => "RAND()")
  end

end
