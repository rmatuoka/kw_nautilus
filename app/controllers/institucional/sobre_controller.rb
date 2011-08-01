class Institucional::SobreController < ApplicationController
  def index
    @Dynamic_show = DynamicPage.find(1)
  end

end
