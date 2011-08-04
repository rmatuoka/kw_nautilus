class Admin::SellersController < ApplicationController
  before_filter :autentica
  
  layout "admin"
  
  uses_tiny_mce :options => {
                              :theme => 'advanced',
                              :theme_advanced_resizing => true,
                              :theme_advanced_resize_horizontal => false,
                              :plugins => %w{ table fullscreen }
                            }
  
  def index
    @Sellers = Seller.find(:all)
  end

  def show
    @Seller = Seller.find(params[:id])
  end
  
  def new
    @Seller = Seller.new
  end

  def create
    @Seller = Seller.create(params[:seller])
    
    if @Seller.save
      redirect_to admin_sellers_path
    else
      flash[:msg] = "Erro ao inserir os dados. Verifique os erros."
      render :action => "new"
    end
  end

  def edit
    @Seller = Seller.find(params[:id])
  end
  
  def update
    @Seller = Seller.find(params[:id])
    @Seller.attributes = params[:seller]
    
    if @Seller.save
      redirect_to admin_sellers_path
    else
      flash[:msg] = "Erro ao atualizar os, verifique os erros."
      render :action => "edit"
    end
  end

  def destroy
    @Seller = Seller.find(params[:id])
    
    if @Seller.destroy
      redirect_to admin_sellers_path
    end
  end
  
  def autentica
    if session[:logged]
      true
    else
      redirect_to new_admin_session_path
    end
  end
end
