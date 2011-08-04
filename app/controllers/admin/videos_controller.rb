class Admin::VideosController < ApplicationController
  before_filter :autentica
  
  layout "admin"
  
  uses_tiny_mce :options => {
                              :theme => 'advanced',
                              :theme_advanced_resizing => true,
                              :theme_advanced_resize_horizontal => false,
                              :plugins => %w{ table fullscreen }
                            }
  
  def index
    @Videos = Video.find(:all)
  end

  def show
    @Video = Video.find(params[:id])
  end
  
  def new
    @Video = Video.new
  end

  def create
    @Video = Video.create(params[:video])
    
    if @Video.save
      redirect_to admin_videos_path
    else
      flash[:msg] = "Erro ao inserir os dados. Verifique os erros."
      render :action => "new"
    end
  end

  def edit
    @Video = Video.find(params[:id])
  end
  
  def update
    @Video = Video.find(params[:id])
    @Video.attributes = params[:video]
    
    if @Video.save
      redirect_to admin_videos_path
    else
      flash[:msg] = "Erro ao atualizar os, verifique os erros."
      render :action => "edit"
    end
  end

  def destroy
    @Video = Video.find(params[:id])
    
    if @Video.destroy
      redirect_to admin_videos_path
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
