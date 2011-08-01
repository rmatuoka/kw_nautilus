class Institucional::MissaoController < ApplicationController
  def index
    @Dynamic_show = DynamicPage.find(3)
  end
end
