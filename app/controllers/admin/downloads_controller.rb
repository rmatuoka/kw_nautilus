class Admin::DownloadsController < ApplicationController
  before_filter :autentica  
  layout "admin"
  helper :downloads

  def index
    @Downloads = Download.find(:all)
  end

  def show
    @Download = Download.find(params[:id])
  end
  
  def new
    @Download = Download.new
  end

  def create
    @Download = Download.create(params[:download])
    
    if @Download.save
      redirect_to admin_downloads_path
    else
      flash[:msg] = "Erro ao inserir os dados. Verifique os erros."
      render :action => "new"
    end
  end

  def edit
    @Download = Download.find(params[:id])
  end
  
  def update
    @Download = Download.find(params[:id])
    @Download.attributes = params[:download]
    
    if @Download.save
      redirect_to admin_downloads_path
    else
      flash[:msg] = "Erro ao atualizar os, verifique os erros."
      render :action => "edit"
    end
  end

  def destroy
    @Download = Download.find(params[:id])
    
    if @Download.destroy
      redirect_to admin_downloads_path
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
