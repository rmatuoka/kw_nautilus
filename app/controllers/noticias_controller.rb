class NoticiasController < ApplicationController
  def index
    @Noticias = Notice.all(:conditions =>['published = 1'], :order => 'created_at DESC').paginate(:page => params[:page], :per_page => 3)
  end

  def show
    @Noticia = Notice.find(params[:id])
    @Noticia_imagens = @Noticia.notice_images.all
  end

end
