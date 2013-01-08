class DimensionsController < ApplicationController
  def index
   @Dynamic_show = DynamicPage.find(6)
  end

end
