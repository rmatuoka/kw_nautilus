class Admin::ResellersController < ApplicationController
  before_filter :autentica
  
  layout "admin"
  
  uses_tiny_mce :options => {
                              :theme => 'advanced',
                              :theme_advanced_resizing => true,
                              :theme_advanced_resize_horizontal => false,
                              :plugins => %w{ table fullscreen }
                            }
  
  def index
    @Resellers = Reseller.find(:all, :order =>" name ")
  end

  def show
    @Reseller = Reseller.find(params[:id])
  end
  
  def new
    @Reseller = Reseller.new
  end

  def create
    @Reseller = Reseller.create(params[:reseller])
    
    if @Reseller.save
      redirect_to admin_resellers_path
    else
      flash[:msg] = "Erro ao inserir os dados. Verifique os erros."
      render :action => "new"
    end
  end

  def edit
    @Reseller = Reseller.find(params[:id])
  end
  
  def update
    @Reseller = Reseller.find(params[:id])
    @Reseller.attributes = params[:reseller]
    
    if @Reseller.save
      redirect_to admin_resellers_path
    else
      flash[:msg] = "Erro ao atualizar os, verifique os erros."
      render :action => "edit"
    end
  end

  def destroy
    @Reseller = Reseller.find(params[:id])
    
    if @Reseller.destroy
      redirect_to admin_resellers_path
    end
  end
  
  def import
    flash[:msg] = ""
    
    if(!params[:revendas].blank?)
      dados = params[:revendas].split(';')
      
      posNome = 0
      posCidade = 1
      posEstado =  2
      posZona = 3
      posCep = 4
      posTel = 5 
      posEmail = 6
      
      total_linhas = dados.count/7
      
      1.upto(total_linhas){ |l|
        
        
        @Reseller = Reseller.new
        @Reseller.name = dados[posNome].lstrip
        @Reseller.city = dados[posCidade]
        @Reseller.state = dados[posEstado]
        @Reseller.zone = dados[posZona]
        @Reseller.cep = dados[posCep]
        @Reseller.phone = dados[posTel]
        @Reseller.email = dados[posEmail]
        @Reseller.save
        
        posNome += 7
        posCidade += 7
        posEstado +=  7
        posZona += 7
        posCep += 7
        posTel += 7 
        posEmail += 7
      }      
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
  