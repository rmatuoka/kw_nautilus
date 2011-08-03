class ProdutosController < ApplicationController
  def show
    @Produto = Product.find(params[:id])
    @Produto_fotos = @Produto.product_images.find(:all, :conditions=>['published = "1"'])
  end

end
